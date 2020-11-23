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
summary: "An in depth examination of the MRTG project architecture and implementation and how it has evolved over the past 25 years."
draft: true
---

{{< figure src="images/mrtg_logo.gif#alignright" >}}

## Introduction

The story of a particular location is set out in the various sections of an archaeological dig. In a similar way, the story of an open source project is set out in how the source code has evolved over the project's lifetime. It may also be possible to discern broader technical changes through the evolution of the project.

## MRTG architecture

{{< figure src="images/dmu-ac-uk-mrtg-jips.png#center"
           link="images/dmu-ac-uk-mrtg-jips.png"
           alt="De Montfort University internet link throughput graphs"
           caption="De Montfort University internet link throughput graphs last updated 16th October 1995" >}}

{{< figure src="images/mrtg-help-v1-0.png#center"
           link="images/mrtg-help-v1-0.png"
           alt="MRTG v1 documentation"
           caption="MRTG v1 documentation" >}}

Dependencies:

- cmu-snmp

- netpbm

Time series output
