---
title: "How not to manage your internet server"
date: "2007-09-25T15:45:04+00:00"
categories: [General]
tags: []
aliases: [/how-not-to-manage-your-internet-server/]
---

Our internet server managed to restart itself over night. That makes me feel <em>real</em> uncomfortable. Was the server shut down by the ISP as part of routine maintenance without telling us or did the server ABEND?

What really made my day is that we've not got round to starting all of the required services automatically at start up. So, both email and website were down when I got in this morning.

What followed was a particularly unpleasant morning bringing the email server back up into a usable state. Made all the more unpleasant by the absence of the member of staff who set the email up. After a couple of hours, I eventually got the commands from my colleague's shell history file. Doh!

Anyway, the point of this post isn't to demonstrate my complete idiocy in administering a Linux server. It is to urge you to <strong>document all of those little procedures you take for granted but that somebody else might have to undertake in your absence</strong>.

Oh, and make sure your servers reboot <em>with</em> all of the required services switched on. :smile:

UPDATE: The server rebooted because of a "<strong>power issue</strong>"...roughly translated from ISP speak, somebody unplugged it!
