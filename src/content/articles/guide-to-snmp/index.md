---
title: "Guide to SNMP"
date: 2022-10-18T15:22:36+01:00
thumbnail: "/images/snmp-logo.png"
categories:
  - Network Management
tags:
  - snmp
aliases: [/posts/guide-to-snmp/]
---

An explanation of what SNMP is and how it can fit into your broader environmental monitoring efforts.

<!--more-->

## SNMP Basics

*Simple Network Management Protocol* or SNMP for short, is a standard management protocol for reading and setting values on network equipment. SNMP was originally developed for the network management field but is now used widely outside the strict confines of network management.

Here's what [Wikipedia has to say about SNMP](http://en.wikipedia.org/wiki/Snmp):

>*Simple Network Management Protocol (SNMP) is used in network management systems to monitor network-attached devices for conditions that warrant administrative attention. SNMP is a component of the Internet Protocol Suite as defined by the Internet Engineering Task Force (IETF). It consists of a set of standards for network management, including an application layer protocol, a database schema, and a set of data objects.*

The main design principle for SNMP was that it must interoperate between different platforms seemlessly. In other words, whichever operating system or hardware platform you are using, you must be able to access the information exposed via SNMP easily and reliably.

Much of the complexity of SNMP stems from the requirement to interoperate, especially between hardware platforms with different [endian alignments](http://en.wikipedia.org/wiki/Endianness).

### OIDs, MIBs and such

The SNMP client requests for information from the management agent using the Object IDentifier or OID. The SNMP agent maintains a tree of OIDs that represents the information stored within the agent. The OID describes where in the tree the SNMP agent should look.

A MIB is a user friendly description of the OID tree supported by a particular SNMP agent.

### Managed Device

Serves up values identified by an OID via SNMP to a SNMP client. The client is completely in charge of the interaction. The client requests information from the managed device using an OID and the managed device sends the information back to the client. Each managed device makes its management information available via a SNMP agent. Each device can implement its own SNMP agent though in reality most use a few standard SNMP agents like [Net-SNMP](http://www.net-snmp.org/) and [Microsoft SNMP Agent](http://technet.microsoft.com/en-us/library/cc765990.aspx).

### SNMP Client

The SNMP client requests information from the managed device. Typically the SNMP client will be in the form of a network management system (NMS) or management console. A NMS and management console are just different terms for the same thing.

{{< figure src="images/snmp-request-response.png#center" alt="SNMP Request / Response Overview" >}}

Network management systems typically request the same information periodically, like the number of packets sent through a particular switch port, and then log and graph the information to provide trending information.

You can request SNMP information interactively using command line SNMP tools, as provided by the ever faithful Net-SNMP project. Interactive use is typically done whilst learning about SNMP. It can also be useful when you wish to find specific information inside the vast array of data a managed device usually supplies, so that you can then trend the information inside your NMS.

### SNMP Traps

Up until now the SNMP agent has been completely passive. The client requests data and the agent responds. What if an event happens between one request and the next? Happily the designers of SNMP thought of that and designed SNMP traps. Traps are very useful because instead of the agent being completely passive, it can tell one or more clients when something of interest has happened.

{{< figure src="images/snmp-trap.png#center" alt="SNMP Trap Overview" >}}

In the case of environmental monitoring that is usually something like a temperature threshold has been exceeded. Instead of having to continually poll and hope that the important reading is captured in time, you can rely on your environment monitor to tell you when a heat emergency is happening.

## Why SNMP exists

Most networks of any size and age have lots and lots of equipment from many different manufacturers.

If each manufacturer implemented a proprietary management system, managing the network would quickly become a nightmare. Each manufacturer’s equipment would need its own management system. None of the different manufacturer’s management systems would talk to each other.

All told an expensive, inflexible mess.

To that end the manufacturers agreed to create a single management protocol called Simple Network Management Protocol or SNMP they could all implement on their devices.

You would then only need a single SNMP based management system to manage your network. The management system would then be able to talk to all of the devices on a network from any compliant manufacturer.

## What is environmental monitoring?

Your server room has a range of environmental conditions that affect the operation of your servers. From the temperature to relative humidity everything affects the servers reliability in some way. Environment monitoring is the task of monitoring the various environmental conditions to ensure they stay within a normal distribution.

## What has SNMP got to do with environmental monitoring?

If you wish to create a point tool for your environment monitoring without any integration into your existing network management system then you don’t need to worry about SNMP at all. Most manufacturers of environmental monitoring products supply proprietary tools for logging, alerting and graphing environmental data. The manufacturer's point tool will likely provide the easiest route to building a monitoring system.

However, if you wish to integrate your environmental monitoring efforts into your existing network management system or if you have environment monitors from two or more manufacturers, then SNMP support is essential.

SNMP is a great integration and interoperability protocol.

SNMP enables your environmental monitoring devices to integrate into your existing network management system.

Your network management system can be anything from a Big 4 enterprise solution like HP OpenView or IBM Tivoli, mid market solution like Ipswitch What’s Up Gold, SNMPc and Solar Winds Orion or open source tools like [Zenoss](https://www.zenoss.com/) and [Nagios](https://www.nagios.org/).

All of the above mentioned tools use SNMP to fetch performance information. The systems then, to various levels of sophistication, alert, log, trend and correlate the information.

## SNMP In Context

Your environment monitoring system is the SNMP agent and your network management system is the SNMP client. Your network management system requests information, like the current temperature reading from a temperature sensor, from the environment monitor by using the OID that matches the required data. The management system then logs and graphs the data appropriately and fires an alert if it is outside your pre-defined safe threshold.

SNMP is useful because it is supported by most envioronment monitors from many different manufacturers. There is no standard MIB for environment monitors so you will need to configure each environment monitor seperately, but at least you can have a single system responsible for all of your network, environmental and system management information. By centralising all of your information you only need to set up one logging system and one alerting system.

## Conclusion

SNMP is a great tool for for building an environmental monitoring system based upon many different manufacturers. So long as the monitoring device supports SNMP, you can integrate it into your environmental monitoring system seamlessly. Your environment monitoring system will also be able to centralise alerting and logging functions without the need for proprietary tools.

And the bonus is that you'll be able to monitor many other things as well like, CPU usage on your servers or network utilisation on your switches.
