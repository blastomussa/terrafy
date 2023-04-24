import re
import subprocess
import json

string = "[parameters('allowBlobPublicAccess')"
regex = "\'([^\']+)\'" # works to match, should this regex pattern be run in sed to replace with variable.parameter?
match = re.search(r'{}'.format(regex), string)

with open('template.json', 'r') as f:
    parameters = json.load(f)

print(parameters)
# command = cat template.json | sed 's/"\[concat(/join("",/g' | sed '/join/s/)]"//g' |grep join
# output = subprocess.check_output(command, shell=True, text=True)

if match:
    parameter_name = match.group(1)
    print(f"Parameter name: {parameter_name}")
else:
    print("Match not found.")