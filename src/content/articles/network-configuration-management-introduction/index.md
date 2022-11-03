---
title: Network Configuration Management Introduction
date: 2015-11-03
description: "An exploration of the reasons why you should be interested in network configuration management. An outline is also presented of the available tools."
lead: "An exploration of the reasons why you should be interested in network configuration management."
series:
  - Teapot Bitesize
---

<!--more-->

## What is Network Configuration Management?

Network configuration management allows you to control changes to the configuration of your network devices, like switches and routers. Using configuration management tools you can make changes to the configuration of a router, then roll the changes back to a previous configuration if the changes weren’t successful. Contrast the previous situation with a network configuration management system with the situation without a network configuration management system. You would make the changes, hopefully remembering to document what you changed. If the changes weren’t successful you would, at best, then have to undo the changes you made manually from your documentation. At worst, you would be left with trying to remember what was changed and why.

Network configuration management really comes into its own when multiple engineers make changes to network equipment. How does engineer A know what engineer B has been up to? Even if they communicate well together the chances are that crucial details will be missed out. The changes made by engineer A may only fail when engineer B is on duty. How is engineer B expected to troubleshoot the network when he/she doesn’t know exactly what changes engineer A made?

Another area in which network configuration management comes into its own is policy enforcement. Say you want to roll out the same configuration (with minor differences like the IP address) to multiple devices. Performing manual configuration updates can take a long time, especially if you have a lot of network devices. With the help of intelligent network configuration management, the more error prone tasks can be automated saving time &amp; reducing the risk of errors.

## Why do I need Network Configuration Management?

Networks of any size are in a constant state of flux. Any of the engineers responsible for the network can change the configuration of the switches and routers at any time. Configuration changes to live equipment can have devastating effects on the reliability of the network and the services provided by it. Network configuration management is designed to allow you to take control of network changes.

Network configuration management is intended to simplify the job of managing medium to large networks. The aim of network configuration management is to save you time &amp; reduce errors on your network due to misconfiguration of network devices. Even if your network changes do cause errors, network configuration management allows you to fix the errors faster.

I have often been in the situation where I wished that I could move a system’s configuration back in time to when the device worked properly. Having a network configuration management system means that you can change a device’s configuration with a much reduced risk of downtime. If you make a mistake, simply roll back your changes to a version of the configuration that you know works.

When a fault has been identified on your network it can be invaluable to have an audit trail of all configuration changes of your network devices. Not only will you quickly be able to identify which devices have changed, but also what the changes were, when the changes were made & by whom.

## Network Configuration Management Tools

A wide range of tools are available for network configuration management. Broadly speaking they can be split into two main categories, vendor specific tools &amp; vendor neutral tools.

Vendor specific tools, from vendors like Cisco, Nortel &amp; Checkpoint, only work with their respective equipment. These can be a good choice in homogenous environments in which a single vendor’s equipment predominates. Unfortunately, such environments, especially amongst larger networks, are rare. Usually a range of equipment from a number of vendors is in use. In heterogeneous environments a vendor neutral tool would be a better choice.

### Open Source

The open source world does not have anything that can go toe to toe with any of the major commercial vendors. This is unfortunate, though perhaps understandable. The development of a major network configuration management tool requires access to a wide range of equipment that is unlikely to be available to many open source developers. High end network equipment can be very expensive.

#### Really Awesome New Cisco confIg Differ (Rancid)

Whilst Rancid isn’t a full blown network configuration management system it does provide some useful features. Rancid’s goal is to make it easy to spot changes to device configurations. Rancid can be executed periodically and any changes to device configuration can then be emailed to one or more network managers. The changes are then stored in CVS (a software configuration management system).

Rancid supports a number of vendor’s equipment including: Cisco routers and Catalyst switches, as well as equipment from Alteon, Bay Networks, Extreme, Force 10 Networks, Foundry, HP, Juniper and Redback. Rancid runs on most flavors of UNIX including Linux &amp; *BSD. It does not work on Microsoft Windows.

### Commercial

A number of vendors like [Relicore](http://www.relicore.com/) & [Voyence](http://www.voyence.com/) supply network configuration management systems. Though, many position their products as application configuration management systems ie managing changes to application configurations like Apache & SQL Server.

[Alterpoint](http://www.alterpoint.com/) just does network configuration management. The Alterpoint solution is made up of three main components: an auditing/change management module, a device update module and a server to tie the two together in a central server.

## Conclusion

If you are currently grappling with a number of network devices, managed by a team of people then network configuration management may well be worth investigating. If most of your network downtime is caused by people changing configuration of one or more devices, then again network configuration management may well be worth a look.

Network configuration management provides the tools to give you an audit trail of changes to your network. It can also make enforcing corporate policy for device configuration much easier.
