# bemup-workshop-vagrant

[на русском](https://github.com/dab/bemup-workshop-vagrant/blob/master/README.ru.md)

Provisions a clean Ubuntu 12.04 32-bit server instance with all needed Node.js development tools (Node.js, git, vim);

## Install Vagrant & VirtualBox

### Install Vagrant:
[http://vagrantup.com](http://vagrantup.com)

### Install VirtualBox:
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

## Setup

```
git clone git@github.com:dab/bemup-workshop-vagrant.git
cd bemup-workshop-vagrant
vagrant up
vagrant ssh
```

Done! 

## Post-Setup

### Vagrant user

By default the ```vagrant``` user is configured with password 'vagrant'. The vagrant user is also configured for password-less sudo.

### Edit code on host machine, build in VM

Your ```~/``` home directory on your host machine is synced to the ```/host/``` directory inside of Vagrant. So for example you can edit code in ```~/code/``` on your laptop and build it inside a Vagrant shell inside ```/host/code```.

### Networking:

Configured for private network on static IP: ```192.168.33.10```, with port ```:3000``` forwarded.

So from a web browser you have two ways of accessing a node.js process for example running on port 3000 on the VM:

* ```192.168.33.10:3000```

Additionally for convenience, append this line to your ```/etc/hosts``` file:

```192.168.33.10   bemup-vagrant.localhost```

### GitHub

```
ssh-keygen -t rsa
(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: https://github.com/settings/ssh)
git config --global user.name '<your name>'
git config --global user.email <your email>
```

## License 
MIT
