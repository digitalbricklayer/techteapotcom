---
title: "SpamAssassin just works..."
date: "2007-09-27T09:00:29+00:00"
aliases: [/spamassassin-just-works/]
---

{{< figure src="arrowlogo.png#floatright" alt="SpamAssassin Logo" >}}

One of the great tools we have discovered recently has been [Apache SpamAssassin](http://spamassassin.apache.org/), an open source spam identifier.

I've yet to see a genuine email that SpamAssassin has marked as spam. It doesn't catch all of the spam emails, but it does get all of the really obvious ones.

We run SpamAssassin in conjunction with sendmail on Linux. You can get SpamAssassin to work for a wide variety of [operating systems and email servers](http://wiki.apache.org/spamassassin/UsingSpamAssassin).

Now we've run it for a while, I've enough confidence in SpamAssassin to just delete all of the messages it identifies as spam. That way, we won't even have to see it being moved to the spam folder.

The only thing to watch out for is the CPU load a full rule set can cause. If your server is getting on a bit then it may struggle with a full rule set. Though, the server was also serving as the web server with associated databases. So, it may have coped had it not had to deal with all of its extra duties. We now have a dual core processor as our internet server and it copes very well with both the websites and SpamAssassin with full rule set.

Last year spam was a big problem for us...SpamAssassin has tamed the problem considerably. If you are soldiering on with a big spam problem, don't. There are plenty of good solutions out there that can help.
