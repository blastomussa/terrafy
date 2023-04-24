import json
import subprocess
import argparse
from os import linesep

# NEEDS INPUT VALIDATION FOR ARGUMENTS
# NEEDS EXCEPTION HANDLING FOR FILES THAT DON"T EXIST

class Terrafy():
    """
    Analyzes an exported Azure template and creates a variables.tf file and a terraform.tfvars files according to the template's parameters.
    """
    def __init__(self):
        """
        Initiates class and parses command line arguments.
        """
        self.parser = argparse.ArgumentParser(description='A simple command-line tool that translates Azure parameters and template files into Terraform variables.tf and terraform.tfvars files.')
        self.parser.add_argument('-v', '--verbose', action='store_true', help='Enable verbose mode')
        self.parser.add_argument('-p', '--parameters_path', action='store_true', default="parameters.json",help='Path to the json parameters file.')
        self.parser.add_argument('-t', '--template_path', action='store_true', default="template.json",help='Path to the json template file.')
        self.parser.add_argument('-x', '--tmp_path', action='store_true', default="/tmp",help='Path to temporary directory.')
        self.parser.add_argument('-d', '--working_dir', action='store_true', default=".",help='Working directory of script.')

        self.args = self.parser.parse_args()
        self.parameters_path = self.args.parameters_path
        self.template_path = self.args.template_path
        self.tmp_path = self.args.tmp_path
        self.working_dir = self.args.working_dir


    def load_template(self):
        """
        Loads parameters.json and template.json into python data structures.
        """
        if self.args.verbose: print("Loading templates: {} and {}...\n".format(self.parameters_path, self.template_path))
        # load parameters.json into a python dictionary 
        with open('parameters.json', 'r') as f:
            self.parameters = json.load(f)

        # load template.json into a python dictionary 
        with open('template.json', 'r') as f:
            self.template = json.load(f)


    def collate_types(self):
        """
        Merges types for variables into dictionary with corresponding values. Creates new variables dict without API details.
        """
        if self.args.verbose: print("Translating types...\n")
        self.variables = self.template['parameters']
        for v in self.variables:
            if self.variables[v]['type'].lower() == "securestring":
                self.variables[v]['type'] = "string"
                self.variables[v]['sensitive'] = True
            elif self.variables[v]['type'].lower() == "int":
                self.variables[v]['type'] = "number"
            else:
                self.variables[v]['type'] = self.variables[v]['type'].lower()


    def write_tmp_vars(self):
        """
        Write the modified JSON data back to the file
        """
        self.tmp_vars = self.tmp_path + "/variables.json"
        if self.args.verbose: print("Writing temporary file to {}...\n".format(self.tmp_vars))
        with open(self.tmp_vars, 'w') as f:
            json.dump(self.variables, f, indent=4)


    def create_variables(self):
        """
        Long, messy sed command pipe that formats the template.json file into valid Terraform variable blocks.
        """
        if self.args.verbose: print("Creating variables.tf file...")
        command = "cat " + self.tmp_vars + " | sed 's/\(\"type\":\) \"\([^\"]*\)\"/\\1 \\2/g' | sed  '1d;$d' | sed 's/\":/\"/g' | tr -d ',' | sed 's/^[[:space:]]*//' | sed 's/\"type\"/type =/g' | sed 's/\"sensitive\"/sensitive =/g' | sed '/^\"/s/^/variable /' | sed '/^type/s/^/description = \"\"\\n/' > " + self.working_dir + "/variables.tf"
        if self.args.verbose: print("Running command: {}".format(command))
        output = subprocess.check_output(command, shell=True, text=True)
        if self.args.verbose: 
            print("Variables file created at: {}/variables.tf\n".format(self.working_dir))
            if output: print(output)


    def create_tfvars(self):
        """
        Creates a valid terraform.tfvars file from the parameter values from the template. 
        """
        if self.args.verbose: print("Creating terraform.tfvars file...")
        self.tfvars = self.parameters['parameters']
        with open('terraform.tfvars', 'w') as tfvars_file:
            for v in self.tfvars:
                if self.variables[v]['type'] == 'bool':
                    if self.tfvars[v]['value'] == True:
                        line = '{} = {}'.format(v, 'true')
                    elif self.tfvars[v]['value'] == False: 
                        line = '{} = {}'.format(v, 'false')
                elif self.variables[v]['type'] == 'number':
                    line = '{} = {}'.format(v, int(self.tfvars[v]['value']))
                else:
                    line = '{} = "{}"'.format(v, self.tfvars[v]['value'])
                line = line + linesep
                tfvars_file.write(line)
        if self.args.verbose: print("tfvars file created at: {}/terraform.tfvars\n".format(self.working_dir))

    
    def format(self):
        """
        Formats the raw Azure to Terraform translation. Requires Terraform to be installed on the system's PATH.
        """
        if self.args.verbose: print("Formatting variables.tf and terraform.tfvars...")
        command = f'terraform fmt {self.working_dir}'
        if self.args.verbose: print("Running command: {}\n".format(command))
        output = subprocess.check_output(command, shell=True, text=True)


    def terrafy(self):
        if self.args.verbose: print('Starting Terrafy...\nVerbose mode enabled.\n')
        self.load_template()
        self.collate_types()
        self.write_tmp_vars()
        self.create_variables()
        self.create_tfvars()
        self.format()
        if self.args.verbose: print('Terrafy complete.\n')


if __name__ == '__main__':
    terrafy = Terrafy()
    terrafy.terrafy()