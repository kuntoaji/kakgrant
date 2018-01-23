# My vagrant box for Ruby on Rails development

## Introduction

Vagrant configuration for Ruby on Rails and PostgreSQL

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Use This

Just run these linux commands:

    $ git clone https://github.com/kuntoaji/kakgrant.git
    $ cd rails-dev-box
    $ vagrant up

After the installation has finished, you can access the virtual machine with

    $ vagrant ssh

## Forwarded Ports
* 3000
* 8080

## How To Run Rails inside Vagrant

You need to bind IP 0.0.0.0 with forwarded port to run Rails server inside vagrant

    bin/rails server -b 0.0.0.0

or

    bin/rails server -b 0.0.0.0 -p 8080

## RAM and CPUs

By default, the VM launches with 2 GB of RAM and 2 CPUs.

## What's In The Box

* Development tools

* Git

* Ruby 2.4

* Bundler

* PostgreSQL

* System dependencies for nokogiri and pg

* An ExecJS runtime with Node.js

## Recommended Workflow

The recommended workflow is

* edit in the host computer and

* test within the virtual machine.

## Vagrant Commands

Log out with `^D` and suspend the virtual machine

    $ vagrant suspend

Resume after suspend

    $ vagrant resume

Shutdown the virtual machine

    $ vagrant halt

Start the virtual machine

    $ vagrant up

Check status

    $ vagrant status

Destroy and wipe the virtual machine the disk **destroying all its contents**:

    $ vagrant destroy # DANGER: all is gone