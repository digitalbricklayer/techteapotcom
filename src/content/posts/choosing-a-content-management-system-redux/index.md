---
title: "Choosing a content management system redux"
date: "2009-03-13T14:27:30+00:00"
tags: ["CMS", drupal]
aliases: [/choosing-a-content-management-system-redux/]
---

I blogged about [choosing a content management system]({{< ref "/posts/selecting-a-content-management-system/index.md" >}}) and we've finally managed to deploy the resulting system. It would be fair to say that choosing a content management system is a nightmare. And, anybody else's experience probably won't help you very much unless you share the same set of requirements.

Our requirement was largely shaped by the e-commerce system we run on our main website. It is a big blob of a [Java](http://www.java.com/) system running under [JBoss](http://www.jboss.org/) all front ended by Apache.

That's why I don't think there is much for anybody else to take away from our experience. Had we not had to contend with the JBoss hosted system our choice would have been completely different.

In the end we went with [Drupal](http://drupal.org/) as our CMS of choice, not because I particularly like it, but because it was the best of the choices we could successfully integrate into our system.

My favourite was [OpenCMS](http://www.opencms.org/), but as a Java based system, it would have had to be integrated into JBoss and we couldn't find a satisfactory way of achieving that. OpenCMS works exactly the way I would expect a CMS to work. It removes all of the pain out of managing a site and is flexible in how to manage your content.
