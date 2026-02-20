---
title: "How to Mass Convert Hugo Posts to Post Bundles"
description: "A simple python script for converting your Hugo posts into post bundles."
lead: "A simple Python script for converting Hugo posts into post bundles to make your posts appear in alphabetical order and therefore speed code navigation."
date: 2022-10-24T11:49:46+01:00
thumbnail: "/posts/how-to-mass-convert-post-to-post-bundle/images/python-logo.png"
tags: [Hugo, Python]
---

<!--more-->

One of the big problems with running a Hugo website with hundreds of posts is finding a post when you have both post bundles and regular posts. Your IDE will display both in alphabetical order separately with the post bundles at the top. This can make finding your desired post quite time consuming.

One solution is to convert all posts into post-bundles. That way all posts are listed in alphabetical order in a single list. This speeds up navigating to a post by quite a bit.

One note of caution is that compilation time will go up slightly. Not really a problem on my blog but if you already have problems with site compilation speed, this will only make things worse.

The script works by taking each post for example `content/posts/an-example-post.md` and creating a directory called `content/posts/an-example-post` and then moving and renaming the markdown file to `content/posts/an-example-post/index.md`.

A big upside with post bundles vs regular markdown files is that you can keep the post images in the same location as the post. Instead of having a central dumping ground for images, each post hosts its own images making the images much easier to manage.

{{< gist digitalbricklayer 9e311d6481a7ea20cfdc48c05ec8dc6f >}}

To run the script, simply copy it locally. You will need to modify the directory where the script finds the posts. Make the change on line `18` where it says `src/content/posts`. You probably need to change it to `content/posts`. Then run the script from your site's root directory.

Have fun! :wink:

**P.S.** make sure you back everything up **before** running the script :smile:
