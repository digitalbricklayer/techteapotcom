---
title: '"New wave" network management buzz comparison'
date: "2007-09-13T16:41:48+00:00"
categories: ["Network Management", "Open Source"]
tags: [Zenoss, Hyperic, "Groundwork Open Source"]
aliases: [/new-wave-network-management-buzz-comparison/]
---

[Google Trends](http://www.google.com/trends) is an on-line service for comparing the search volumes for up to five keywords. I thought it would be interesting to compare the relative buzz of the [new wave open source network management players]({{< ref "/posts/network-managements-new-wave.md" >}}) between themselves, but also between other open source projects and commercial products.

Google Trends doesn't supply the search volumes themselves, so no quantitative data will be presented. The data that is presented is solely comparative. You can see, over time, which keywords are being searched for the most. Please note: you cannot infer any intent from the search volume. The searchers may be looking for general product information, installation notes or just about anything else. I have assumed that the search patterns are the same between the various projects/products.

I have omitted [Groundwork Open Source](http://www.groundworkopensource.com/) &amp; [SolarWinds Orion](http://www.solarwinds.com/products/orion/index.aspx) on the basis that the search volumes are distorted by the search terms having multiple meanings.

## Hyperic vs Zenoss

{{< figure src="/images/uploads/2007/09/zenoss-vs-hyperic.PNG" alt="Hyperic vs Zenoss Search Trend" link="http://www.google.com/trends?q=hyperic%2Czenoss" caption="Figure 1: Hyperic vs Zenoss Search Trend" >}}

Firstly, I'd like to congratulate both [Zenoss](https://www.zenoss.com/) &amp;[Hyperic](http://www.hyperic.com/) for appearing in Google Trends. That's no mean feat in itself.

Zenoss is winning the search war, no doubt about it. Figure 1 shows that Zenoss search volume looks to be about double Hyperic's level. One reason for that may be the relative communities that Zenoss can plug into: [Python](http://www.python.org/) &amp; [Zope](http://www.zope.org/). Both are very definite communities that are going to be very vocal about projects they like. Hyperic is written in [Java](http://java.sun.com/): Java doesn't really have a close knit community in the same way that Python does.

Zenoss is also more customisable by sysadmins. As Zenoss is written in Python and Python is a very easy to learn scripting language, sysadmins are going to find customising and extending Zenoss pretty easy. Hyperic is not easy to customise and extend. Java takes a lot of expertise to program properly, especially in complex environments like network management applications. Perhaps Hyperic should consider adopting a Java friendly scripting language like Jython?

## New wave vs Non-commercial Open Source Projects

{{< figure src="/images/uploads/2007/09/oss-comparison.png" alt="New wave vs Open Source Projects Trend" link="http://www.google.com/trends?q=hyperic%2Czenoss%2Cnagios%2Cmrtg%2Copennms&ctab=0&geo=all&date=all&sort=0" caption="Figure 2: New wave vs Open Source Projects Trend" >}}

Figure 2 shows the relative search volume between Hyperic, Zenoss, [MRTG](http://oss.oetiker.ch/mrtg/), [Nagios](http://www.nagios.org/) and [OpenNMS](https://www.opennms.org/). The first thing that struck me is the massive search volume for MRTG. WOW! Given how far behind in terms of features and performance MRTG is behind the rest it is quite staggering how many searches it receives. MRTG is losing search volume though, down by two thirds since the beginning of 2004. Nagios has done very well, gaining search volume throughout the last three years.

What does the graph mean for Hyperic &amp; Zenoss?

- Nagios is a formidable competitor;
- Taking users away from the existing open source projects isn't going to be either quick or easy. Take MRTG as an example. There are a number of credible competitors to MRTG like OpenNMS, Cacti, Nagios in addition to Zenoss &amp; Hyperic and yet MRTG has lost search volume quite slowly over an extended period.

## Commercial Products vs New Wave

{{< figure src="/images/uploads/2007/09/big2-comparison1.PNG" alt="OpenView/NetIQ vs New Wave" link="http://www.google.com/trends?q=hyperic%2Czenoss%2Copenview%2Cnetiq&ctab=0&geo=all&date=all&sort=0" caption="Figure 3: OpenView/NetIQ vs New Wave" >}}

The most surprising thing about Figure 3 is the downward trend on both of the commercial tools: OpenView &amp; NetIQ. Though, I don't think that the downward trend can be attributed to either Zenoss or Hyperic, given that the trend started long before they came on the scene.

The number of NetIQ searches is now lower than Zenoss by volume. If the downward trend continues, both Zenoss &amp; Hyperic will be hot on their tails.

## Conclusion

Both Hyperic &amp; Zenoss are in good health, at least according to their respective search volumes. Search volume is just one metric amongst many that I'm sure both companies monitor on a regular basis. Of far more importance to them will be the number of installations in organisations possessing a budget for network management maintenance. Unfortunately, Google Trends doesn't have a graph for that!

The one surprising trend presented by the graphs is that neither Hyperic nor Zenoss appear to be taking searches away from other open source projects or commercial products. When I started out compiling the graphs, I expected to see the growth of new wave searches to be taking away searches from Nagios. That has proved to be completely wrong.

Is it possible that people are using multiple tools? I suspect that people tend to use network monitoring much more as a point tool rather than as some monster enterprise wide solution. It could explain why there is no obvious rise in searches for one product or project at the expense of another one.

One explanation for the lack of obvious signs of competitive attrition is the difficulty of migrating between network management tools. If the *new wave* wish to win over users from other tools, a concerted effort should be made to make migration from competitive tools as simple as possible.
