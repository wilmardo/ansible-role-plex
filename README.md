# wilmardo.plex

[![Build Status](https://travis-ci.org/wilmardo/ansible-role-plex.svg?branch=master)](https://travis-ci.org/wilmardo/ansible-role-plex)
[![Galaxy](https://img.shields.io/badge/galaxy-wilmardo.plex-blue.svg)](https://galaxy.ansible.com/wilmardo/plex/)

The ultimate Plex role for Ansible, install [Plex](https://www.plex.tv/) and [Tautulli](https://github.com/Tautulli/Tautulli)(former PlexPy) in a whimp.

## Requirements

None but [Plexupdate](https://github.com/wilmardo/ansible-role-plexupdate) could be usefull to keep your server up to date.

## Role Variables

### Default usage

As default the role installs Plex, Tautulli (former PlexPy), if you want to change this, look at [Advanced usage](#advanced-usage) section for the available variables.

### Advanced usage

For more advanced usage the following variables are available:
```yaml
# If Plex Media Server will get installed
plex_install: true

# If Tautulli will get installed
tautulli_install: true
# Version of Tautulli to install, gets passed to git module
tautulli_version: v2.0.28
# User to run tautulli as
tautulli_user: tautulli
# Group to run tautulli as
tautulli_group: tautulli
# Tautulli install location
tautulli_install_location: /opt/Tautulli/
# Tautulli configuration location (recommended is to put it somewhere in /etc)
tautulli_config_location: /etc/tautulli-config.ini
# Tautulli data location (recommended is to NOT put it in your Tautulli exec dir)
tautulli_data_location: "{{ tautulli_install_location }}/data"
```

## Dependencies

None but for Tautulli (former PlexPy) on Centos 6, Python 2.7 out of the [Software Collections](https://www.softwarecollections.org/en/scls/rhscl/python27/) is installed

## Example Playbook

Install Plex, Tautulli and plexupdate
```yaml
- hosts: plexservers
  roles:
    - { role: wilmardo.plex }
```

After running the playbook Plex and Tautulli need to be setup:
- Plex can be found at http://ipadress:32400/web
- Tautulli can be found at http://ipaddress:8181

## License

BSD-3-Clause-Clear

## Author Information

This role was created in 2017 by [Wilmar den Ouden](https://wilmardenouden.nl).