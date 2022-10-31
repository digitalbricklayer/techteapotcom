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
    destination_path = os.path.join(full_bundle_dir, "index.md")
    os.rename(markdown_path, destination_path)
