---
title: "Firefox RSS subscription bug"
date: "2008-12-05T09:00:16+00:00"
categories: [General]
tags: [firefox]
aliases: [/firefox-rss-subscription-bug/]
---

I've recently noticed a bug in Firefox 3. If you subscribe to a lot of blogs you've probably noticed the RSS symbol on the right hand side inside your Firefox address bar.

{{< figure src="tech-teapot-signup1.png" title="The RSS signup button in the address bar" alt="The RSS signup button in the address bar" >}}

The feature is very useful because, when you go to a blog or a news page, you can quickly and easily subscribe via your feed reader.

There is a bug in the Firefox 3 implementation at present when more than one feed is available. Wordpress by default is able to handle RSS 0.92, RSS 2.0 and Atom feeds. These feeds are advertised to the world via a HTML tag inside each web page. When all three feeds are advertised, as in the image below, when I click on the RSS icon in the Firefox address bar nothing happens.

{{< figure src="alternate-links.png" title="All alternate feed links in place" alt="All alternate feed links in place" >}}

When I remove all but one of the feed links, everything works as expected.

{{< figure src="alternate-links-commented-out.png" title="All but one feed link commented out" alt="All but one feed link commented out" >}}
