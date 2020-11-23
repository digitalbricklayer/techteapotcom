---
title: "MRTG In Depth"
date: "2020-11-23"
categories:
  - Open Source
  - Network Management
tags:
  - MRTG
series:
  - In Depth
summary: "An in depth examination of the MRTG project history, architecture and implementation and how it has evolved over the past 25 years."
draft: true
---

{{< figure src="images/mrtg_logo.gif#alignright" alt="MRTG Logo" >}}

See [comp.lang.perl.misc](https://groups.google.com/g/comp.lang.perl.misc/search?q=mrtg) and search for MRTG as per the link

See for [MRTG 1.1 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/bhOhM6Grii4/m/1Y8LlDrkKzcJ)

See for [MRTG 1.6 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/4gUbj7tBi14/m/R2fzLDA_bLcJ)

See for [MRTG 2.0 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/KqlEw0PexWA/m/cjYGNVFl-ScJ)

## Introduction

The story of a particular location is set out in the various sections of an archaeological dig. In a similar way, the story of an open source project is set out in how the source code has evolved over the project's lifetime. It may also be possible to discern broader technical changes through the evolution of the project.

## MRTG architecture

MRTG version 1 could not be much simpler. The software consists of a single executable program written in Perl, a sample configuration file, rudimentary documentation (see figure 1) in the form of a web page and some images to be used in the outputted html pages.

In order to install MRTG you first need to copy the sample configuration file and modify it to point to a local router supporting SNMP. You then need to schedule a cron job to run every 5 minutes to run the MRTG executable with the configuration file as the first parameter. The `mrtg` executable will run and query your local router via SNMP for the in/out octets and slowly build a series of graphs embedded onto a single web page. If you have multiple routers, create a configuration file for each one and a new cron job. Your output will be a series of web pages with the in/out octets displayed in a series of graphs as well as a file with the raw time series data.

See [Perl and the dynamic web](https://opensource.com/life/16/11/perl-and-birth-dynamic-web).

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
* perl - the undisputed language of the web back in the early days of the internet
* cron - a unix tool for running episodic jobs on unix systems. MRTG expects to be run every 5 minutes

Time series output
