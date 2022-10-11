---
title: "Ain't no such thing as SMB class kit"
date: "2008-01-17T14:35:45+00:00"
categories: [General]
tags: [downtime, enterprise, "SMB"]
aliases: [/aint-no-such-thing-as-smb-class-kit/]
---

{{< figure src="/images/uploads/2008/01/net-downtime.jpg#floatright" alt="Network outage" height="149" width="225" >}}

Every bout of downtime teaches you a lesson. At least one. :smile:

## The lesson

What's the lesson this time: anything less than full hot swap disks just isn't good enough.

If there is anything that is going to go wrong on a server it is the disks. Our last major bout of downtime back in 2005 was caused by disk failure and that is why we moved up to SATA based RAID system. Unfortunately, we didn't go for hot swappable drives.

Had we gone for hot swappable drives the drive failure would have caused us a modest heart flutter whilst we swapped out the bad disk with a new one. Then a bit of disk thrashing whilst the new disk was synchronised. No big deal.

The main problem that many companies our size have is that, we're beyond the solutions available *off the peg*, but are not big enough to buy enterprise level solutions.

We exist in IT never never land. The myth that there are solutions that are *SMB grade* has got to be the biggest load of hogwash in IT marketing history.

A SMB web and email server has to run 24/7 just like an enterprise solution does.

Another issue is that we have just the one server for all of our sites and email. If the server goes down then everything stops. Is it better to have multiple servers? Yes, I think that is clear. But, as soon as you require multiple servers, even virtual servers, you run into some nasty management issues. Keeping a single server configuration running is challenging, running 15 is going to be a nightmare.

In our case, we run some heavy duty commercial e-commerce software so we can't run multiple servers for licensing reasons. Or, rather we could but it would cost us 10x more in licensing fees to do so.

The best we can do is mitigate the biggest risks with our single server. The biggest risk by far is disk failure, having RAID hot swappable disks will mitigate our biggest risk.

## What are the positives?

The backup system worked like a charm. Our ISP backups the server incrementally every day with a full backup once a week. We do the same thing too. You can't be too paranoid with backups. There was one area our backups didn't cover which we'll be rectifying over the next month or so. The image directory for this blog wasn't in the backup set because it is quite large. That isn't good enough.

If you are relying on somebody else to backup make sure they're doing it **AND** backup yourself anyway.

We will be backing up onto a private rented FTP server. That way bandwidth will be from internet server to internet server rather than internet server to local server via ADSL. Storage isn't expensive and it may save your data one day.

If you've got any hints and tips I'm all ears... :wink:

PS: nearly forgot. Many thanks to Dean @ OPENXTRA and Tom @[memset](https://www.memset.com/) for their sterling efforts.
