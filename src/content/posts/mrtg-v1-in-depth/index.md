---
title: "An in-depth examination of MRTG v1.0"
date: "2022-10-10"
summary: "An in-depth examination of MRTG v1.0 and how it took advantage of the emerging public internet to conquer the world."
thumbnail: "images/mrtg_logo.gif"
categories:
  - Open Source
  - Network Management
tags:
  - MRTG
series:
  - In Depth
draft: true
---

## Introduction

MRTG is an open source network management tool originally developed by Tobias Oetiker in the spring of 1995 whilst he was working as a system administrator at De Montfort University, Leicester, UK.

The [original announcement of the MRTG project](https://groups.google.com/g/comp.lang.perl/c/FaAWCOBdgKo/m/g7IAn-LRGicJ) took place on 28th April 1995.

Here is the announcement in full:

> ANNOUNCE: mrtg - Network Traffic Stats on the Web
>
> MULTI ROUTER TRAFFIC GRAPHER
> ============================
> Here at DMU, our Internet link is always under heavy load. Therefore
everybody is keen to know how the state of the link is.
>
> I have written a small perl script which gathers the traffic stats from our
backbone router. (the tool uses "snmpget" to read the information from the
router.)
>
> The tool the creates a daily, weekly and yearly traffic graphs and makes
them accessible trough a html document. (It uses ppmtogif to create the
graphics)
>
> If you are interested, you are welcome to download a
copy and see the output of the tool, take a look at my homepage server:
>
> http://engelberg.dmu.ac.uk
>
> The tool can be easily configured for other sites, and it can also keep stats
for several routers.
>
> If you have comments on this program please get in touch
>
> Enjoy!
> tobi

MRTG appeared just at the time that it was possible for it to exist. Perl had to exist, cmu-snmp had to exist and netpbm had to exist too. Without these things existing and the wherewithall to distribute them freely, MRTG would either not have existed at all or would have been a small local utility used exclusively inside De Montfort University.

The story of a particular location can be described in the various trenches of an archaeological dig. In a similar way, the story of an open source project is set out in how the source code has evolved over the project's lifetime. It may also be possible to discern broader technical changes through the evolution of the project.

## Network management landscape

## MRTG architecture

MRTG version 1 could not be much simpler. The software consists of a single executable program written in Perl, a sample configuration file, rudimentary documentation (see figure 1) in the form of a web page and some images to be used in the outputted html pages.

In order to install MRTG you first need to copy the sample configuration file and modify it to point to a local router supporting SNMP. You then need to schedule a cron job to run every 5 minutes to run the MRTG executable with the configuration file as the first parameter. The `mrtg` executable will run and query your local router via SNMP for the in/out octets and slowly build a series of graphs embedded onto a single web page. If you have multiple routers, create a configuration file for each one and a new cron job. Your output will be a series of web pages with the in/out octets displayed in a series of graphs as well as a file with the raw time series data.

Version 1 file format:

{{< figure src="images/mrtg-help-v1-0.png#center"
           link="images/mrtg-help-v1-0.png"
           alt="MRTG v1 documentation"
           caption="Figure 1: MRTG v1 documentation" >}}

{{< figure src="images/dmu-ac-uk-mrtg-jips.png#center"
           link="images/dmu-ac-uk-mrtg-jips.png"
           alt="De Montfort University internet link throughput graphs"
           caption="Figure 2: De Montfort University internet link throughput graphs last updated 16th October 1995" >}}

Dependencies:

* cmu-snmp - a set of command line tools for interacting with SNMP enabled devices as well as an extensible SNMP agent (eventually morphed into [ucd-snmp and then net-snmp](http://www.net-snmp.org/about/history.html)
* netpbm - a [very old set of command line tools](http://netpbm.sourceforge.net/) for image manipulation harking back to the 1980s when a vast number of image formats proliferated and a desperate need emerged to be able to convert between all of the different formats
* perl - the undisputed language of the web back in the 1990s
* cron - a unix tool for running episodic jobs on unix systems. MRTG expects to be run every 5 minutes

Time series output

Why did such a simple tool take off in such a big way?
