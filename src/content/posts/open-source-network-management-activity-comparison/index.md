---
title: "Open source network management activity comparison"
date: "2009-05-27T13:04:46+00:00"
categories: ["Network Management", "Open Source"]
tags: [nagios, wireshark, "OpenNMS"]
aliases: [/open-source-network-management-activity-comparison/]
---

The recent [controversy over the ICINGA Nagios fork]({{< ref "/posts/nagios-begets-icinga/index.md" >}}) brought into focus the relative activity of the various network management projects.

One of the main complaints aimed at Nagios [was the slow speed of development](http://www.vertical-visions.de/2009/05/06/icinga-is-a-nagios-fork/). The following graphs, taken from the open source directory ohloh, show the number of commiters and the number of commits over the last three years for [Nagios](http://www.nagios.org/), [OpenNMS](https://www.opennms.org/) and [Wireshark](http://www.wireshark.org/). I can't vouch for how accurate the stats are but I think they do provide some insight into the development processes of the respective projects.

{{< gallery match="images/*"
            sortOrder="desc"
            rowHeight="150"
            margins="5"
            resizeOptions="600x300 q90 Lanczos"
            previewType="none"
            embedPreview="true" >}}

I've used OpenNMS, Wireshark and Nagios as the basis for the comparison because all three are mature, successful open source network management projects of similar age. Wireshark and OpenNMS dwarf Nagios both in the number of contributors and the number of commits. Commits themselves can be misleading, a commit into the source repository doesn't indicate what the commit contained, whether it was a simple bug fix to a single file or a very large new feature requiring hundreds of changes. There is no reason to think that Nagios commits are inherently larger than Wireshark or OpenNMS commits.

Looking at the graphs, perhaps there was a problem with the structure of the Nagios project.
