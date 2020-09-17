---
title: 'Free Tools to Police your "no wireless" Policy'
date: "2013-07-31T13:33:16+00:00"
categories: []
tags: []
---

If you don't have a wireless network and you do not need to validate that you <em>don't</em> have a wireless network, you can blithely ignore what I'm going to say here.

However, if you don't have a wireless network, and you need to ensure that you don't, then this post may be of some interest to you.

There are a number of reasons why you have a <em>no wireless</em> policy, from worries about security to compliance issues.

In our case it is a compliance issue. We process credit cards on our website and consequently have to be PCI DSS compliant.

The PCI DSS wireless network security requirements are quite onerous, especially for small / medium sized companies. The mere thought of implementing a wireless network here, whilst adhering to the PCI DSS requirements, brings me out in a cold sweat.

That's why we have a <em>no wireless</em> policy. It's all very well having a policy, but how do you police it?

Tools are available, like dedicated 24/7 <a href="http://en.wikipedia.org/wiki/Wireless_intrusion_prevention_system">wireless intrusion detection systems</a>, to help you enforce your <em>no wireless</em> policy, but if you don't have the budget, what other options are available?
<h2>Software Based Solutions</h2>
If you are running Microsoft Windows then the <a href="http://en.wikipedia.org/wiki/Netsh">netsh</a> command is very handy. If you type something like:
<pre>netsh wlan show networks mode=bssid</pre>
netsh will list all of the wireless networks available through you wireless network. netsh is supported in Microsoft Windows 2000+ but wireless support wasn't added until Windows Vista.

Then there is <a href="http://www.netstumbler.com/">NetStumbler</a>, a free tool for discovering wireless access points among other things. Unfortunately, netstumbler hasn't been updated for quite a while and doesn't work on more recent versions of Microsoft Windows. There are alternatives, like <a href="http://www.metageek.net/products/inssider/">inSSIDer</a> (supports Microsft Windows, Linux &amp; OS X), <a href="http://www.istumbler.net/">iStumbler</a> (supports OS X), <a href="http://www.kismetwireless.net/">KISMET</a> (supports Linux and *BSD) and <a href="http://wigle.net/">Wigle Wifi</a> has an <a href="https://play.google.com/store/apps/details?id=net.wigle.wigleandroid">Android app</a> too (and a rather <a href="http://wigle.net/gps/gps/Map/onlinemap2/">impressive WiFi network database</a> to boot).
<h2>Hosted Solutions</h2>
One of the recent developments in wireless intrusion detection has been the recent spate of internet based services. Aha I hear you say, how can a site on the internet possibly know what's flying around the air in my office? Well, the services have an agent that you need to download and run locally.

One such service is <a href="http://www.wlanbook.com/iwids/">iWIDS</a>.

Can't say I'm convinced about the advantages of a hosted solution. If you have to install a local agent, is that any easier than just installing one of the software solutions?
<h2>Conclusion</h2>
Given the software options above, it is easy to take one of your old laptops or netbooks and install one of the software solutions.

Then you just need to take a wander around your workplace to see what is really going through the ether.
