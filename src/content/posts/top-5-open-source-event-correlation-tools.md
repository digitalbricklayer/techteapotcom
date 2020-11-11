---
title: "Top 5 Open Source Event Correlation Tools"
date: "2013-08-07T14:18:26+00:00"
categories: ["Event Correlation"]
tags: []
aliases: [/top-5-open-source-event-correlation-tools/]
---

Networks create lots of events. Sometimes thousands per minute.

Events can be SNMP traps generated by a server rebooting, syslog messages, Microsoft Windows event logs etc.

How do you know which events are important? The ones telling you something important?

That is where <a href="https://en.wikipedia.org/wiki/Event_correlation">event correlation</a> tools come in handy. You feed all of the events into the tool, as well as a description of the structure of your systems, and its job is to flag up the important ones.
<ol>
	<li><a href="http://www.estpak.ee/~risto/sec/">Simple Event Correlator (SEC)</a> - SEC is a lightweight, platform independent event correlation tool written in Perl. Project registered with Sourceforge on 14th Dec 2001.</li>
	<li><a href="http://www.rivermuse.com/">RiverMuse</a> - correlate events, alerts and alarms from multiple sources into a single pain of glass. Open core with a closed enterprise product cousin.</li>
	<li><a href="http://www.jboss.org/drools">Drools</a> - a suite of tools written in Java including <a href="http://www.jboss.org/drools/drools-guvnor.html">Drools Guvnor</a> - a business rules manager, <a href="http://www.jboss.org/drools/drools-expert.html">Drools Expert</a> - rule engine, <a href="http://www.jboss.org/jbpm">jBPM 5</a> - process / workflow, <a href="http://www.jboss.org/drools/drools-fusion.html">Drools Fusion</a> - event processing / temporal reasoning and <a href="http://www.optaplanner.org">OptaPlanner</a> - automated planning.</li>
	<li><a href="https://www.opennms.org/">OpenNMS</a> - whilst not a dedicated event correlation tool, OpenNMS does contain an event correlation engine based upon the Drools engine mentioned above.</li>
	<li><a href="http://esper.codehaus.org/">Esper</a> (and <a href="http://esper.codehaus.org/about/nesper/nesper.html">Nesper</a>) - Esper is a Java based components (Nesper is a .NET based version of Esper) for complex event processing.</li>
</ol>
If you want a survey of event correlation techniques and tools, you could do a lot worse than read Andreas MÃ¼ller's master's thesis titled <a href="ftp://ftp.tik.ee.ethz.ch/pub/students/2009-FS/MA-2009-01.pdf">Event Correlation Engine</a>. It is a few years old, but is still pretty current.