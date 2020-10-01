---
title: '"New wave" network management buzz comparison'
date: "2007-09-13T16:41:48+00:00"
categories: ["Network Management", "Open Source"]
tags: [Zenoss, Hyperic, "Groundwork Open Source"]
aliases: [/new-wave-network-management-buzz-comparison/]
---

<a href="http://www.google.com/trends">Google Trends</a> is an on-line service for comparing the search volumes for up to five keywords. I thought it would be interesting to compare the relative buzz of the <a href="{{< ref "posts/network-managements-new-wave.md" >}}">"<strong>new wave</strong>" open source network management players</a> between themselves, but also between other open source projects and commercial products.

Google Trends doesn't supply the search volumes themselves, so no quantitative data will be presented. The data that is presented is solely comparative. You can see, over time, which keywords are being searched for the most. Please note: you cannot infer any intent from the search volume. The searchers may be looking for general product information, installation notes or just about anything else. I have assumed that the search patterns are the same between the various projects/products.

I have omitted <a href="http://www.groundworkopensource.com/">Groundwork Open Source</a> &amp; <a href="http://www.solarwinds.com/products/orion/index.aspx">SolarWinds Orion</a> on the basis that the search volumes are distorted by the search terms having multiple meanings.

<h2>Hyperic vs Zenoss</h2>

<img src="/images/uploads/2007/09/zenoss-vs-hyperic.PNG" alt="Hyperic vs Zenoss Search Trend" width="100%" height="100%" align="center" />Figure 1: <a href="http://www.google.com/trends?q=hyperic%2Czenoss">Hyperic vs Zenoss Search Trend</a>

Firstly, I'd like to congratulate both <a href="http://www.zenoss.com/">Zenoss</a> &amp; <a href="http://www.hyperic.com/">Hyperic</a> for appearing in Google Trends. That's no mean feat in itself.

Zenoss is winning the search war, no doubt about it. Figure 1 shows that Zenoss search volume looks to be about double Hyperic's level. One reason for that may be the relative communities that Zenoss can plug into: <a href="http://www.python.org/">Python</a> &amp; <a href="http://www.zope.org/">Zope</a>. Both are very definite communities that are going to be very vocal about projects they like. Hyperic is written in <a href="http://java.sun.com/">Java</a>: Java doesn't really have a close knit community in the same way that Python does.

Zenoss is also more customisable by sysadmins. As Zenoss is written in Python and Python is a very easy to learn scripting language, sysadmins are going to find customising and extending Zenoss pretty easy. Hyperic is not easy to customise and extend. Java takes a lot of expertise to program properly, especially in complex environments like network management applications. Perhaps Hyperic should consider adopting a Java friendly scripting language like Jython?

<h2>New wave vs Non-commercial Open Source Projects</h2>

<img src="/images/uploads/2007/09/oss-comparison.png" alt="New wave vs Open Source Projects Trend" width="100%" height="100%" align="center" />Figure 2: <a href="http://www.google.com/trends?q=hyperic%2Czenoss%2Cnagios%2Cmrtg%2Copennms&ctab=0&geo=all&date=all&sort=0">New wave vs Open Source Projects Trend</a>

Figure 2 shows the relative search volume between Hyperic, Zenoss, <a href="http://oss.oetiker.ch/mrtg/">MRTG</a>, <a href="http://www.nagios.org/">Nagios</a> and <a href="http://www.opennms.org/">OpenNMS</a>. The first thing that struck me is the massive search volume for MRTG. WOW! Given how far behind in terms of features and performance MRTG is behind the rest it is quite staggering how many searches it receives. MRTG is losing search volume though, down by two thirds since the beginning of 2004. Nagios has done very well, gaining search volume throughout the last three years.

What does the graph mean for Hyperic &amp; Zenoss?

<ul>
	<li><strong>Nagios is a formidable competitor</strong>;</li>
	<li><strong>Taking users away from the existing open source projects isn't going to be either quick or easy</strong>. Take MRTG as an example. There are a number of credible competitors to MRTG like OpenNMS, Cacti, Nagios in addition to Zenoss &amp; Hyperic and yet MRTG has lost search volume quite slowly over an extended period.</li>
</ul>

<h2>Commercial Products vs New Wave</h2>

<img src="/images/uploads/2007/09/big2-comparison1.PNG" alt="OpenView/NetIQ vs New Wave" width="100%" height="100%" align="center" />Figure 3: <a href="http://www.google.com/trends?q=hyperic%2Czenoss%2Copenview%2Cnetiq&ctab=0&geo=all&date=all&sort=0">OpenView/NetIQ vs New Wave</a>

The most surprising thing about Figure 3 is the downward trend on both of the commercial tools: OpenView &amp; NetIQ. Though, I don't think that the downward trend can be attributed to either Zenoss or Hyperic, given that the trend started long before they came on the scene.

The number of NetIQ searches is now lower than Zenoss by volume. If the downward trend continues, both Zenoss &amp; Hyperic will be hot on their tails.

<h2>Conclusion</h2>

Both Hyperic &amp; Zenoss are in good health, at least according to their respective search volumes. Search volume is just one metric amongst many that I'm sure both companies monitor on a regular basis. Of far more importance to them will be the number of installations in organisations possessing a budget for network management maintenance. Unfortunately, Google Trends doesn't have a graph for that!

The one surprising trend presented by the graphs is that neither Hyperic nor Zenoss appear to be taking searches away from other open source projects or commercial products. When I started out compiling the graphs, I expected to see the growth of new wave searches to be taking away searches from Nagios. That has proved to be completely wrong.

Is it possible that people are using multiple tools? I suspect that people tend to use network monitoring much more as a point tool rather than as some monster enterprise wide solution. It could explain why there is no obvious rise in searches for one product or project at the expense of another one.

One explanation for the lack of obvious signs of competitive attrition is the difficulty of migrating between network management tools. If the <em>new wave</em> wish to win over users from other tools, a concerted effort should be made to make migration from competitive tools as simple as possible.
