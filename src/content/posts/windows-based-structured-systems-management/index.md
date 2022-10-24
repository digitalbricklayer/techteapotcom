---
title: "Windows based structured systems management"
date: "2009-06-11T09:27:32+00:00"
aliases: [/windows-based-structured-systems-management/]
---

Found a post whilst reading a [post by the Standalone Sysadmin](http://standalone-sysadmin.blogspot.com/2009/06/opsview-nagios-is-simpler-better.html)... and it is a beauty. [Michael Janke](http://lastinfirstout.blogspot.com/) has a post comparing [ad-hoc versus structured systems management](http://lastinfirstout.blogspot.com/2008/04/ad-hoc-verses-structured-system.html).

One of the items that Michael says is essential for structuring your systems management is automation. As [Matt Simmons](http://www.standalone-sysadmin.com/) says:

>Remember, if you can script it, script it. If you can't script it, make a checklist

In the Windows world automation has been a pretty tough ask until Windows PowerShell came onto the scene. Whilst it was possible to script Windows with VBScript, it wasn't easy or quick. If it isn't easy *and* quick it probably won't happen.

I still haven't noticed any network management tools supporting PowerShell yet. Shame. Given that nearly everything seems to be sprouting PowerShell support it is a shame that network and systems management vendors are slow supporting a technology designed to help sys admins do their job more easily.

The world is becoming a lot more dynamic with virtual &amp; cloud computing coming to the fore. Management tools need to be equally dynamic and yet, so far, they've been pretty un-dynamic. If I have a script that provisions a new virtual machine it would be nice to tell the management platform to start monitoring its performance from the same script. If I have a script that takes down a service, it would be nice to tell the management platform to put that particular service into maintenance mode so I don't get deluged with alerts.
