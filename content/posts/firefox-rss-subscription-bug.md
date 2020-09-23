---
title: "Firefox RSS subscription bug"
date: "2008-12-05T09:00:16+00:00"
categories: [General]
tags: [firefox]
---

I've recently noticed a bug in Firefox 3. If you subscribe to a lot of blogs you've probably noticed the RSS symbol on the right hand side inside your Firefox address bar.

[caption id="attachment_1102" align="aligncenter" width="300" caption="The RSS signup button in the address bar"]<a href="http://techteapot.com/wp-content/uploads/2008/12/tech-teapot-signup1.png"><img class="size-medium wp-image-1102" title="The RSS signup button" src="http://techteapot.com/wp-content/uploads/2008/12/tech-teapot-signup1.png" alt="The RSS signup button in the address bar" width="300" height="122" align="center" /></a>[/caption]

The feature is very useful because, when you go to a blog or a news page, you can quickly and easily subscribe via your feed reader.

There is a bug in the Firefox 3 implementation at present when more than one feed is available. Wordpress by default is able to handle RSS 0.92, RSS 2.0 and Atom feeds. These feeds are advertised to the world via a HTML tag inside each web page. When all three feeds are advertised, as in the image below, when I click on the RSS icon in the Firefox address bar nothing happens.

[caption id="attachment_1103" align="alignnone" width="300" caption="All alternate feed links in place"]<a href="http://techteapot.com/wp-content/uploads/2008/12/alternate-links.png"><img class="size-medium wp-image-1103" title="All alternate feed links in place" src="http://techteapot.com/wp-content/uploads/2008/12/alternate-links.png" alt="All alternate feed links in place" width="300" height="16" align="center" /></a>[/caption]

When I remove all but one of the feed links, everything works as normal.

[caption id="attachment_1104" align="aligncenter" width="300" caption="All but one feed link commented out"]<a href="http://techteapot.com/wp-content/uploads/2008/12/alternate-links-commented-out.png"><img class="size-medium wp-image-1104" title="All but one feed link commented out" src="http://techteapot.com/wp-content/uploads/2008/12/alternate-links-commented-out.png" alt="All but one feed link commented out" width="300" height="15" align="center" /></a>[/caption]
