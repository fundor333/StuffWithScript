#Convert YAML to JSON.
#Note that you'll need to have PyYaml installed.
python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < file.yaml > file.json
