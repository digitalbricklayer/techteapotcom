---
title: "It's usually the firewall/anti-virus software"
date: "2008-12-04T14:54:35+00:00"
categories: [General]
tags: []
---

A good case in point today. Software ran just fine on Windows XP but the move to Vista stops the software working.

First conclusion: the software mustn't be compatible with Vista. Wrong! It was nothing to do with Vista. It was the anti-virus software running on top of Vista that was causing the problem.

For reasons best known to BitDefender, it thinks the protocol used by <a href="http://www.sensatronics.co.uk/">Sensatronics</a> for retrieving the temperature readings looks like the Yahoo messenger protocol. The only thing the two have in common is that both use XML over HTTP.

The lesson of the day: always switch off your firewall/anti-virus software when a problem arises. Of course, make sure you switch it back on once a problem has been diagnosed. Most of the problems we diagnose are related to those two culprits one way or the other.
