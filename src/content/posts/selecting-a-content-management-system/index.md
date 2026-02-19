---
title: "Selecting a content management system"
date: "2008-11-10T09:00:23+00:00"
aliases: [/selecting-a-content-management-system/]
description: "One of the great discoveries I made whilst writing this blog has been the ease with which I can create posts using Wordpress as the content management."
---

One of the great discoveries I made whilst writing this blog has been the ease with which I can create posts using Wordpress as the content management system (CMS). It started good and it just keeps on getting better.

{{< gallery match="images/*"
            sortOrder="desc"
            rowHeight="150"
            margins="5"
            resizeOptions="600x300 q90 Lanczos"
            previewType="none"
            embedPreview="true" >}}

I'd love to be able to update content on the rest of the site just as easily. Unfortunately, as things stand at the moment, updating the site means wading waste deep in PHP. All changes to the website need to go through either myself or Dean, slowing things down considerably.

In order to ease the burden of creating content we've decided to implement a CMS across the entire site. So far the evaluation list looks like this:

- ~~[Plone](http://plone.org/) Python/Zope based CMS~~;
- ~~[Drupal](http://drupal.org/) full power CMS with a full power learning curve~~;
- ~~[Joomla](http://www.joomla.org/)~~
- ~~[Wordpress](http://wordpress.org/) can't be beaten as a blogging platform but how well does it work as a vanilla CMS?~~
- [Typo3](http://typo3.com/) - a quirky full power CMS with versioning and workspaces. My fave so far;
- [MODx](http://modxcms.com/) - a bare bones CMS that is Dean's favourite;
- [OpenCms](http://www.opencms.org/) - full featured Java based CMS. Kinda like Typo3 without the goofiness.

I will let you know how the evaluation goes. One thing I have noticed with open source CMS, the documentation is king. The Typo3 documentation is the best of the lot that I've seen so far. With large complicated systems like CMS you need a way to ease yourself into the software. Surprisingly, only Typo3 has a simple tutorial to setting up your first site for the most recent release. Drupal is an incredibly powerful tool but the documentation needs a lot of work.

**Update 1**: Added OpenCms, dropped Drupal, Joomla and Wordpress.

**Update 2**: Forgot about Plone...not suitable because we'd not have enough control.
