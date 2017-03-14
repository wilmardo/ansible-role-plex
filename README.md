Plex [![Build Status](https://travis-ci.org/wilmardo/plex.svg?branch=master)](https://travis-ci.org/wilmardo/plex)
=========

The ultimate plex role for Ansible, install Plex, PlexPy and Plexupdater

Role Variables
--------------
There are several role variables seperated in two files:

##### Variables for PlexPy
| Variable name           | Default value         | Description         |
| ----------------------- | --------------------- | ------------------- |
| plexpy_install          | yes                   | To install PlexPy   |
| plexpy_user             | plexpy                | The user PlexyPy runs as |
| plexpy_group            | nogroup               | The group PlexPy runs as |
| plexpy_install_location | /opt/plexpy/          | PlexPy install location |
| plexpy_config_location: | /etc/plexpyconfig.ini | PlexPy config file (recommended is to put it somewhere in /etc) |
| plexpy_data_location:   | /opt/plexpy/data      | PlexPy datadir (recommended is to NOT put it in your PlexPy exec dir) |

##### Variables for plexupdater
| Variable name                     | Default value              | Description         |
| --------------------------------- | -------------------------- | ------------------- |
| plexupdater_install               | yes                        | To install plexupdater   |
| plexupdater_install_location      | /opt/plexupdater/          | Plexupdater install location |
| plexupdater_config_location       | /etc/plexupdate.conf       | Plexupdater config location |
| plexupdater_cronconfig_location   | /etc/plexupdate.cron.conf  | Plexupdater cron config location |
| plexupdater_cronwrapper:          | /etc/cron.daily/plexupdate | Set the cron wrapper for plexupdater |
| plexupdater_autoinstall           | yes                        | Enables autoupdates for plex, will defer the update when plex is in use |
| plexupdater_autoupdate            | yes                        | Enables autoupdater for plexupdater |
| plexupdater_public                | yes                        | Select the update channel, set no when using a Plex Pass |


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

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