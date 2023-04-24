# Terrafy

The goal of this project is to extract valid Terraform variables from Azure ARM deployment templates. Takes a `paramerters.json` and a `template.json` file as arguments and outputs valid `variables.tf` and `terraform.tfvars` files. Eventually, I might try to tackle automating the creation of Terraform resource blocks by parsing the template.json file in AzureRM and AzApi provider resources.

## Usage
```
python terrafy.py --verbose
```

## Arguments

| Argument | Flag | Default |
|----------|------|---------|
|parameters_path|'-p', '--parameters_path'|parameters.json|
|template_path|'-t', '--template_path'|template.json|
|tmp_path|'-x', '--tmp_path'|/tmp|
|working_dir|'-d', '--working_dir'|.|
|verbose|'-v', '--verbose'|unset|