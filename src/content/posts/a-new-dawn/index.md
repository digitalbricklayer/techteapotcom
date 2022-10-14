---
title: "A new dawn for The Tech Teapot"
date: "2020-10-06"
categories: [General]
tags: [Hugo]
---

The Tech Teapot first started in late 2006. It wasn't called that then, it started out as the blog for [OPENXTRA Ltd.](https://www.openxtra.co.uk/), a company I co-founded all the way back in 2003.

Latterly, I kinda assumed that *The Tech Teapot* was dead. The website was still live but not in its original form. I converted the old Wordpress site to static HTML using the very good [Simply Static](https://www.simplystatic.co/) Wordpress plugin so I couldn't easily modify the site even if I wanted.

Still, here we are in 2020 and I have ported the content over to [Hugo](https://gohugo.io/). Hugo is a (very fast) static site generator in a similar style to [jekyll](https://jekyllrb.com/), perhaps the original static site generator.

## Wordpress to Hugo

The Wordpress version used by the site is several years out of date so I didn't relish making the full stack work again. Consequently, I just uploaded the old Wordpress site database into MariaDB and then wrote a python script to extract the Wordpress posts into Hugo format. The code is below if you're interested. It doesn't do anything very interesting or clever, just reads to posts from a Wordpress database then dumps out the equivalent posts in markdown. The converter does not modify the post content, so embedded HTML markup will be converted straight over. You will need to enable your markdown engine's `unsafe` rendering option for this to work.

{{< gist digitalbricklayer 7d90eb578cd14a13ca03dda469a8692e >}}

A better option may have been to use [dedicated Wordpress plugin](https://github.com/SchumacherFM/wordpress-to-hugo-exporter) to export the site in Hugo format. The problem here is that you need a working Wordpress site in order to install the plugin.

If you want the full list of Hugo migrations, there is a full list [here](https://gohugo.io/tools/migrations/).

## Goals

I started the Hugo conversion project with a couple of goals in mind:

1. I want to create content, and modify the website design in a manner that is closer to writing software than the typical Wordpress workflow. Using software development type tools like Atom, markdown, git and github.
2. I want the site to be lightning fast - already the site scores *95/100* on the [Google PageSpeeds Insight](https://developers.google.com/speed/pagespeed/insights/) tool.

Both of these goals have been achieved. Hugo content development has a nice workflow. When I wish to create a new post, I just type ```hugo new posts/a-new-post.md``` and a new post is created in the content directory under the *posts* folder. I can then use a regular text editor like *emacs* or *Atom* to edit the markdown into a post. If I want to preview the post, I just run ```hugo server``` and a local version of the site will be available at `localhost:1313` by default. When I'm finished, I commit the new post to the local git repo and push it to github. All very easy especially with Atoms built-in git support.

## Hosting your static site

One of the nicer things about static websites is they are very cheap to host. You don't need any powerful databases, you don't need a powerful server. No CMS code is executed when a webpage is served. All the web server does is fetch content from a (hopefully) very fast disk.

{{< figure src="tech-teapot-hugo-compilation.png" title="Compiling the Tech Teapot from the command line" alt="Compiling the Tech Teapot" >}}

There are a number of ways you can host a static site:

1. Self host on your own server or from one of the many web hosting providers. Even a very small virtual server would be capable of hosting quite a large static site. The only software you need is a web server capable of serving static files like [NGINX](https://nginx.org/en/) or [Apache](http://httpd.apache.org/);
2. Host using one of the cloud providers like Microsoft Azure or Amazon AWS. Microsoft have a great [document explaining how to host a static site on Microsoft Azure](https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website). Amazon have a pretty [good document too](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html);
3. Use a dedicated static file host like [Netlify](https://www.netlify.com/) or [Github Pages](https://pages.github.com/).

The first two options are quite complex because you need to set up a CI/CD pipeline to compile your static site and then deploy the result. Not by any means impossible but it does introduce a number of moving parts.

Option three is my happy place of static hosting. It really does not get any easier than this. The dedicated static hosting providers have set up the CI / CD pipeline for you, you just point them at your git repo and they will build it for you. And the best thing? Netlify has a [free tier](https://www.netlify.com/pricing/) (which I'm currently using) and Github Pages is also free so long as your site has an open licence.

All told the conversion process has taken a couple of weeks or so. Not quick by any means, but certainly not too excessive. Much of the process in the later stages was taken with redirecting old pages and the like. If you are starting afresh, then you'll find the process a lot quicker.
