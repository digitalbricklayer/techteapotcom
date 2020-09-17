---
title: "Lessons learnt writing open source software"
date: "2008-01-09T18:42:40+00:00"
categories: []
tags: []
---

I don't suppose many of you know my dirty little secret: I'm a failure. There I've said it. I founded an <a href="http://www.logfilter.org/">open source project</a> and failed miserably. Sorry! Please wait there whilst I go outside to self-flagellate...that's better the open source gods have been salved.

Back in 2005 I knew there was a tool missing from <a href="http://www.apache.org/">Apache</a> for ad-hoc searches on access logs. Now, I mean a tool for performing ad-hoc searches not the programmable type. You can use <a href="http://www.gnu.org/software/gawk/manual/gawk.html">AWK</a>, a very flexible text manipulation tool, for that.

What I wanted was a tool for finding each entry in my Apache access log of all requests for a specific page or from a specific referrer. Something quick and easy without the need to learn complex commands. Quite often I find something in <a href="http://awstats.sourceforge.net/">AWStats</a> and I want to check it out in the raw log.

You're probably thinking, why not just use <a href="http://www.gnu.org/software/grep/">grep</a>? Well, grep doesn't work very well in access logs. Say you want to find all accesses for a particular page. Greping will find all page accesses but it will also include all pages in which the page is the referrer (for images and the like referenced by the page) too. So, you will still have to sift through all of the other accesses to find what you're looking for.

<a href="http://www.logfilter.org/">Logfilter</a> treats each field separately so you can search on a specific field, or multiple fields.

Unfortunately, I suspect that a combination of the design goals and project scope seeded the project's failure.

I may have been scratching my own itch, but how many others have the same one? The scratchiness of a problem is likely to be the main factor that makes a project succeed. If there is not commonality of need, then a community is unlikely to form to scratch the common itch.

The second problem comes in the form of the design goal. A tool that can be used quickly and easily without complex options necessarily limits where you can go with the tool. Every time I thought about adding a new feature I knew that the goal would be compromised because it wouldn't have been simple to use any more.

In my experience, "open" development isn't that much different from closed development when there's just the one of you. Open development, when performed to an audience of one, is quite like closed development. Given two eyeballs, all bugs are deep to paraphrase <a href="http://www.ibiblio.org/esrblog/">Eric S Raymond</a>. :)
