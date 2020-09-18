---
title: "Give me a boost Boost"
date: "2006-11-28T11:16:34+00:00"
categories: []
tags: []
---

I've not been programming full time since the end of 2002. Ah, those were the days...strong coffee and err <a href="http://web.archive.org/web/20150202123346/http://www.rsi.org.uk/">RSI</a> a plenty :)

I am just about to embark on a heavy duty bit of programming, likely to last a few intense months. I'll fill you in about the reason why in another post.

Anyway, I've just been having a peek at all of the new <a href="http://en.wikipedia.org/wiki/C++">C++</a> goodies and my, haven't the <a href="http://www.open-std.org/jtc1/sc22/wg21/">C++ standards</a> people been busy. I don't know why, but I am struggling with the new features. It doesn't seem to matter how many books I read about generic programming, none do a good job explaining the new features.

Take a look at the <a href="http://www.boost.org/">Boost library</a>. C++ is finally getting a library as high quality and broad in scope as many of the <a href="http://en.wikipedia.org/wiki/Scripting_programming_language">scripting languages</a> like <a href="http://www.perl.org/">Perl</a> and <a href="http://www.python.org/">Python</a> have had for some time. The main problem is the steep learning curve. It would be nice to play around with the various <a href="http://www.boost.org/libs/libraries.htm">sub-libraries</a> contained inside Boost, but time is always at a premium.

So, what's the answer. Well, pragmatically I'm going to ignore all of those nice new features. Learning whilst in production mode is one of the more stressful things you can do in programming. Also, the resulting code is rarely of high quality.

As a <a href="http://www.pragmaticprogrammer.com/">pragmatic programmer</a> I am  going to write the code in a style I already know with a liberal sprinkling of <a href="http://www.extremeprogramming.org/rules/unittests.html">unit tests</a>. That way, I can <a href="http://www.refactoring.com/">refactor</a> the code to my hearts content with the firm knowledge that when I break something I will know immediately.