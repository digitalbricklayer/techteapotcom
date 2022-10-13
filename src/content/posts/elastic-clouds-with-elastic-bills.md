---
title: "Elastic clouds with elastic bills"
date: "2008-11-07T12:55:59+00:00"
categories: ["Cloud Computing"]
tags: [amazon]
aliases: [/elastic-clouds-with-elastic-bills/]
---

I mentioned [this in a comment](http://www.johnmwillis.com/amazon/clouddroplets/#comments) over on [John M Willis ESM Blog](http://www.johnmwillis.com/). I thought it deserved a post all to itself because I think it's important.

One anxiety I have with hosting my websites is the bill I need to pay each month. There are many many hosting options out there, all with their own particular risk characteristics.

With the advent of on-demand cloud offerings like [Amazon EC2](http://aws.amazon.com/ec2/) there are lot of new options. One of the characteristics of cloud offerings is easy scalability. Scalability does have a problem though, because your bill will scale too.

The main thing that attracted me to my current hosting provider was the capped bill. I effectively lease a virtual pipe into my server through which all of the traffic passes. If the traffic exceeds the capacity of my pipe, then some of the requests start failing. Whilst that isn't ideal, it is better than the alternative, and I can always buy a bigger virtual pipe.

Say I get a denial of service attack on my site or my site gets hacked and used to do spam emails or launch a DoS attack, am I going to be presented with a whopping great bill at the end of the month? Happened to us when we were at Rackspace when we paid for the bandwidth we used over the standard 100GB threshold. We were presented with a large bill because a server we were in the process of decommissioning got hacked and used to send spam.

The cloud vendors need to provide a range of options that make billing more manageable and predictable.
