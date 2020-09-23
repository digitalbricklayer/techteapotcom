---
title: "Real time log visualization using glTail.rb"
date: "2007-10-19T14:38:03+00:00"
categories: [General]
tags: []
---

<img src="http://techteapot.com/wp-content/uploads/2007/10/gltail-partial.gif" alt="Partial screenshot of glTail.rb in action" align="right" style="border-left:solid 4px white" />

Hat tip to <a href="http://dougal.gunters.org/about-this-site">Dougal Campbell</a> over at <a href="http://dougal.gunters.org/">Geek Ramblings</a> for finding this.

Just occasionally you come across a tool that really blows you away...that tool is <a href="http://fudgie.org/">glTail.rb</a>!

Getting an instant idea for how your web server is performing can be a difficult task. One way to do that is to use a command like:

<code>tail -f &lt;log file&gt;</code>

The main problem with this is that the output is darn hard to make any sense out of.

That's where glTail.rb comes into its own. You get a nice graphical visualization of your log file in real time. You can even stream the log file over SSH so that you don't have to load the system with the graphics processing.

glTail.rb won't replace your regular analytics package, but it will provide a nice supplementary tool that's not too techie. You could wire up glTail.rb to display onto a LCD in your office and everybody could see, in real time, what's happening on your website.

If you go through to the <a href="http://fudgie.org/">glTail.rb website</a> you can see some videos of the <a href="http://fudgie.org/slashdotted.html">tool in action</a>. Oh, and you can do a lot more than just website log visualization too. Pretty well anything you can tail will work!
