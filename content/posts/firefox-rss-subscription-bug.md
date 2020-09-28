---
title: "Firefox RSS subscription bug"
date: "2008-12-05T09:00:16+00:00"
categories: [General]
tags: [firefox]
---

I've recently noticed a bug in Firefox 3. If you subscribe to a lot of blogs you've probably noticed the RSS symbol on the right hand side inside your Firefox address bar.

{{< figure src="/images/uploads/2008/12/tech-teapot-signup1.png" width="300" height="122" title="The RSS signup button in the address bar" alt="The RSS signup button in the address bar" link="/image/uploads/2008/12/tech-teapot-signup1.png" >}}

The feature is very useful because, when you go to a blog or a news page, you can quickly and easily subscribe via your feed reader.

There is a bug in the Firefox 3 implementation at present when more than one feed is available. Wordpress by default is able to handle RSS 0.92, RSS 2.0 and Atom feeds. These feeds are advertised to the world via a HTML tag inside each web page. When all three feeds are advertised, as in the image below, when I click on the RSS icon in the Firefox address bar nothing happens.

{{< figure src="/images/uploads/2008/12/alternate-links.png" width="300" height="122" title="All alternate feed links in place" alt="All alternate feed links in place" link="/image/uploads/2008/12/alternate-links.png" >}}

When I remove all but one of the feed links, everything works as normal.

{{< figure src="/images/uploads/2008/12/alternate-links-commented-out.png" width="300" height="122" title="All but one feed link commented out" alt="All but one feed link commented out" link="/image/uploads/2008/12/alternate-links-commented-out.png" >}}
