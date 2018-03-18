# wilmardo.plex

[![Build Status](https://travis-ci.org/wilmardo/ansible-role-plex.svg?branch=master)](https://travis-ci.org/wilmardo/ansible-role-plex)
[![Galaxy](https://img.shields.io/badge/galaxy-wilmardo.plex-blue.svg)](https://galaxy.ansible.com/wilmardo/plex/)

The ultimate Plex role for Ansible, install [Plex](https://www.plex.tv/), [Tautulli](https://github.com/Tautulli/Tautulli)(former PlexPy) and [Plexupdate](https://github.com/mrworf/plexupdate) in a whimp.

## Requirements

None but when plexupdate_notify is enabled a working crontab email configuration is required to be able to receive notifications.

## Role Variables

### Default usage

As default the role installs Plex, Tautulli (former PlexPy) and Plexupdate, if you want to change this, look at [Advanced usage](#advanced-usage) section for the available variables.

### Advanced usage

For more advanced usage the following variables are available:
```yaml
# If Tautulli will get installed
tautulli_install: yes
# User to run tautulli as
tautulli_user: "tautulli"
# Group to run tautulli as
tautulli_group: "tautulli"
# Tautulli install location
tautulli_install_location: "/opt/tautulli/"
# Tautulli configuration location (recommended is to put it somewhere in /etc)
tautulli_config_location: "/etc/tautulli-config.ini"
# Tautulli data location (recommended is to NOT put it in your Tautulli exec dir)
tautulli_data_location: "/opt/tautulli/data"

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