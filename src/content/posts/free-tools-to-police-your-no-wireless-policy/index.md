---
title: 'Free Tools to Police your "no wireless" Policy'
date: "2013-07-31T13:33:16+00:00"
categories: [Security, Wireless]
tags: []
aliases: [/free-tools-to-police-your-no-wireless-policy/]
---

If you don't have a wireless network and you do not need to validate that you *don't* have a wireless network, you can blithely ignore what I'm going to say here.

However, if you don't have a wireless network, and you need to ensure that you don't, then this post may be of some interest to you.

There are a number of reasons why you have a *no wireless* policy, from worries about security to compliance issues.

In our case it is a compliance issue. We process credit cards on our website and consequently have to be PCI DSS compliant.

The PCI DSS wireless network security requirements are quite onerous, especially for small / medium sized companies. The mere thought of implementing a wireless network here, whilst adhering to the PCI DSS requirements, brings me out in a cold sweat.

That's why we have a *no wireless* policy. It's all very well having a policy, but how do you police it?

Tools are available, like dedicated 24/7 [wireless intrusion detection systems](https://en.wikipedia.org/wiki/Wireless_intrusion_prevention_system), to help you enforce your *no wireless* policy, but if you don't have the budget, what other options are available?

## Software Based Solutions

If you are running Microsoft Windows then the [netsh](https://en.wikipedia.org/wiki/Netsh) command is very handy. If you type something like: `netsh wlan show networks mode=bssid`. `netsh` will list all of the wireless networks available through you wireless network. `netsh` is supported in Microsoft Windows 2000+ but wireless support wasn't added until Windows Vista.

Then there is [NetStumbler](http://www.netstumbler.com/), a free tool for discovering wireless access points among other things. Unfortunately, netstumbler hasn't been updated for quite a while and doesn't work on more recent versions of Microsoft Windows. There are alternatives, like [inSSIDer](http://www.metageek.net/products/inssider/) (supports Microsft Windows, Linux &amp; OS X), [iStumbler](http://www.istumbler.net/) (supports OS X), [KISMET](http://www.kismetwireless.net/) (supports Linux and *BSD) and [Wigle Wifi](http://wigle.net/) has an [Android app](https://play.google.com/store/apps/details?id=net.wigle.wigleandroid) too (and a rather [impressive WiFi network database](http://wigle.net/gps/gps/Map/onlinemap2/) to boot).

## Hosted Solutions

One of the recent developments in wireless intrusion detection has been the recent spate of internet based services. Aha I hear you say, how can a site on the internet possibly know what's flying around the air in my office? Well, the services have an agent that you need to download and run locally.

One such service is [iWIDS](http://www.wlanbook.com/iwids/).

Can't say I'm convinced about the advantages of a hosted solution. If you have to install a local agent, is that any easier than just installing one of the software solutions?

## Conclusion

Given the software options above, it is easy to take one of your old laptops or netbooks and install one of the software solutions.

Then you just need to take a wander around your workplace to see what is really going through the ether.
