---
title: "Lessons learnt from the failure of TimeTag"
date: "2010-01-15T14:02:40+00:00"
tags: [PowerShell]
aliases: [/lessons-learnt-from-the-failure-of-timetag/]
---

I have a confession to make: I've developed a [failed open source project](https://openxtra.org/project/timetag)! There I've said it, it's now public knowledge and I can hang my head in shame... lead me to the village stocks so you can all throw rotting vegetables at me.

Happily, I don't feel like that. Failure is, well, no big deal. Of course it does sting a little bit that I wasted an awful lot of time developing the software. What could I have done with the time had I not written the 11,184 lines of code [Ohloh says I wrote](http://www.ohloh.net/p/timetag/analyses/latest)? Well, I'll never know, but...

After having a failure, any failure, it is quite healthy to take a look at it and try to figure out what mistakes were made and see if there are any lessons to be learnt.

The main mistake was to write TimeTag at all. Perhaps it would help to explain why I wrote TimeTag in the first place.

TimeTag was intended to kick start an open source network management / systems administration software ecosystem based around the PowerShell environment. (If you don't know what PowerShell is, there is a [good explanation here](http://www.developer.com/lang/other/article.php/3674886/An-Introduction-To-PowerShell.htm).)

If you want to build an ecosystem like the Linux network management / sys admin toolset, you are going to need the basic tools available to build upon. The Linux ecosystem has a [few hub projects upon which most of the rest of the ecosystem build]({{< ref "/posts/hub-projects-in-open-source-network-management/index.md" >}}). It stands to reason that if you don't have the hub tools, the ecosystem won't take root.

So that's where TimeTag came into the picture, it was my feeble attempt to build one of the hub tools for the PowerShell environment. The problem is that the Linux ecosystem didn't develop in the way I envisaged the PowerShell environment developing.

RRDTool is the considerably more successful cousin of TimeTag. RRDTool was not written before the tools that depend upon it. Tobi Oetiker, the original author of RRDTool, also created the MRTG project. MRTG is, if not the first, then pretty close to the first, open source network monitoring application. The MRTG project originally had a very simple time series database (a mechanism for storing readings). As time went by, and MRTG was used on ever larger networks, the simple time series database didn't scale well. RRDTool was written to provide a scalable time series database to cope the ever increasing demands placed upon MRTG.

So, rather than building one of the hub projects (a RRDTool equivalent) I should have started by building a MRTG equivalent for PowerShell instead. Then, if that had been successful, I should have written TimeTag. Instead of founding a project it would probably have been better to join the [PolyMon project](http://www.codeplex.com/polymon) as a developer and then extracted the time series database into PowerShell.

Ain't hindsight a wonderful thing?!

**Update**: the [TimeTag repo](http://github.com/openxtra/TimeTag) is now hosted on Github. Feel free to fork.
