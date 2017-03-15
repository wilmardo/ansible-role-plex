Plex [![Build Status](https://travis-ci.org/wilmardo/plex.svg?branch=master)](https://travis-ci.org/wilmardo/plex)
=========

The ultimate Plex role for Ansible, install [Plex](https://www.plex.tv/), [PlexPy](https://github.com/JonnyWong16/plexpy) and [Plexupdate](https://github.com/mrworf/plexupdate) in a whimp.

Role Variables
--------------
There are several role variables, they can be set in the hosts_vars/group_vars:

### Variables for PlexPy
| Variable name           | Default value         | Description         |
| ----------------------- | --------------------- | ------------------- |
| plexpy_install          | yes                   | To install PlexPy
| plexpy_user             | plexpy                | The user PlexyPy runs as
| plexpy_group            | plexpy               | The group PlexPy runs as
| plexpy_install_location | /opt/plexpy/          | PlexPy install location
| plexpy_config_location: | /etc/plexpyconfig.ini | PlexPy config file (recommended is to put it somewhere in /etc)
| plexpy_data_location:   | /opt/plexpy/data      | PlexPy datadir (recommended is to NOT put it in your PlexPy exec dir)

### Variables for plexupdate
| Variable name                     | Default value              | Description         |
| --------------------------------- | -------------------------- | ------------------- |
| plexupdate_install                | yes                        | To install plexupdate
| plexupdate_install_location       | /opt/plexupdate/           | Plexupdate install location
| plexupdate_config_location        | /etc/plexupdate.conf       | Plexupdate config location
| plexupdate_cronconfig_location    | /etc/plexupdate.cron.conf  | Plexupdate cron config location
| plexupdate_cronwrapper:           | /etc/cron.daily/plexupdate | Set the cron wrapper for plexupdate
| plexupdate_autoinstall            | yes                        | Enables autoupdates for plex, will defer the update when plex is in use
| plexupdate_autoupdate             | yes                        | Enables autoupdater for plexupdate
| plexupdate_public                 | yes                        | Select the update channel, set no when using a Plex Pass


Example Playbook
----------------

The following playbook is all you need to get started. All the above variables have a default value which is fine for your every day setup.

    - hosts: plexservers
      roles:
         - { role: wilmardo.plex }

License
-------

BSD

Author Information
------------------

Wilmar den Ouden

https://wilmardenouden.nl