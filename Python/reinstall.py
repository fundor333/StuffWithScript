import os
from subprocess import STDOUT, check_call, CalledProcessError


class Apt:
    def __init__(self, stdout=open(os.devnull, 'wb'), stderr=STDOUT):
        self.stdout = stdout
        self.stderr = stderr

    def command(self, structure):
        try:
            return check_call(structure, stdout=self.stdout, stderr=self.stderr)
        except CalledProcessError as ep:
            return ep.returncode

    def install(self, package, ally="-y"):
        return self.command(['apt-get', 'install', ally, package])

    def add_repository(self, repo, ally="-y"):
        return self.command(['apt-add-repository', ally, repo])

    def update(self):
        return self.command(['apt-get', 'update'])

    def upgrade(self):
        return self.command(['apt-get', 'upgrade'])

    def autoclean(self):
        return self.command(['apt-get', 'autoclean'])
