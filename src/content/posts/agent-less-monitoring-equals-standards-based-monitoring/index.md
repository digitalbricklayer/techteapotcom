---
title: "Agent less monitoring equals standards based monitoring"
date: "2007-02-05T14:17:23+00:00"
categories: ["Network Management"]
aliases: [/agent-less-monitoring-equals-standards-based-monitoring/]
---

Why is *agent less* network monitoring called agent less? An agent is required! Pretty confusing really. I don't suppose *non-proprietary agent* has quite the same ring to it.

What agent less really means is proprietary agent less. Not quite the same thing :smile:

So, if you are using [SNMP](https://en.wikipedia.org/wiki/Simple_Network_Management_Protocol) or WMI or whatever then you are performing agent less monitoring.

The main benefit to not using proprietary agents are that lots of different tools can talk SNMP/WMI etc but the chances are that only the proprietary vendor supports their own agent. Also, chances are the proprietary agent may or may not be as rigorously tested as the standards based agents like [net-snmp](http://net-snmp.sourceforge.net/) for instance.
