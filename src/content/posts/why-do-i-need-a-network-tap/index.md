---
title: "Why do I need a network tap?"
date: "2007-10-01T15:06:52+00:00"
categories: ["Protocol Analysis"]
aliases: [/why-do-i-need-a-network-tap/]
---

One of the big problems in a switched network is to access reliably network traffic for analysis or monitoring purposes. Many solutions require changes either to the hosts being monitored or require modifications to your network infrastructure.

Many managed switches have the ability to mirror the traffic on one or more ports. Mirroring simply involves the switch copying network traffic from one or more ports to another designated port. The switch still sends the network traffic to its original destination.

With a simple command you can start analysing the traffic on another switch port without having to touch any of the devices being analysed.

For instance, on a Cisco switch, the following command will mirror the source port to the destination port: `set span <source port> <destination port>`. Port mirroring can be an ideal solution in some circumstances, it does have some problems though:

- Port mirroring can indirectly affect the system being analysed. The switch, especially under high load, can cause the switch to drop packets and indeed to pause operation altogether;
- Port mirroring can potentially pose a security risk. You can start mirroring a port via the switch's command line interface, something or someone can stop mirroring it too;
- Things become tricky on full duplex ports -- in other words, where devices can send and receive at the same time, turning a 100 Mbp/s link into an effective 200 Mbp/s link -- you may lose traffic if the port is running close to capacity.

The solution to the above problems comes in the shape of a network tap. Network taps remove the need to perform port mirroring on the switch so avoiding the chance that the switch's performance will be affected.

Network taps are also completely out of band, nothing on the network can switch them off. If you wish to perform intrusion detection, you can be sure that your monitoring efforts are completely invisible to the potential intruders.

In the unlikely event of the network tap failing, the monitored system is completely unaffected.

Of course, the downside is that network taps cost money. :smile:
