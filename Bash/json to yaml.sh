#Convert JSON to YAML.
#Note that you'll need to have PyYaml installed.
python -c 'import sys, yaml, json; yaml.dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < file.json > file.yaml
