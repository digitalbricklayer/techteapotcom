---
title: Network Mapping Introduction
date: 2015-11-03
description: "Beyond a certain size networks become difficult to visualize without graphical aids. There are a number of tools to aid in the production of network maps. This article provides reasons why you should be interested in network mapping, as well as an overview of the available tools."
lead: "Beyond a certain size networks become difficult to visualize without graphical aids. There are a number of tools to aid in the production of network maps. This article provides reasons why you should be interested in network mapping, as well as an overview of the available tools."
categories:
  - Network Management
series:
  - Teapot Bitesize
---

<!--more-->

## What is Network Mapping

Networks are complex systems, and they are getting more complex all of the time. The larger the network, the harder it is to understand as a whole. Network maps help to make networks more understandable by breaking them down into more manageable chunks. For instance, a very large network can be broken down into a very broad overview. Only the largest offices need be displayed, with the main backbones between them. The network can then be broken down into smaller chunks, each chunk revealing more detail about the network.

One of the downsides to network mapping is that the maps require an investment of time to create. But, more importantly, once they are created require a much greater effort to maintain.

Network maps are an invaluable tool to help new hires get up to speed quickly. Maps can communicate more in a few minutes than a days worth of talking about the network.

When contemplating modifications to a network architecture, network maps can be invaluable. Not only will your network maps communicate to you what changes are necessary, but they will also communicate to other people too.

Less technical people also appreciate network maps. Often non-technical managers are the ones who need to sign off on network upgrades. If you have a means to communicate more effectively with them, then that may well ease the process of budget approval.

## Network Mapping Tools

Network maps needn't be an onerous burden to the network engineer. There are a variety of tools available that will help automate some aspects of creating network maps. More importantly, the tools will also help with the burden of maintaining the maps.

### Open Source

Rather disappointingly, there is no head on competitor to the commercial network mapping tools. Tools do exist, but they are not up to the standards of the commercial tools.

A number of open source network management systems incorporate some network mapping functionality. Unfortunately, in cases like [Nagios](http://www.nagios.org/) and [OpenNMS](http://www.opennms.org/), they are quite rudimentary.

There is only one dedicated open source network mapping tool that I am aware of (though, if you know better, please leave some feedback). [knetmap](http://sourceforge.net/projects/knetmap/) is a network mapping tool running on Linux utilizing the KDE desktop environment. It is currently in alpha so a production version is unlikely for some time.

### Commercial

#### SmartDraw

[SmartDraw](http://www.smartdraw.com/) is a straight down the line graphics program. With the addition of a network library it is easy to create network maps of your network. But don't expect any help along the way. SmartDraw will not automate any of the process for you by going out and discovering elements of your network for you.

If you just want to create a few simple ad-hoc maps for the lowest cost possible then SmartDraw would be a good choice. It is inexpensive and will produce results quickly. It will however impose a significant burden if you wish to keep your diagrams up-to-date.

#### Visio

[Visio](http://office.microsoft.com/home/office.aspx?assetid=FX01085798) is perhaps the best known network mapping tool. Like SmartDraw it is not a dedicated network mapping tool, but it does include a modest amount of automation in the Pro version. The fact that Visio is now bundled in some versions of Microsoft Office means that it will be available to a lot of network engineers.

#### netViz

[netViz](http://www.netviz.com/) started life as a pure network mapping tool. It has since broadened out to become a more generic enterprise documentation solution. netViz now includes diagramming functions for relational databases, workflows and org charts amongst others.

#### Neon LANsurveyor

[Neon LANsurveyor](http://www.neon.com/LSwin.html) is a sophisticated network mapping tool with a high degree of automation. Neon LANsurveyor also includes an intrusion detection system to help identify rogue network users. LANsurveyor is able to probe your network and discover your network architecture automatically. It can probe your switches to discover which switch port(s) a given network node hangs from. Documenting your switches alone can be a nightmare, so any means to automate this process can be a real time saver.

## Conclusion

The tool likely to appeal to you really depends upon how you are likely to use your network maps. If you just want to knock up a quick, disposable diagram to explain to your boss how your network is put together, then both SmartDraw and Visio will likely suffice.

On the other hand, if you want a means to maintain a high degree of documentation about your network, then I would suggest you look at netViz and LANSurveyor. Both of these tools will make the process of maintaining your network maps much easier.
