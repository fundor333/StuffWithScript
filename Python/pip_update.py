from subprocess import call

import pip

for dist in pip.get_installed_distributions():
    call("python -m pip install --upgrade " + dist.project_name, shell=True)
