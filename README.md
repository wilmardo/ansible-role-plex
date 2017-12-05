# wilmardo.plex

[![Build Status](https://travis-ci.org/wilmardo/ansible-role-plex.svg?branch=master)](https://travis-ci.org/wilmardo/ansible-role-plex)
[![Galaxy](https://img.shields.io/badge/galaxy-wilmardo.plex-blue.svg)](https://galaxy.ansible.com/wilmardo/plex/)

The ultimate Plex role for Ansible, install [Plex](https://www.plex.tv/), [PlexPy](https://github.com/JonnyWong16/plexpy) and [Plexupdate](https://github.com/mrworf/plexupdate) in a whimp.

## Requirements

None but when plexupdate_notify is enabled a working crontab email configuration is required to be able to receive notifications.

## Role Variables

### Default usage

As default the role installs Plex, PlexPy and Plexupdate, if you want to change this, look at [Advanced usage](#advanced-usage) section for the available variables.

### Advanced usage

For more advanced usage the following variables are available:
```yaml
# If PlexPy will get installed
plexpy_install: yes
# User to run plexpy as
plexpy_user: "plexpy"
# Group to run plexpy as
plexpy_group: "plexpy"
# PlexPy install location
plexpy_install_location: "/opt/plexpy/"
# PlexPy configuration location (recommended is to put it somewhere in /etc)
plexpy_config_location: "/etc/plexpyconfig.ini"
# PlexPy data location (recommended is to NOT put it in your PlexPy exec dir)
plexpy_data_location: "/opt/plexpy/data"

# If plexupdate will get installed
plexupdate_install: yes
# Plexupdate install location
plexupdate_install_location: "/opt/plexupdate/"
# Plexupdate config location
plexupdate_config_location: "/etc/plexupdate.conf"
# Plexupdate cronwrapper location, change cron.daily to interval (cron.hourly, cron.daily, cron.weekly, cron.monthly)
plexupdate_cronwrapper: "/etc/cron.daily/plexupdate"

# Cron options for plexupdate
# If Plexupdate will automatically install newly downloaded version
plexupdate_autoinstall: yes
# If Plexupdate will delete the downloaded package after installation to conserve disk space
plexupdate_autoupdate: yes
# If Plexupdate will download the public release (set to no to download PlexPass releases)
plexupdate_public: yes
# If Plexupdate will notify by mail after cron error
plexupdate_notify: no
```

## Dependencies

None but for PlexPy on Centos 6, Python 2.7 out of the [Software Collections](https://www.softwarecollections.org/en/scls/rhscl/python27/) is installed

## Example Playbook

Install Plex, PlexPy and plexupdate
```yaml
- hosts: plexservers
  roles:
    - { role: wilmardo.plex }
```

After running the playbook Plex and PlexPy need to be setup:
- Plex can be found at http://ipadress:32400/web
- PlexPy can be found at http://ipaddress:8181

## License

BSD-3-Clause-Clear

## Author Information

This role was created in 2017 by [Wilmar den Ouden](https://wilmardenouden.nl).