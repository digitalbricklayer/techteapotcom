---
title: "Musings upon the open core functionality ceiling"
date: "2010-03-02T12:37:55+00:00"
categories: ["Network Management", "Open Source"]
tags: [Hyperic, "open core", Zenoss]
---

One of the things you'd expect from an active open source project is that the code base is likely to grow as more and more features are added.

In <a href="{{< ref "posts/an-exploration-of-open-core-licensing-in-network-management.md" >}}">An exploration of open core licensing in network management</a> I mentioned that one possible side effect of open core software is the creation of a <em>functionality ceiling</em>.

A <em>functionality ceiling</em> is a level of functionality beyond which the <em>community</em> edition product manager is unwilling to implement because of the fear that the <em>enterprise</em> product will be less attractive to potential customers.

That got me thinking, if a <em>functionality ceiling</em> does exist, how can I demonstrate it?

The graphs below are taken from the <a href="http://www.ohloh.net/">Ohloh open source project directory</a>. The rather useful thing about Ohloh is, in addition to cataloguing open source projects, it also performs extensive code analysis.

The two graphs below are taken from the <a href="http://www.ohloh.net/p/hyperic/analyses/latest">Hyperic code analysis</a> and the <a href="http://www.ohloh.net/p/zenoss/analyses/latest">Zenoss code analysis</a> pages on Ohloh.

{{< figure src="/images/uploads/2010/03/hyperic-code-analysis.png" width="300" height="129" title="Hyperic Code Analysis Graph" alt="Hyperic Code Analysis Graph" link="/image/uploads/2010/03/hyperic-code-analysis.png" >}}

{{< figure src="/images/uploads/2010/03/zenoss-code-analysis.png" width="300" height="129" title="Zenoss Code Analysis Graph" alt="Zenoss Code Analysis Graph" link="/image/uploads/2010/03/zenoss-code-analysis.png" >}}

Both of the graphs clearly show a plateau in the quantity of code committed to the respective <em>community</em> edition code repositories. There may be a number of explanations for the plateau, perhaps heavy re-factoring work clears the space required by new features. Though, realistically I doubt that re-factoring would be capable of continually reducing the size of the code base in order to make way for new code.

The plateau look suspiciously like evidence that open core software, at least in the network management world, tends towards a functional ceiling.
