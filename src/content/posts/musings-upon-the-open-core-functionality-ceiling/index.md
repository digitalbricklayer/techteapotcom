---
title: "Musings upon the open core functionality ceiling"
date: "2010-03-02T12:37:55+00:00"
categories: ["Network Management", "Open Source"]
tags: [Hyperic, "open core", Zenoss]
aliases: [/musings-upon-the-open-core-functionality-ceiling/]
---

One of the things you'd expect from an active open source project is that the code base is likely to grow as more and more features are added.

In [An exploration of open core licensing in network management]({{< ref "/posts/an-exploration-of-open-core-licensing-in-network-management/index.md" >}}) I mentioned that one possible side effect of open core software is the creation of a *functionality ceiling*.

A *functionality ceiling* is a level of functionality beyond which the *community* edition product manager is unwilling to implement because of the fear that the *enterprise* product will be less attractive to potential customers.

That got me thinking, if a *functionality ceiling* does exist, how can I demonstrate it?

The graphs below are taken from the [Ohloh open source project directory](http://www.ohloh.net/). The rather useful thing about Ohloh is, in addition to cataloguing open source projects, it also performs extensive code analysis.

The two graphs below are taken from the [Hyperic code analysis](http://www.ohloh.net/p/hyperic/analyses/latest) and the [Zenoss code analysis](http://www.ohloh.net/p/zenoss/analyses/latest) pages on Ohloh.

{{< figure src="hyperic-code-analysis.png" title="Hyperic Code Analysis Graph" alt="Hyperic Code Analysis Graph" >}}

{{< figure src="zenoss-code-analysis.png" title="Zenoss Code Analysis Graph" alt="Zenoss Code Analysis Graph" >}}

Both of the graphs clearly show a plateau in the quantity of code committed to the respective *community* edition code repositories. There may be a number of explanations for the plateau, perhaps heavy re-factoring work clears the space required by new features. Though, realistically I doubt that re-factoring would be capable of continually reducing the size of the code base in order to make way for new code.

The plateau look suspiciously like evidence that open core software, at least in the network management world, tends towards a functional ceiling.
