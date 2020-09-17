---
title: "Musings upon the open core functionality ceiling"
date: "2010-03-02T12:37:55+00:00"
categories: []
tags: []

One of the things you'd expect from an active open source project is that the code base is likely to grow as more and more features are added.

In <a href="http://techteapot.com/an-exploration-of-open-core-licensing-in-network-management/">An exploration of open core licensing in network management</a> I mentioned that one possible side effect of open core software is the creation of a <em>functionality ceiling</em>.

A <em>functionality ceiling</em> is a level of functionality beyond which the <em>community</em> edition product manager is unwilling to implement because of the fear that the <em>enterprise</em> product will be less attractive to potential customers.

That got me thinking, if a <em>functionality ceiling</em> does exist, how can I demonstrate it?

The graphs below are taken from the <a href="http://www.ohloh.net/">Ohloh open source project directory</a>. The rather useful thing about Ohloh is, in addition to cataloguing open source projects, it also performsÂ  extensive code analysis.

The two graphs below are taken from the <a href="http://www.ohloh.net/p/hyperic/analyses/latest">Hyperic code analysis</a> and the <a href="http://www.ohloh.net/p/zenoss/analyses/latest">Zenoss code analysis</a> pages on Ohloh.

[caption id="attachment_1770" align="aligncenter" width="300" caption="Hyperic Code Analysis Graph"]<a href="http://techteapot.com/wp-content/uploads/2010/03/hyperic-code-analysis.png"><img class="size-medium wp-image-1770" title="Hyperic Code Analysis Graph" src="http://techteapot.com/wp-content/uploads/2010/03/hyperic-code-analysis-300x129.png" alt="Hyperic Code Analysis Graph" width="300" height="129" /></a>[/caption]

[caption id="attachment_1771" align="aligncenter" width="300" caption="Zenoss Code Analysis Graph"]<a href="http://techteapot.com/wp-content/uploads/2010/03/zenoss-code-analysis.png"><img class="size-medium wp-image-1771" title="Zenoss Code Analysis Graph" src="http://techteapot.com/wp-content/uploads/2010/03/zenoss-code-analysis-300x129.png" alt="Zenoss Code Analysis Graph" width="300" height="129" /></a>[/caption]

Both of the graphs clearly show a plateau in the quantity of code committed to the respective <em>community</em> edition code repositories. There may be a number of explanations for the plateau, perhaps heavy re-factoring work clears the space required by new features. Though, realistically I doubt that re-factoring would be capable of continually reducing the size of the code base in order to make way for new code.

The plateau look suspiciously like evidence that open core software, at least in the network management world, tends towards a functional ceiling.
