---
title: "Everything Works as Expected but Doesn't Work How I Want"
date: "2013-08-01T10:49:05+00:00"
categories: ["Event Correlation"]
tags: []
aliases: [/everything-works-as-expected-but-doesnt-work-how-i-want/]
---

At the end of last week one of our sites barfed.

Nothing particularly unusual in that. The database process went rogue and stopped responding to queries.

Once the problem was detected, restarting the process solved the problem very easily.

The rather unfortunate side effect was that <a href="http://code.google.com/p/elmah/">Elmah</a> sent 10,844 emails to <a href="https://www.uservoice.com/">UserVoice</a>, which then created the corresponding number of issues.

That's <em>not</em> very helpful.

What is interesting is how dumb all of the tools actually are in the chain. Elmah detects a problem so it sends an email to our UserVoice account. UserVoice receives the email and creates an issue for each one.

Its works precisely how it is supposed to. Unfortunately, how it is supposed to work isn't really very useful.

What would have been useful is something that sits in the middle of all of this and figures out what is useful for me to know. Takes those 10 thousand odd emails and says, OK I see what's going on here, I'll create one issue on the issue tracker, and then tell me about the problem. Then when it sees more similar emails, ignore them or summarise them once a day.

Effectively, what I've described is a cloud based event correlation tool. If you know of such a tool, please leave a comment.

PS I have to manually delete every one of those 10,844 issues in UserVoice because there isn't a mechanism to delete a page full at a time. The developers at UserVoice are really sadists. Pitty my poor hands after this. :(
