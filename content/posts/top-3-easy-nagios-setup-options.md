---
title: "Top 3 easy Nagios setup options"
date: "2007-05-13T09:01:10+00:00"
categories: [General]
tags: [nagios]
---

<img src="/image/uploads/2007/05/status-detail-t.jpg" alt="Nagios" align="right" />

Everybody loves <a href="http://www.nagios.org/">Nagios</a>, but let's be honest, it can be a pain to set up, especially if you work in a Windows only environment. A few solutions do exist to make Nagios a little easier to get yourself up and running.
<h2>#1: Hardware Appliances</h2>
<img src="/image/uploads/2007/05/azeti-a_small.png" alt="Nagios Appliance" align="right" />

Hardware appliances take the hassle out of Nagios, for a price. You buy a rack mountable appliance with Nagios all ready to go. Just plug the device in, configure the network settings and off you go.

The down side? Price is obviously one but perhaps the biggest problem is going to be expandability. Upgrading disk space and memory may be a problem.
<h2>#2: Groundwork</h2>
<img src="/image/uploads/2007/05/gw-header.gif" alt="Groundwork Open Source" align="right" />

<a href="http://www.groundworkopensource.com/">Groundwork</a> is a company dedicated to bringing commercial level support to Nagios, including a nice easy to install &amp; configure distribution. A number of versions are available including a free version. Pre-compiled binary versions with installer are available for all versions, as well as the source code.

Nice solution, but you're going to need a Linux/Unix machine. If you are just curious, it may be worth using a virtual appliance first before diving into setting up a Linux machine.
<h2>#3: Virtual Appliances</h2>
<img src="/image/uploads/2007/05/nagiosvma.png" alt="NagiosVMA" align="right" />

Virtual appliances are a great way to try things out without having to mess your current system configuration. Either run the boot CD or use virtual machine software like VMWare or Virtual PC. Traditionally virtual machines have been a great way to try out Linux without having to modify your existing setup. Now, you can do the same with Nagios.

A VMWare appliance has been created, though it doesn't get good reviews. A better bet may be NagiosVMA which gets much better reviews. A better bet may be to go with the Groundwork bootable ISO image currently in beta.

Long term, a virtual appliance is unlikely to be satisfactory. Virtual appliances and bootable CDs are much better for training and evaluation purposes. So as soon as you have discovered whether Nagios will satisfy your needs it may be better to move onto either a natively installed version of Nagios (or Groundworks), or a hardware appliance.

<strong>Update <strong>22</strong> Feb 2012</strong>:

There is now a <a href="https://www.itefix.no/i2/nagwin">Nagwin distribution</a> for Microsoft Windows using the Cygwin toolset. May be an easier install option for admins who are familiar with Windows and don't fancy learning *nix.
