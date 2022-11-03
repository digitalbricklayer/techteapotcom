---
title: Network Simulation Introduction
date: 2015-11-03
description: "Network simulation is a much underestimated tool in the network managers arsenal. When used properly they can help take some of the guesswork out of network planning."
lead: "Network simulation is a much underestimated tool in the network managers arsenal. When used properly they can help take some of the guesswork out of network planning."
categories:
  - Network Management
series:
  - Teapot Bitesize
---

<!--more-->

## What is Network Simulation?

Network simulators attempt to model real world networks. The idea being that if a system can be modelled, then features of the model can be changed and the results analysed. As the process of model modification is relatively cheap then a wide variety of scenarios can be analysed at low cost (relative to making changes to a real network).

One word of warning. Network simulators are not perfect. They will **NOT** perfectly model your network. They will, however, be close enough to give you meaningful insight into how your network is working, and how changes will effect its operation.

## Why should you be interested in Network Simulation?

If you are the manager of a growing network, with ever greater demands being placed upon your network, then network simulators are an area you should seriously consider investigating.

Making changes to your network are expensive. Mistakes can cost you a lot of money to rectify.

If you had a tool that allowed you to model your current network, then make changes to it to see what happened. That would be useful wouldn't it? The network simulator would remove some of the uncertainty surrounding the changes you were making. Of course, it wont remove all of the uncertainty, but at least it will remove some of it.

Network simulators are most useful when used to model large networks. Modelling two machines, whilst interesting as a tutorial exercise, is probably not worth the effort. Modelling changes to a large network however is a worthwhile activity.

## Who are the Players in the Network Simulation World?

Network simulation has been around for a while. There are a number of players, both open source and commercial. I don't have any experience of the commercial tools, so I am loathe to recommend anything I haven't first hand experience of.

You will, of course, need relatively deep pockets to sample the delights of the commercial tools. Though, if you have a large network, the commercial tools may well be worth the money in order to get hold of technical support.

### Open Source Network Simulation Players

A number of open source network simulators are available like [ns-2](http://www.isi.edu/nsnam/ns/), [MaRS](http://www.ccs.neu.edu/home/matta/software.html), [REAL](http://www.cs.cornell.edu/skeshav/real/overview.html), [SSFNet](http://www.ssfnet.org/), [OMNeT++](http://www.omnetpp.org/) &amp; [J-Sim](http://www.j-sim.org/). I have outlined two of the most popular, SSFNet &amp; J-Sim.

#### SSFNet

The SSFNet is a mature network simulation tool started in 1998. Most SSFNet components are licensed under the GNU General Public License. SSFNet is made up of the following components:

* Scalable Simulation Framework (SSF): a discrete event simulation of large complex systems written in Java and C++. The SSF is open source.
* Domain Modelling Language (DML): a language for describing the model of your network you wish to simulate. The DML is open source.
* Integrated Development Environments (IDEs): a range of tools to make the process of building your model easier. Some of the IDEs are free, some are not.

A number of tutorials are available on the website.

#### J-Sim

J-Sim is a network simulator with a Java based simulation engine. J-Sim can be extended using Java classes. Models can also be constructed using Java too, though most people will probably prefer to use one of a number of supported scripting languages to do the modelling, like Perl, TCL or Python. A new Java based GUI tool is also available for constructing models.

Of the two tools I have described here, J-Sim is aimed towards people who are comfortable with their favourite programming language. SSFNet does have a language to learn, but it is not as onerous a task as learning a language like Perl or Python. Having said that, the GUI modelling tool available as part of the J-Sim package looks promising. If GUI modelling tool delivers then you will be relieved of the burden of learning a language like Perl. This will certainly lower the threshold necessary to use the J-Sim tool.

### Commercial Network Simulation Players

#### OPNET Modeller

[OPNET Modeller](http://www.opnet.com/products/modeler/home.html) claims to be the first commercial available network simulator tool. It was first developed at MIT. The website does a good job of explaining the tool with a nice web-based demo. The tool looks just the job, with a nice graphical editor for all of your network modelling needs.

#### NetRule

Rarely have I seen a worse set of product pages than the [NetRule](http://www.netrule.com/) website. Ill be polite and call it functional. I sure hope their product is better than the website. But, they have been around for a long time so one must assume it is.

## How do you get Started in Network Simulation?

A good first bet is to find yourself a spare machine somewhere. Visit the various open source tool websites and see which suits you best. Then give it a go. Try some of the tutorials and gradually build up your confidence.

If you find yourself in trouble, join a tool mailing list and ask away. I'm sure that you will receive a warm welcome.

If you require phone support etc, or would like printed manuals, then you may want to move onto a commercial tool.

## If Network Simulation is so good why isn't everybody doing it?

Well, as ever people are so busy fighting fires that they rarely have the luxury of actually planning things. Things are expected to be delivered now.

Money is often a problem, though with so many high quality open source tools available, that really isn't a valid excuse. You can have a high quality network simulator for the price of a little time installing an open source offering like SSFNet.

Learning a network simulation tool, either open source or commercial is a large undertaking. In order to justify that time you need to know that the time saved experimenting on your physical network is longer and more expensive than the time taken to learn your chosen network simulation tool and perform the necessary modelling.

Perhaps what holds network simulation tools back is that network managers underestimate the amount of time they spend making unnecessary changes to their physical network.
