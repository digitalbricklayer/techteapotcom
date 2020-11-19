---
title: "Handy scripts for testing your Hugo website"
date: 2020-11-18T10:09:19Z
categories:
  - General
tags:
  - Hugo
---

Whilst developing this website and porting it over to Hugo, I have written a few handy scripts to help me test the site for errors. I am going to present the scripts with a little explanation about what each script achieves so maybe you can use them too.

<!--more-->

Whilst my site is developed using Hugo, the scripts themselves just expect to be able to connect to a website. As such, the scripts are not tied to Hugo in any way. If you are not using Hugo on your site, you may still get some value from the scripts.

## checklinks

A script for validating all of the internal links in the website as well as images and the like. The script uses the `linkchecker` tool to validate the links.

{{< figure src="images/checklinks-output.png#center"
           alt="Output of checklinks command"
           link="images/checklinks-output.png"
           caption="Output of the checklinks.sh script" >}}

The script first starts up the site using docker and a Hugo container. It then waits for the server to be ready and then starts the `linkchecker` tool. The script is quite slow so I tend not to run it too often but it is invaluable to validate all of those pesky internal links.

The script also shows how to check external links as well.

{{< gist digitalbricklayer f46b889d55a7e17ade3672f9698b3b65 >}}

The script will fail cleanly if `linkchecker` is missing. I would like to improve the script by removing the dependency on the `linkchecker` tool. Or at least place the dependency in a more manageable docker container. I will update this post when I have managed to dockerise `linkchecker`.

## checkredirects

This website has been around since late 2006 in one guise or another. In that time it has accumulated quite a lot of page moves and the like. The `checkredirects.sh` script checks to make sure that each page exists.

{{< figure src="images/checkredirects-output.png#center"
          alt="Output of checkredirects command"
          link="images/checkredirects-output.png"
          caption="Output of the checkredirects script" >}}


Each line in the redirect file looks like this:
```
/xyz/ /post/xyz/
```
The first part is the old link, the second part is the new link. In other words, when the web server sees the first URL it sends the visitor to the second URL. The [redirect file is specific to the Netlify hosting provider](https://docs.netlify.com/routing/redirects/#syntax-for-the-redirects-file) though it does look a lot like the nginx redirect format so I assume that is where it comes from.

{{< gist digitalbricklayer 719fe73f554208b648dd6129364fc84c >}}

## rundevserver

When writing new content or updating the website design, it can be helpful to see your changes immediately. The `rundevserver.sh` script runs the built-in Hugo server in development mode.

{{< figure src="images/rundevserver.png#center"
          alt="Output of rundevserver command"
          link="images/rundevserver.png"
          caption="Output of the rundevserver script" >}}

One of the nice features of the built-in server in development mode is that it can keep track of changes whilst you are doing them and then update itself and your browser. It isn't completely foolproof, but it works pretty well.

>server_1  | Change detected, rebuilding site.<br>
>server_1  | 2020-11-19 14:05:05.839 +0000<br>
>server_1  | Source changed "/src/content/posts/handy-hugo-website-test-scripts/index.md": WRITE<br>
>server_1  | Total in 415 ms

You will notice that there are two parts to running the development server. One part is the `docker-compose.yml` configuration file. This file tells docker compose what services it needs to run. Whilst the Hugo server only needs a single service, you could have say a web server plus a database server in the configuration file and then docker compose would then start both services for you. The second part is a very simple script that executes `docker-compose`.

To stop the server, you simply press `CTRL C` in the shell where the script is executing.

{{< gist digitalbricklayer b8508388f90b640dc5c2eece2327d952 >}}

## checksitemap

Each website usually has a sitemap that tells the search engines about all of the content on the site as well as when the content was last changed and how often the content is likely to change.

One big error with sitemaps is to list content in the sitemap that does not exist on the website. You'd think that would be difficult to achieve on a Hugo based website but you'd be wrong. I definitely managed it when I first converted this site over to Hugo.

{{< gist digitalbricklayer a245948b7d6960330a7dda9a11692a32 >}}

The script reads the sitemap from the website and then validates each link in turn. If a link is missing on the site, the script prints it out.

## Conclusion

Some of these scripts will save you a ton of time. I can particularly recommend the `checklinks.sh` script. It is an absolute life saver when editing your site. It would take days to manually check all of the links on your site, but this little script can do the whole lot in a few minutes.
