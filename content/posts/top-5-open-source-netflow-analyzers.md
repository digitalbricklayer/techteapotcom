---
title: "Top 5 Open Source NetFlow Analyzers"
date: "2013-07-29T12:39:42+00:00"
categories: [General]
tags: [NetFlow]
aliases: [/top-5-open-source-netflow-analyzers/]
---

<a href="https://en.wikipedia.org/wiki/NetFlow">NetFlow</a> is a standard from <a href="http://www.cisco.com/en/US/products/ps6601/products_ios_protocol_group_home.html">Cisco</a> for transferring of network analysis data across a network. The last thing you want to do with your routers and switches is give them the burden of analyzing network traffic, so Cisco came up with NetFlow so that you can offload the analysis to less CPU bound devices.
<ol>
 	<li><strong><a href="http://www.ntop.org/">NTop</a></strong> - a traffic analyser that runs on most UNIX variants and Microsoft Windows. In addition, ntop includes Cisco NetFlow and sFlow support. For an introduction to NTop, please see this <a href="{{< ref "/posts/heads-up-introduction-to-ntop-video.md" >}}">introduction to NTop</a> video.</li>
 	<li><a href="http://code.google.com/p/flow-tools/"><strong>Flow-tools</strong></a> - a library and a collection of programs used to collect, send, process, and generate reports from NetFlow data.</li>
 	<li><a href="http://pages.cs.wisc.edu/~plonka/FlowScan/"><strong>FlowScan</strong></a> - FlowScan processes IP flows recorded in cflowd format raw flow files and reports on what it finds. <a href="http://jkflow.sourceforge.net/"><strong>JKFlow</strong></a> is a XML-configurable Flowscan perl module for reading / analyzing your NetFlow data.</li>
 	<li><strong><a href="http://ehnt.sourceforge.net/">EHNT</a></strong> - or Extreme Happy NetFlow Tool, turns streams of Netflow data into something useful and human-readable.</li>
 	<li><strong><a href="http://bpft4.sourceforge.net/">BPFT</a></strong> - The BPFT daemon builds on top of libpcap and uses the BPF (Berkeley Packet Filter) mechanism for capturing IP traffic.</li>
</ol>
For an exhaustive list of open source and commercial NetFlow analyzers, you could do a lot worse than the <a href="http://www.switch.ch/network/projects/completed/TF-NGN/floma/software.html">FloMA: Pointers and Software</a> collection.

Update July 2013: <strong>Ray Van Dolson</strong> has a link to NFSEN in the comments, you will also need <a href="http://nfdump.sourceforge.net/">NFDUMP</a>.
