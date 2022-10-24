---
title: "Distributed network monitoring introduction"
date: "2008-09-03T08:47:59+00:00"
categories: ["Network Monitoring", "Network Management", "Open Source"]
tags: ["What's Up Gold"]
aliases: [/distributed-network-monitoring-introduction/]
---

A number of mid-level network monitoring products, like [What's Up Gold](http://www.whatsupgold.com/) &amp; Intellipool for instance, have recently implemented distributed monitoring features. Mid-level network monitoring products are now implementing distributed monitoring so it is affordable by a lot more companies.

## Single Poller Monitoring

With regular network monitoring you have a single poller measuring network and server performance from a single location on your network.

{{< figure src="central-polling.png#center" title="Architecture of a central polling in a distributed network" alt="Architecture of a central polling in a distributed network" >}}

Single poller monitoring works well when the network is small or only has a single site. Every request is made from a single location to each of the resources being measured.

Whilst single poller network monitoring is well suited to single site performance monitoring, it does not scale well on larger, multi-campus networks.

## What is Distributed Network Monitoring

Distributed network monitoring involves multiple pollers distributed around your network measuring performance from multiple locations on your network

{{< figure src="distributed-polling.png#center" title="Architecture of Distributed Polling in a Distributed Network" alt="Architecture of Distributed Polling in a Distributed Network" >}}

Multi-campus networks typically have WAN links interlinking the various sites. WAN links are usually much slower and more expensive than LAN links. By placing your network monitoring probe in a single central location you are inevitably going to send more traffic over your WAN links.

Distributed network monitors permit you to locate your probes locally to the resources being monitored with only the statistics being synchronised en-masse back to a central [Network Operations Centre](https://en.wikipedia.org/wiki/Network_operations_center) (NOC).

## Advantages of Distributed Network Monitoring

- *Real user view of network performance* -- with single point network monitoring you see the network from a single perspective. With distributed network monitoring you see the network from a number of different views across your network;
- *Helps with network troubleshooting* -- distributed network monitoring gives you multiple performance profiles giving you the ability to detect outages and bottlenecks more easily
- *Reduce bandwidth requirements over WANs* -- a central poller will send requests over your precious WAN links. A distributed network monitor will usually be configured to send requests to local resources and appropriate global resources;
- *Single consolidated NOC view* -- rather than have a number of separate network monitoring systems situated inside each campus, distributed network monitors allow you the best of both worlds. Monitor resources locally but consolidate all stats into a single NOC for analysis and storage.

## Disadvantages of Distributed Network Monitoring

- *More expensive and complex* -- distributed monitors are more expensive than single poller monitors, sometimes quite a lot more. You also need to find the hardware upon which to deploy the remote pollers and the time for installation and configuration;
- *Unless carefully designed you may end up using more WAN bandwidth than a central network monitor* -- if you are not selective of which services you monitor and from where you will find no savings in bandwidth usage with a distributed network monitor. Unless polling a resource is going to buy you some insight into your systems performance then monitoring it from a remote site seems like a waste of bandwidth.

## Recommendations

- Multiple single poller monitors, one for each remote office, may be more appropriate if each office runs its IT systems autonomously with few shared systems. Distributed network monitoring comes into its own when a single NOC view of the entire network is required. If you are happy with multiple autonomous point tools then a distributed system may be overkill;
- Only monitor resources remotely that are genuinely used remotely. This will not only save you the bandwidth required to periodically test the resource but mean that you do not need to deprecate your carefully designed security policy by making a resource more publicly available than is entirely necessary. In addition, your monitoring effort won't tell you anything meaningful anyway because none of your users use the resource remotely;
- When remotely monitoring a resource, do not set up a separate comms channel for the monitoring system to use. For a performance monitor to be of any use it needs to use the same infrastructure that your users utilise. If you're not careful the network monitor just ends up effectively monitoring itself.

I'll be investigating your open source distributed network monitoring options soon. In the meantime, if you've got any feedback, please leave a comment!
