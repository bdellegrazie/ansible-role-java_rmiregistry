java_rmiregistry
================

This role manages Java's RMI Registry server as a system service on Debian / RedHat family OS.

Normally the first Java process active on a system is the one to provide the RMI service for all other Java processes. If that first process is restarted then the
RMI server "disappears" to any of the other Java processes on the machine which can cause them to crash or fail abnormally.

Running a separate RMI Server can alleviate this issue. Note that Java EE servers, such as Tomcat and similar normally run their own RMI Server so are not subject to this issue.

[![Build Status](https://travis-ci.org/bdellegrazie/ansible-role-java_rmiregistry.svg?branch=master)](https://travis-ci.org/bdellegrazie/ansible-role-java_rmiregistry)

Role Variables
--------------

    java_rmiregistry_default_port: 1099
    java_rmiregistry_default_binary: /usr/bin/rmiregistry
    java_rmiregistry_default_jvmopts: "-J-Djava.net.preferIPv4Stack=true"

See defaults/main.yml for the full list

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { bdellegrazie.java_rmiregistry }

License
-------

GPLv3

Author Information
------------------

https://github.com/bdellegrazie/ansible-role-java_rmiregistry
