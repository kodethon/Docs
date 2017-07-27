*******************
Custom Environments
*******************

.. contents:: Table of Contents 

Introduction
================

Goal
----------------

Register a node with the Kodethon master servers and verify its success

Notes to the Reader
----------------

1. It is advisable to have experience with Docker

2. You must be an owner of a registered group with Kodethon

3. The following tabs must be completed in sequence

Estimated Completion
-----------------

Approx Completion: 1 hour, 15 minutes on subsequent run throughs

Getting the Production Scripts
================

1. Download the repository at https://github.com/Jvlythical/CDE-Node

2. Copy samples/settings.yml and samples/env.yml in the display below:

.. code-block:: yaml
    
    application:
        group_name: [YOUR_GROUP_NAME]
        group_version: [YOUR_GROUP_VERSION]
        
    # Will be exposed to frontend
    environments:
        python: 
            2.7.9: 'jvlythical/python:2.7.9'
            3.5.2: 'jvlythical/python:2.7.9'
        c: 'jvlythical/c_cpp:5.4.0'
        go: 'jvlythical/go:1.3.3'
        java: 'jvlythical/java:1.8.0'
        javascript : 'jvlythical/javascript:node-5.6.0'
        lisp: 'jvlythical/lisp:common-2.49'
        php: 'jvlythical/php:7.0.13'
        prolog: 
            gnu-1.4.4: 'jvlythical/prolog:gnu-1.4.4'
            swi-7.4.1: 'jvlythical/prolog:swi-7.4.1'
        r: 'jvlythical/r-lang:3.2.3'
        ruby: 'jvlythical/ruby:2.2.3'
        rust: 'jvlythical/rust:1.11.0'
        swift: 'jvlythical/swift:2.2'
    
    global_shell_settings:
      Run:
        Display: '__SHELL'
      Exec: 
        Display: '__SHELL'
        Command: 
          - '*'
    
    custom_shell_settings:
      ruby:
        Exec:
          Display: '__TERM'
          Command: 
            - 'rails *'
            - 'sudo rails *'
    
    global_container_settings: 
      Plugins:
        - CDE
        - Terminal
        - Kodrive
      User: 'kodethon'
      WorkingDir: '/home/kodethon'
      Flags:
        - OpenStdin
        - Tty
      Cmd: ['sh', '-c', 'sudo service ssh start; /bin/bash'] 
      HostConfig:
        Flags:
          - PublishAllPorts
        BlkioDeviceWriteBps:
          - Path: '/dev/sda'
            Rate: 10485760
        BlkioDeviceReadBps: 
          - Path: '/dev/sda'
            Rate: 10485760
        CpuPeriod: 100000
        CpuQuota: 150000
        Memory: 536870912
        KernelMemory: 104857600
     
    custom_container_settings:
      metacompiler:
        User: 'root'
        WorkingDir: '/root'
      c_cpp:
        SecurityOpt:
          - 'seccomp:unconfined'
      ruby:
        Env:
          - 'TEST=1'
      example:
        Cmd: ['/bin/sh']  
        Volumes:
          - name: 'secret'
            mountPath: 'config/database.yml'
        PortBindings:
          - externalPort: 80
            internalPort: 80
        Env:
          - "TEST1=1"
          - "TEST2=2"
        SecurityOpt:
          - 'apparmor:unconfined'
          
          - "TEST1=1"
          - "TEST2=2"
        SecurityOpt:
          - 'apparmor:unconfined'

Configuring the Environment
================      

Change directory into the repository. 
Please note that all paths mentioned in this guide is relative to this directory.

Create env.yml
--------------

1. A sample is provided in samples/env.yml
2. Configure the settings accordingly
3. The group_name configuration must be changed to your group e.g. My Amazing Group

Note:
    - The group_version configuration is for your own version scheming.
    - In env.yml, make sure GROUP_PASSWORD is set to your group's password (if it has one)

Starting the node's core
------------------------

1. In the root of the repository, run 'sh init.sh NUM_NODES'
2. NUM_NODES should be greater than 1 and less than the number of CPU cores

Verify that the core has been started
--------------------------

1. Run 'docker ps'
2. You should see:

    - CDE-node-n where n is a number ranging from 1 to NUM_NODES  
    - CDE-load-balancer
    - CDE-cache
    - CDE-backup
    - CDE-sentinel
    - Note: The CDE namespace here is an example, yours may differ
    - e.g. test-load-balancer rather than CDE-load-balancer
    
Starting the nginx-proxy container
-------------------------------

1. Change directory into the reverse-proxy folder and run start-reverse-proxy.sh
2. The reverse proxy provides domain name to container translation
3. e.g. The proxy will map incoming requests for test.kodethon.com to the proper container
4. For more information: https://github.com/jwilder/nginx-proxy

Adding SSL Protection to the Node
------------------------------

If you do not have your own SSL certificate:

    1. docker pull jrcs/letsencrypt-nginx-proxy-companion
    2. Follow the installation instructions here: https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion

Verifying Installation
-------------------------

1. curl https://CDE_NODE_HOST where CDE_NODE_HOST should be substituted with the hostname which you set in env.yml
2. e.g. curl https://merge.kodethon.com should respond with a 404.

Port forwarding
------------------------

1. Make sure that your public ip address and port maps to your server
2. Guides can be found online for this step