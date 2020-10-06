---
title: "A new dawn for The Tech Teapot"
date: "2020-10-05"
categories: [General]
tags: [Hugo]
draft: true
---

The Tech Teapot first started in late 2006. It wasn't called that then, it started out as the blog for [OPENXTRA Ltd.](https://www.openxtra.co.uk/), a company I co-founded all the way back in 2003.

Latterly, I kinda assumed that The Tech Teapot was dead. The website was still live but not in its original form. I converted the old Wordpress site to static HTML using the very good [Simply Static](https://www.simplystatic.co/) Wordpress plugin so I couldn't easily modify the site even if I wanted.

Still, here we are in 2020 and I have ported the content over to [Hugo](https://gohugo.io/). Hugo is a (very fast) static site generator in a similar style to [jekyll](https://jekyllrb.com/), perhaps the original static site generator.

## Wordpress to Hugo

The Wordpress version used by the site is several years out of date so I didn't relish making the full stack work again. Consequently, I just uploaded the old Wordpress site database into MariaDB and then wrote a python script to extract the Wordpress posts into Hugo format. You can find the script [here](https://github.com/digitalbricklayer/hugo-wordpress-import). It isn't much but it did most of the donkey work.

A better option may have been to use [dedicated Wordpress plugin](https://github.com/SchumacherFM/wordpress-to-hugo-exporter) to export the site in Hugo format. The problem here is that you need a working Wordpress site in order to install the plugin.

If you want the full list of Hugo migrations, there is a full list [here](https://gohugo.io/tools/migrations/).

## Goals

I started the Hugo conversion project with a couple of goals in mind:

1. I want to create content, and modify the website design in a manner that is closer to writing software than the typical Wordpress workflow. Using software development type tools like Atom, markdown, git and github.
2. I want the site to be lightning fast - already the site scores *95/100* on the [Google PageSpeeds Insight](https://developers.google.com/speed/pagespeed/insights/) tool.

Both of these goals have been achieved. Hugo content development has a nice workflow. When I wish to create a new post, I just type ```hugo new posts/a-new-post.md``` and a new post is created in the content directory under the *posts* folder. I can then use a regular text editor like *emacs* or *Atom* to edit the markdown into a post. If I want to preview the post, I just run ```hugo server``` and a local version of the site will be available at [localhost:1313](http://localhost:1313/) by default. When I'm finished, I commit the new post to the local git repo and push it to github. All very easy especially with Atoms built-in git support.

## Hosting your static site

One of the nicer things about static websites is they are very cheap to host. You don't need any powerful databases, you don't need a powerful server. No CMS code is executed when a webpage is served.

{{< figure src="/images/tech-teapot-hugo-compilation.png#center" title="Compiling the Tech Teapot from the command line" alt="Compiling the Tech Teapot" >}}

All of the Hugo code is executed when the website is compiled into static web pages. The web server receives a request from your browser, the web server then chooses which file to pick up off the disk and send it as quickly as possible back to the browser. Contrast that with what happens with a typical CMS. You request a page in your browser, the web server then executes some code on the server typically PHP. The code then decides what content is required, and retrieves it from the database. Multiple requests to the database will likely be required for each page. The web server then returns the page when it has been processed properly back to the browser. Much of the above can be avoided by the user of a web cache which will likely be as fast or even faster than a static site if the cache is warm i.e. the page is already in the cache. But, it is quite complex to get all of those pieces working together. With Hugo the complexity is confined to ensuring the compiled output, the website is as your desire it. Deployment is relatively simple.
