## Intro
This is a seed project for setting up an ubuntu 16.04 virtual machine with vagrant.

## Script Dependencies

  - [Git bash][git-bash-downloads]
  - [Virtualbox][virtualbox-downloads]
  - [Vagrant][vagrant-downloads]

## Project Directory Contents
  - Ubuntu16-Dev                 # project root
    - infrastructure             # contains the VM installation scripts
      - Vagrantfile              # the Vagrant manifest with VM configuration
      - do_privileged            # a script run as root when the VM is provisioned
      - do_unprivileged          # a script run as the vagrant user when the VM is provisioned
    - share                      # a directory that is shared between host OS and guest VM

## Installation
Open the git bash terminal, start the vagrant script to initialize the VM, and restart the VM.
```sh
$ cd infrastructure
$ vagrant up
$ vagrant halt
$ vagrant up
```

## Login to the VM
The username and password for the VM are vagrant / vagrant

## Memory Settings
The VM memory settings are configured in the Vagrantfile. By default, memory is set to 4GB. If you are on a machine with 16+ GB of memory, consider allocating 8GB of memory to the VM.

## Shared Folder
The _share_ folder in the project root is shared between the host OS and guest VM. It maps to the folder _/home/vagrant/share_ in the VM. 

## Software Installed by default in the VM
  - Chromium (web browser)
  - Sublime Text (text editor)
  - Slack
  - nodejs / npm
  - anything else you add to the provisioning scripts

License
----

MIT


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [git-bash-downloads]: <https://git-scm.com/download/win>
   [vagrant-downloads]: <https://www.vagrantup.com/downloads.html>
   [virtualbox-downloads]: <https://www.virtualbox.org/wiki/Downloads>
