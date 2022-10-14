---
title: "Top 5 Open Source NetFlow Analyzers"
date: "2013-07-29T12:39:42+00:00"
categories: [General]
tags: [NetFlow]
aliases: [/top-5-open-source-netflow-analyzers/]
---

[NetFlow](https://en.wikipedia.org/wiki/NetFlow) is a standard from [Cisco](http://www.cisco.com/en/US/products/ps6601/products_ios_protocol_group_home.html) for transferring of network analysis data across a network. The last thing you want to do with your routers and switches is give them the burden of analyzing network traffic, so Cisco came up with NetFlow so that you can offload the analysis to less CPU bound devices.

- [NTop](http://www.ntop.org/): a traffic analyser that runs on most UNIX variants and Microsoft Windows. In addition, ntop includes Cisco NetFlow and sFlow support. For an introduction to NTop, please see this [introduction to NTop]({{< ref "/posts/heads-up-introduction-to-ntop-video.md" >}}) video;
- [Flow-tools](http://code.google.com/p/flow-tools/): a library and a collection of programs used to collect, send, process, and generate reports from NetFlow data;
- [FlowScan](http://pages.cs.wisc.edu/~plonka/FlowScan/): FlowScan processes IP flows recorded in cflowd format raw flow files and reports on what it finds. [JKFlow](http://jkflow.sourceforge.net/) is a XML-configurable Flowscan perl module for reading / analyzing your NetFlow data;
- [EHNT](http://ehnt.sourceforge.net/): or Extreme Happy NetFlow Tool, turns streams of Netflow data into something useful and human-readable;
- [BPFT](http://bpft4.sourceforge.net/): The BPFT daemon builds on top of libpcap and uses the BPF (Berkeley Packet Filter) mechanism for capturing IP traffic.

For an exhaustive list of open source and commercial NetFlow analyzers, you could do a lot worse than the [FloMA: Pointers and Software](http://www.switch.ch/network/projects/completed/TF-NGN/floma/software.html) collection.

Update July 2013: **Ray Van Dolson** has a link to NFSEN in the comments, you will also need [NFDUMP](http://nfdump.sourceforge.net/).
