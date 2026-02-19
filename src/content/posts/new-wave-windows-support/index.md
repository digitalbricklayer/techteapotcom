---
title: '"New wave" Windows support'
date: "2007-06-14T09:51:11+00:00"
categories: ["Network Management", "Open Source"]
tags: [Hyperic, Zenoss, "Groundwork Open Source"]
aliases: [/new-wave-windows-support/]
description: "One of the odd things about the three new wave players is that, of the three, only one Hyperic supports Windows natively."
---

One of the odd things [about the three new wave players]({{< ref "/posts/network-managements-new-wave/index.md" >}}) is that, of the three, only one [Hyperic](http://www.hyperic.com/) supports Windows natively.

The lack of native Windows support in the other two [Zenoss](http://www.zenoss.org/)/[Groundwork](http://www.groundworkopensource.com/) seems like quite an oversight. It will be interesting to see whether the lack of native Windows support hinders their adoption. I'd be surprised if it doesn't.

Zenoss have produced a nice virtual machine for VMWare. Kudos to them for that. But, it is just a fig leaf for their lack of native Windows support. Scrape underneath the virtual machine and it's Linux hiding underneath. A lot of Windows admins may not fancy learning Linux.

I can understand the problem that Groundwork have. The heart of Groundwork is Nagios. Nagios would be hard to port over to Windows. So, like it or not, Groundwork is stuck in Unix land.

Zenoss is a different matter though. Written from the ground up in Python, I don't understand why they haven't done a Windows native version. One of the big upsides of scripting languages like Python, is that they run pretty much anywhere, including on Windows.
