---
title: "Oodles of disk space, just not in the right place"
date: "2014-03-13T14:47:20+00:00"
categories: [General]
tags: []
aliases: [/oodles-disk-space-just-right-place/]
---

Over the last few months we've been having some email troubles. For a few months the emails would start to back up with our backup email provider and then almost immediately begin to flow normally again. More recently the periods when email was backing up come around faster and lasted longer.

Intermittent problems are a nightmare to diagnose. Was the problem our broadband, the router, our network, the email server or, the old favourite, DNS?

I thought wrongly that it was the DNS, because, well, it almost always is. Turns out the problem was a good deal simpler than that.

The email server has a largish disk. Over a terabyte split into a system partition, drive C: and a data partition, drive D:.

With Microsoft Exchange, if the available disk space on the drive where the hub transport queue is stored gets below 4GB then Exchange throttles incoming mail traffic.

Unfortunately, the default location for Microsoft Exchange to place the hub transport queue is on the same partition it is installed to. And, if you are using Exchange bundled with Small Business Server (SBS) that will be the system partition.

Fixing the problem was very simple, just tell Exchange to place the queue on the data partition, restart the transport service and everything works fine.

As usual, fixing the problem is trivial when the exact cause of the problem has been identified.

The first take away it is that I really should have been concentrating on the Exchange logs a lot sooner rather than assuming it would be a connectivity problem. The logs would have told me that the email was reaching the server and that the server was rejecting them. That would have ruled out connectivity as a root cause.

The second is my thankfulness for having secondary domain MX records. Back-up email servers cost us around $25 per year and just saved us from dropping a single email. Thank you [Cloudfloor DNS](http://www.mtgsy.net/).

No emails were harmed in the making of this blog post.
