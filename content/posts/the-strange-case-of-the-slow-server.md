---
title: "The strange case of the slow server"
date: "2008-10-23T08:00:47+00:00"
categories: [General]
tags: []
aliases: [/the-strange-case-of-the-slow-server/]
---

Our internet presence has been slow of late. Customers were complaining that the website was slow, we couldn't log into the server reliably, sending emails was slow. All told not very good.

I remembered a while ago getting a call from my hosting rep saying that our bandwidth was maxed out. Many hosting providers provide unlimited bandwidth but limit the size of the pipe to your server. This has the benefit that whatever happens you know how big your hosting bill is going to be. The downside is that when the usage approaches the pipe limit, some traffic will start to slow down or fail. And there won't be any discrimination between important money earning traffic and none monetised traffic.

One of the things I discovered, and corrected quickly, was the lack of any stats for our main download website. The log was sitting there but no usable stats were being drawn from it. I knew from the other websites we run that we were missing 35 GB of traffic this month. It turns out that the download site was the culprit.

One interesting side effect was that we discovered that back in May 325.63 GB was used by the download site. My suspicion is that our hosting provider might have said that they were limiting the size of our pipe but they weren't in reality. If they had been, our server would have been completely unusable in May.

Anyway, the side effect of all of the above is that we are pulling our distros of a number of open source tools. The world of open source is a very different place than when we started back in 2003. Projects have gotten a lot better at packaging themselves on Microsoft Windows. We will be concentrating our efforts upon creating a set of network management tools for Windows PowerShell instead.

The main lesson I take away from this is to make sure you're creating meaningful stats for everything you've got because you never know what may be causing you a problem. Just logging stuff isn't anywhere near enough, a two gigabit log file won't yield its secrets very easily.
