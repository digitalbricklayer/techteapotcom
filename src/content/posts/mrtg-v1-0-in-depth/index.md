---
title: "An in-depth examination of MRTG v1.0"
date: "2022-11-22"
description: "An in-depth examination of MRTG v1.0 and how and why it came into being and how it took advantage of the emerging public internet to conquer the world."
lead: "An in-depth examination of MRTG v1.0 and how and why it came into being and how it took advantage of the emerging public internet to conquer the world."
thumbnail: "images/mrtg_logo.gif"
categories:
  - Open Source
  - Network Management
tags:
  - MRTG
series:
  - In Depth
toc: true
draft: true
---

<!--more-->

## Introduction

[MRTG](https://oss.oetiker.ch/mrtg/) or Multi Router Traffic Grapher is an open source network management tool originally developed by [Tobias Oetiker](https://blog.oetiker.ch/) in the spring of 1995 whilst he was working as a system administrator at [De Montfort University](https://www.dmu.ac.uk/), Leicester, UK.

Tobias Oetiker's MRTG is a simple tool for graphing various metrics available from network devices supporting the widely used [SNMP protocol]({{< ref "articles/guide-to-snmp/index.md" >}}).

Tobias Oetiker was originally motivated to write MRTG in order to provide insight into the usage of the university's new internet link. Back at the dawn of the public internet, links to the internet were extremely slow. If you had students or faculty complaining about internet speed, it was helpful to know whether the slowdown was caused by a saturated link or some other problem.

## Announcing MRTG v1.0

The [original announcement of the MRTG project](https://groups.google.com/g/comp.lang.perl/c/FaAWCOBdgKo/m/g7IAn-LRGicJ) took place on 28th April 1995 when Tobias Oetiker posted a message to the [comp.lang.perl](https://groups.google.com/g/comp.lang.perl) news group.

Here is the text of the announcement in full:

>```ANNOUNCE: mrtg - Network Traffic Stats on the Web
>
>MULTI ROUTER TRAFFIC GRAPHER
>============================
>Here at DMU, our Internet link is always under heavy load. Therefore 
>everybody is keen to know how the state of the link is.
>
>I have written a small perl script which gathers the traffic stats from our
>backbone router. (the tool uses "snmpget" to read the information from the
>router.)
>
>The tool the creates a daily, weekly and yearly traffic graphs and makes
>them accessible trough a html document. (It uses ppmtogif to create the
>graphics)
>
>If you are interested, you are welcome to download a
>copy and see the output of the tool, take a look at my homepage server:
>
>http://engelberg.dmu.ac.uk
>
>The tool can be easily configured for other sites, and it can also keep stats
>for several routers.
>
>If you have comments on this program please get in touch
>
>Enjoy!
>tobi

MRTG appeared just at the time that it was possible for it to exist. *Perl* had to exist, *cmu-snmp* had to exist and *netpbm* had to exist too. Without these things existing and the wherewithal to distribute them freely, MRTG would either not have existed at all or would have been a small local utility used exclusively inside De Montfort University.

Notice at the end that Tobi Oetiker was soliciting feedback from the very first announcement.

## Network Management in April 1995

MRTG was released into an internet that was before Google, Facebook and even Amazon's website went live a few months after v1.0. The web did exist but it was still very new with very few of the websites that exist now. All told there [were 23,500 websites on the internet in 1995](https://www.internetlivestats.com/total-number-of-websites/).

Corporate networks were unreliable and primitive to say the least and not widespread. Networks were dominated by [Novell Netware](https://en.wikipedia.org/wiki/NetWare) servers and some variant of Windows 3.1. The first version of Microsoft Windows to have integrated peer to peer networking only appeared with Windows for Workgroups in late 1992.

Windows 95 was only released in August 1995. If you wanted a computer with lots of horse power and memory you would be using a [dedicated workstation](https://en.wikipedia.org/wiki/Workstation) from the likes of [Sun Microsystems](https://en.wikipedia.org/wiki/Sun_Microsystems). Dedicated workstations aren't really a category of computer that exists any more. Microsoft ate the whole category with what was originally called [Windows NT](https://en.wikipedia.org/wiki/Windows_NT).

MRTG was written using a dedicated workstation. I doubt the tool would exist without access to a workstation given the difficulty of developing on an MS-DOS derived system.

[//]: # (Describe the other tools available at this time like OpenView, SNMPc etc...)

## MRTG Architecture

MRTG version 1.0 could not be much simpler. The software consists of a single executable called `mrtg` written in Perl, a sample configuration file and rudimentary documentation (see figure 1 below) in the form of a web page and some images to be used in the outputted HTML pages.

In order to install MRTG you first need to copy the sample configuration file and modify it to point to a local router supporting SNMP. You then need to schedule a cron job to run every 5 minutes to run the MRTG executable with the configuration file as the first argument. The `mrtg` executable will run and query your router via SNMP for the in/out octets and slowly build a series of graphs embedded in a single web page. If you have multiple routers, create a configuration file for each one and a new cron job. Your output will be a series of individual web pages with the in/out octets displayed in a series of graphs as well as a text file with the raw time series data.

{{< figure src="images/mrtg-help-v1-0.png#center"
           alt="MRTG v1.0 documentation"
           caption="Figure 1: MRTG v1.0 documentation" >}}

In order for MRTG to exist a number of tools needed to exist. The following tools were dependencies of MRTG v1.0.

- *cmu-snmp* - a set of command line tools for interacting with SNMP enabled devices as well as an extensible SNMP agent (eventually morphed into [ucd-snmp and then net-snmp](http://www.net-snmp.org/about/history.html);
- *netpbm* - a [very old set of command line tools](http://netpbm.sourceforge.net/) for image manipulation harking back to the 1980s when a vast number of image formats proliferated and a desperate need emerged to be able to convert between all of the different formats;
- *perl* - the [undisputed language of the web](https://opensource.com/life/16/11/perl-and-birth-dynamic-web) back in the 1990s;
- *cron* - a built-in Unix tool for running episodic jobs. MRTG expects to be run every 5 minutes.

## Output

MRTG outputs a web page embedded with graphs detailing some time series data for each configuration file.

{{< figure src="images/dmu-ac-uk-mrtg-jips.png#center"
           alt="De Montfort University internet link throughput graphs"
           caption="Figure 2: De Montfort University internet link throughput graphs last updated 16th October 1995" >}}

## Time series database

[//]: # (Description of the time series database used in early versions of MRTG goes here...)

Time series output

Open source collaboration - how quickly changes to the software were made by a community of people who began to make improvements to the project.

Why did such a simple tool take off in such a big way? MRTG just prior to 1995 would have just been a script produced internally and then used exclusively internally by a very small number of people. At best, it might have been shared around a few other colleagues in other similar institutions with a similar itch to scratch.

## MRTG Significance

I first came into contact with MRTG when a *very* enthusiastic customer gave me a demonstration of his use of the tool to chart the traffic over one of his network switches. It was slightly embarrassing as we were upgrading his installation of a proprietary, venture capital backed and very expensive network management tool. There was very little gushing over my upgrade.

So, why am I interested in a network management tool first released 27 years ago? I think the reason I'm interested about MRTG is twofold.

1. MRTG was the first superstar open source network management tool. Plenty of tools have come after MRTG and an awful lot of them eclipsed MRTG in an awful lot of ways, but MRTG was the first;
2. MRTG used the web in innovative ways but it also very early in using the internet as a collaborative medium too.

Take a look at the [SLAC Network Monitoring Tools](https://www.slac.stanford.edu/xorg/nmtf/nmtf-tools.html) catalog. The very first entry is MRTG.

## MRTG Eco-system

Add-ons etc

## Early Release History

See for [MRTG 1.1 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/bhOhM6Grii4/m/1Y8LlDrkKzcJ)

See for [MRTG 1.6 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/4gUbj7tBi14/m/R2fzLDA_bLcJ)

See for [MRTG 2.0 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/KqlEw0PexWA/m/cjYGNVFl-ScJ)

See [Perl and the dynamic web](https://opensource.com/life/16/11/perl-and-birth-dynamic-web)
