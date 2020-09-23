---
title: "Back to Windows 3 with Web 2.0"
date: "2007-10-04T12:15:48+00:00"
categories: [General]
tags: [AJAX, "operating systems", "system reliability", "web browsers"]
---

<img style="border-left: 4px solid white;" src="http://techteapot.com/wp-content/uploads/2007/10/browser-look.jpg" alt="" align="right" />

With the move to more applications being accessed via the web browser I am becoming more and more reminded of the bad old days under Windows 3.

In the bad old days, if <strong>one application died it took all of your other applications down with it</strong> <em>and</em> any unsaved data as well.

Along came modern 32 bit <a href="http://en.wikipedia.org/wiki/Operating_system">operating systems</a> like <a href="http://en.wikipedia.org/wiki/Windows_nt">Windows NT</a> and the problem largely disappeared. Each application was protected from the behaviour of other applications. <strong>Gone were the days when a badly behaved program could cause you data loss</strong>.

The <strong>assumption that each application will have its own protected address space no longer holds true</strong>. Many applications are delivered through the web via the web browser. The web browser is a single application, but each browser window can have its own application. Problems in one instance of the browser will take out all of the others.

I use web applications routinely. This blog is written in WordPress, a web application. I have been updating prices for products on our online shop, again using a web application. In fact most of my working day is spent using web applications of one sort or another.

Our e-commerce application is a resource hog, using bucketfuls of <a href="http://en.wikipedia.org/wiki/Ajax_(programming)">AJAX</a>. When it does hog out, all of my other web applications become inoperable. When the browser crashes, thankfully it doesn't happen very often, all browser windows and tabs close down.

We <strong>need a new generation of operating systems that will protect each instance of an application from every other instance</strong>, not just one application from another application.

The <strong>central assumption that each application will be delivered to the user as a separate executable no longer holds water</strong>. Operating systems must change to embrace the new reality.

So <strong>come on Microsoft, Apple &amp; Linux give us a next generation operating system</strong> ready for the <a href="http://en.wikipedia.org/wiki/Web_2">Web 2.0</a> world.

<strong>Update April 2015</strong>: turns out the solution was to make each browser window or tab into a seperate process.
