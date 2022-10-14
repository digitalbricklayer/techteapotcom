---
title: "Open source network management download comparison"
date: "2007-11-02T13:58:04+00:00"
categories: ["Network Management", "Open Source"]
tags: [nagios, Zenoss, Zabbix, "OpenNMS"]
aliases: [/open-source-network-management-download-comparison/]

---

One of the great things about [sourceforge](http://www.sourceforge.net/), apart from the cool services they provide free to open source projects, is that they provide statistics about the projects they host.

One of the stats that sourceforge provides is a history of project downloads. You can't compare the stats though. So I thought it would be interesting to compare the downloads for the major open source network management projects.

The volume of downloads is indicative, like [search trends]({{< ref "/posts/new-wave-network-management-buzz-comparison.md" >}}), of the relative mind share for each project. Download volume isn't a perfect measure, but it is one of the best available. I doubt even the projects themselves have an absolutely accurate idea of how many installations they have.

I entered the [download data from sourceforge for the last year into a Google Spreadsheet](https://docs.google.com/spreadsheets/d/1rWdCarr1RZ6l9aRYM0ZMah5J1_-UlIwXIk7Mr4Fok_U/pubhtml). I then graphed the data. See the graphs below. The data covers the previous year, from November 2006 through to October 2007.

{{< figure src="https://docs.google.com/spreadsheets/d/1rWdCarr1RZ6l9aRYM0ZMah5J1_-UlIwXIk7Mr4Fok_U/pubchart?oid=1&format=image" alt="Open Source network management projects by monthly downloads" caption="Figure 1: Open Source Network Management Projects by Monthly Downloads" >}}

{{< figure src="https://docs.google.com/spreadsheets/d/1rWdCarr1RZ6l9aRYM0ZMah5J1_-UlIwXIk7Mr4Fok_U/pubchart?oid=3&format=image" alt="Open Source Network Management Projects Total Downloads" caption="Figure 2: Open Source Network Management Projects Total Downloads" >}}

I've compared five projects: [Nagios](http://www.nagios.org/), [OpenNMS](https://www.opennms.org/), [Zenoss](http://www.zenoss.org/), [Hyperic](http://www.hyperic.com/) &amp; [Groundwork Open Source](http://www.groundworkopensource.com/) all of whom host their downloads at sourceforge.

I doubt the graph will surprise too many people. The graph is [similar to the Google Trends data]({{< ref "/posts/new-wave-network-management-buzz-comparison.md" >}}). Both Nagios and Zenoss are vying for the top position. What has surprised me over the last year has been the stability of the number of Nagios downloads.

If the growth of the "[new wave]({{< ref "/posts/network-managements-new-wave.md" >}})" is coming from other open source projects, it isn't coming from either Nagios or OpenNMS, the most mature *old skool* open source network management projects.

I don't think there is much doubt that both Zenoss &amp; Hyperic have brought commercial levels of setup and configuration to the open source network management market. And yet, Nagios a tool that relies on manual configuration, is still gaining traction.

Once you have a loyal community, by delivering and supporting successive releases over an extended time, **users are loath to move to another project**.

Perhaps perversely, the harder a tool is to learn, the more reluctant users are to migrate to another tool. A kind of open source [Stockholm syndrome](https://en.wikipedia.org/wiki/Stockholm_syndrome).

I'm sure that all of the *new wave* players understand the value of community...that's why they are going hell for leather building them. :smile:
