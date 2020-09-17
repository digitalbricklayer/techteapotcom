---
title: "Agent less monitoring equals standards based monitoring"
date: "2007-02-05T14:17:23+00:00"
categories: []
tags: []

Why is <em>agent less</em> network monitoring called agent less? An agent is required! Pretty confusing really. I don't suppose <em>non-proprietary agent</em> has quite the same ring to it.

What agent less really means is proprietary agent less. Not quite the same thing :)

So, if you are using <a href="http://en.wikipedia.org/wiki/Simple_Network_Management_Protocol">SNMP</a> or WMI or whatever then you are performing agent less monitoring.

The main benefit to not using proprietary agents are that lots of different tools can talk SNMP/WMI etc but the chances are that only the proprietary vendor supports their own agent. Also, chances are the proprietary agent may or may not be as rigorously tested as the standards based agents like <a href="http://net-snmp.sourceforge.net/">net-snmp</a> for instance.




