## Intro
This is a seed project for setting up a Win 10 virtual machine with vagrant.

## Script Dependencies

  - [Git bash][git-bash-downloads]
  - [Virtualbox][virtualbox-downloads]
  - [Vagrant][vagrant-downloads]

## Project Directory Contents
  - Win10-Dev                    # project root
    - infrastructure             # contains the VM installation scripts
      - Vagrantfile              # the Vagrant manifest with VM configuration
      - do_privileged.ps1        # a script run as root when the VM is provisioned
    - share                      # a directory that is shared between host OS and guest VM

## Installation
Open the git bash terminal, start the vagrant script to initialize the VM, and restart the VM. Follow commands emitted by the script for allowing vagrant to connect to the VM and for resizing the VM hard drive.
```sh
$ cd infrastructure
$ vagrant up
```

## Login to the VM
The username and password for the VM are IEUser / Passw0rd!

## Memory Settings
The VM memory settings are configured in the Vagrantfile. By default, memory is set to 8GB.

## Shared Folder
The _share_ folder in the project root is shared between the host OS and guest VM. It maps to the folder _/home/vagrant/share_ in the VM.

## Software Installed by default in the VM
  - 7zip (Zip utility)
  - Bing Desktop (wallpaper)
  - Chrome (web browser)
  - Notepad++ (text editor)
  - Sublime Text (text editor)
  - Visual Studio 17
  - Resharper 17
  - SQL Server Management Studio
  - Office 365
  - anything else you add to the provisioning scripts

License
----

MIT


[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [git-bash-downloads]: <https://git-scm.com/download/win>
   [vagrant-downloads]: <https://www.vagrantup.com/downloads.html>
   [virtualbox-downloads]: <https://www.virtualbox.org/wiki/Downloads>
