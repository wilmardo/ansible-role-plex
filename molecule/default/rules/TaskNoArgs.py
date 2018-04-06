from ansiblelint import AnsibleLintRule


class TaskNoArgs(AnsibleLintRule):
    id = 'E303'
    shortdesc = 'Use ":" YAML format when using arguments'
    description = ''
    tags = ['task']

    def matchtask(self, file, task):
        if task['action']['__ansible_module__'] in ['shell', 'command']:
            return True
        for action in task.split(" "):
            if "=" in action:
                return False

        return True
