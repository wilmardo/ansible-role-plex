wilmardo.plex 
=========

[![Build Status](https://travis-ci.org/wilmardo/ansible-role-plex.svg?branch=master)](https://travis-ci.org/wilmardo/ansible-role-plex)
[![Galaxy](http://img.shields.io/badge/galaxy-wilmardo.plex-blue.svg)](https://galaxy.ansible.com/list#/roles/1907)

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
| plexupdate_install                | no                         | To install Plexupdate. Enable when not Ubuntu or Centos/Fedora 
| plexupdate_install_location       | /opt/plexupdate/           | Plexupdate install location
| plexupdate_config_location        | /etc/plexupdate.conf       | Plexupdate config location
| plexupdate_cronwrapper:           | /etc/cron.daily/plexupdate | Set the cron wrapper for Plexupdate
| plexupdate_autoinstall            | yes                        | Enables autoupdates for Plex, will defer the update when Plex is in use
| plexupdate_autoupdate             | yes                        | Enables autoupdater for Plexupdate
| plexupdate_public                 | yes                        | Select the update channel, set no when using a Plex Pass


Example Playbook
----------------

The following playbook is all you need to get started. All the above variables have a default value which is fine for your every day setup.

    - hosts: plexservers
      roles:
         - { role: wilmardo.plex }
         
 After running the playbook Plex and PlexPy need to be setup:
  - Plex can be found at http://ipadress:32400/web
  - PlexPy can be foudn at http://ipaddress:8181

License
-------

BSD

Author Information
------------------

Wilmar den Ouden

https://wilmardenouden.nl
