---
title: "Open source network management activity comparison"
date: "2009-05-27T13:04:46+00:00"
categories: ["Network Management", "Open Source"]
tags: [nagios, wireshark, "OpenNMS"]
---

The recent <a href="{{< ref "posts/nagios-begets-icinga.md" >}}">controversy over the ICINGA Nagios fork</a> brought into focus the relative activity of the various network management projects.

One of the main complaints aimed at Nagios <a href="http://www.vertical-visions.de/2009/05/06/icinga-is-a-nagios-fork/">was the slow speed of development</a>. The following graphs, taken from the open source directory ohloh, show the number of commiters and the number of commits over the last three years for <a href="http://www.nagios.org/">Nagios</a>, <a href="http://www.opennms.org/">OpenNMS</a> and <a href="http://www.wireshark.org/">Wireshark</a>. I can't vouch for how accurate the stats are but I think they do provide some insight into the development processes of the respective projects.

{{< foldergallery src="images/galleries/open-source-network-management-activity-comparison/" >}}

I've used OpenNMS, Wireshark and Nagios as the basis for the comparison because all three are mature, successful open source network management projects of similar age. Wireshark and OpenNMS dwarf Nagios both in the number of contributors and the number of commits. Commits themselves can be misleading, a commit into the source repository doesn't indicate what the commit contained, whether it was a simple bug fix to a single file or a very large new feature requiring hundreds of changes. There is no reason to think that Nagios commits are inherently larger than Wireshark or OpenNMS commits.

Looking at the graphs, perhaps there was a problem with the structure of the Nagios project.
