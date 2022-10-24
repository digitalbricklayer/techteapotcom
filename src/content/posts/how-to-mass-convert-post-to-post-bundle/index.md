---
title: "How to Mass Convert Hugo Posts to Post Bundles"
description: "A simple python script for converting your Hugo posts into post bundles."
date: 2022-10-24T11:49:46+01:00
thumbnail: "/images/python-logo.png"
---

A simple Python script for converting Hugo posts into post bundles to make your posts appear in alphabetical order and therefore speed code navigation easier.

<!--more-->

One of the big problems with running a Hugo website with hundreds of posts is finding a post when you have both post bundles and regular posts. Your IDE will display both in alphabetical order separately with the post bundles at the top. This can make finding your desired post quite time consuming.

One solution is to convert all posts into post-bundles. That way all posts are listed in alphabetical order in a single list. This speeds up navigating to a post by quite a bit.

One note of caution is that compilation time will go up slightly. Not really a problem on my blog but if you already have problems with site compilation speed, this will only make things worse.

The script works by taking each post for example `content/posts/an-example-post.md` and creating a directory called `content/posts/an-example-post` and then moving and renaming the markdown file to `content/posts/an-example-post/index.md`.

A big upside with post bundles vs regular markdown files is that you can keep the post images in the same location as the post. Instead of having a central dumping ground for images, each post hosts its own images making the images much easier to manage.

```python
# Convert non-bundle posts into bundles

# this function is taken from the accepted answer post here: https://stackoverflow.com/questions/229186/os-walk-without-digging-into-directories-below
def walklevel(some_dir, level=1):
    some_dir = some_dir.rstrip(os.path.sep)
    assert os.path.isdir(some_dir)
    num_sep = some_dir.count(os.path.sep)
    for root, dirs, files in os.walk(some_dir):
        yield root, dirs, files
        num_sep_this = root.count(os.path.sep)
        if num_sep + level <= num_sep_this:
            del dirs[:]

import os

non_bundled_posts = []

# find all of the non-bundled posts
for root, dirs, files in walklevel("src/content/posts", 0):
    for file in files:
        if not file.startswith("_index") and file.endswith(".md"):
             non_bundled_posts.append(file)

assert(non_bundled_posts)

# convert each non-bundled post into a post bundle
for markdown_file in non_bundled_posts:
    from pathlib import Path
    markdown_path = os.path.join(root, markdown_file)
    markdown_file_wout_extension = Path(markdown_file).stem
    bundle_dir = markdown_file_wout_extension

    # Create the bundle directory
    full_bundle_dir = os.path.join(root, bundle_dir)
    os.mkdir(full_bundle_dir)

    # Move the non-bundle markdown file into the bundle directory
    x = os.path.join(full_bundle_dir, "index.md")
    print("src:", markdown_path)
    print("dest:", x)
    os.rename(markdown_path, x)
```

To run the script, simply copy it locally. You will need to modify the directory where the script finds the posts. Make the change on line `18` where it says `src/content/posts`. You probably need to change it to `content/posts`. Then run the script from your site's root directory.

Have fun! :wink:

**P.S.** make sure you back everything up **before** running the script :smile:
