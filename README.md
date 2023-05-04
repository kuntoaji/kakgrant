# My Vagrant Box for Ruby on Rails Development on Apple Silicon M1 / M2

This Vagrant configuration sets up a virtual machine for Ruby on Rails and PostgreSQL development. The goal of
the configuration is to run on Apple Silicon M1 / M2.

This project is heavily inspired by [github.com/rails/rails-dev-box](https://github.com/rails/rails-dev-box).

## Requirements

* [Qemu](https://www.qemu.org)
* [Vagrant](https://www.vagrantup.com)
* [vagrant-qemu](https://github.com/ppggff/vagrant-qemu) plugin

## How to Use

To use this configuration, run the following commands in your terminal:

```sh
# Install vagrant
brew install hashicorp/tap/hashicorp-vagrant

# Install Qemu
brew install qemu

# Install vagrant-qemu plugin
vagrant plugin install vagrant-qemu

git clone https://github.com/kuntoaji/kakgrant.git
cd kakgrant
vagrant up
```

After the all process above are finished, access the virtual machine with:

```sh
vagrant ssh
```
To make files are synced automatically with rspec, open new tab and run this:

``` sh
vagrant rsync-auto
```

## Forwarded Ports
The following ports are forwarded:

* 3000 (uncomment in Vagranfile to enable)

## Running Rails inside Vagrant

To run the Rails server inside Vagrant, you need to bind IP 0.0.0.0 with the forwarded port:

```sh
# by default rails uses port 3000
$ bin/rails server -b 0.0.0.0
```
## RAM

By default, the virtual machine launches with 4 GB of RAM.

## What's Included

The virtual machine comes with the following:

* Development tools
* Git
* Ruby
* Bundler
* PostgreSQL
* System dependencies for nokogiri and pg
* Node.js

## Recommended Workflow

We recommend editing on the host computer and testing within the virtual machine.

## Vagrant Commands

Log out with `^D` and suspend the virtual machine:

```sh
$ vagrant suspend
```

Resume after suspend:

```sh
$ vagrant resume
```

Shutdown the virtual machine:

```sh
$ vagrant halt
```

Start the virtual machine:

```sh
$ vagrant up
```

Check status:

```sh
$ vagrant status
```

Destroy and wipe the virtual machine disk, **destroying all its contents**:

```sh
$ vagrant destroy # DANGER: all is gone
```
