---
title: "Top 3 easy Nagios setup options"
date: "2007-05-13T09:01:10+00:00"
tags: [Nagios]
aliases: [/top-3-easy-nagios-setup-options/]
---

{{< figure src="status-detail-t.jpg#floatright" alt="Nagios" >}}

Everybody loves [Nagios](http://www.nagios.org/), but let's be honest, it can be a pain to set up, especially if you work in a Windows only environment. A few solutions do exist to make Nagios a little easier to get yourself up and running.

## 1: Hardware Appliances

{{< figure src="azeti-a_small.png#floatright" alt="Nagios Appliance" >}}

Hardware appliances take the hassle out of Nagios, for a price. You buy a rack mountable appliance with Nagios all ready to go. Just plug the device in, configure the network settings and off you go.

The down side? Price is obviously one but perhaps the biggest problem is going to be expandability. Upgrading disk space and memory may be a problem.

## 2: Groundwork

{{< figure src="gw-header.gif#floatright" alt="Groundwork Open Source" >}}

[Groundwork](http://www.groundworkopensource.com/) is a company dedicated to bringing commercial level support to Nagios, including a nice easy to install &amp; configure distribution. A number of versions are available including a free version. Pre-compiled binary versions with installer are available for all versions, as well as the source code.

Nice solution, but you're going to need a Linux/Unix machine. If you are just curious, it may be worth using a virtual appliance first before diving into setting up a Linux machine.

## 3: Virtual Appliances

{{< figure src="nagiosvma.png#floatright" alt="NagiosVMA" >}}

Virtual appliances are a great way to try things out without having to mess your current system configuration. Either run the boot CD or use virtual machine software like VMWare or Virtual PC. Traditionally virtual machines have been a great way to try out Linux without having to modify your existing setup. Now, you can do the same with Nagios.

A VMWare appliance has been created, though it doesn't get good reviews. A better bet may be NagiosVMA which gets much better reviews. A better bet may be to go with the Groundwork bootable ISO image currently in beta.

Long term, a virtual appliance is unlikely to be satisfactory. Virtual appliances and bootable CDs are much better for training and evaluation purposes. So as soon as you have discovered whether Nagios will satisfy your needs it may be better to move onto either a natively installed version of Nagios (or Groundworks), or a hardware appliance.

**Update 22 Feb 2012**: There is now a [Nagwin distribution](https://www.itefix.no/i2/nagwin) for Microsoft Windows using the Cygwin toolset. May be an easier install option for admins who are familiar with Windows and don't fancy learning *nix.
