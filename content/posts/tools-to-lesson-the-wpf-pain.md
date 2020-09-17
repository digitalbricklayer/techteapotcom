---
title: "Tools to lesson the WPF pain"
date: "2015-10-13T14:18:02+00:00"
categories: []
tags: []

I'm back writing GUI code at the moment. I don't think it would be an exaggeration to say that I hate writing GUIs. But, there's nobody else to do it, so it has to be me.

It's not just that I am doing GUI code though that makes my current project tough, it is that I am learning WPF at the same time. The last time I had to write a reasonable sized GUI I was using MFC and C++, circa 2002.
<h2>Why do I hate GUI programming?</h2>
It was probably incubated many years ago in the early 1990s when GUI programming was really quite painful. And fiddly, god it was fiddly. Make a change in the resource editor or C++ file, jump over to a dos box, recompile (could take anything up to 20-30 minutes), start the program, find that your change wasn't quite right, rinse and repeat for days or weeks on end. Things haven't changed that much, GUI programming is and always will be fiddly, but the tools have improved.
<h2>Tools will set you free</h2>
Fortunately, there are a number of tools that can help reduce feedback time.
<ol>
	<li><strong><a href="http://www.kaxaml.com/">Kaxaml</a></strong> - a WYSIWYG tool for XAML. Has a number of limitations, which are pretty easy to get around. A very useful tool for building XAML based user interfaces outside of Visual Studio and the change, compile, debug cycle. Enter your XAML and see it rendered in real time. Changes can then be made very quickly. When you're happy, copy the code over to your Visual Studio project; <strong>Free</strong></li>
	<li><strong><a href="http://xamlspy.com/">XAML Spy</a></strong> - a XAML version of the old Windows Spy program. Available as two version: standalone applicationÂ and Visual Studio add-on; <strong>Paid app</strong> + <strong>Free</strong></li>
	<li><strong>Microsoft Blend</strong> - would be the perfect tool if it wasn't restricted to creating Windows 8.1 / Windows 10 app store applications. Not much use in my case, but if you are creating app store applications then you are in luck; <strong>Free</strong>, bundled with Visual Studio Community</li>
	<li><strong><a href="https://www.linqpad.net/">LINQPad</a></strong> - won't help you with XAML, but will help if you prefer writing your WPF code in C#. Type your C# code into LINQPad and execute it straight away. Even shows you the Roslyn parse tree; <strong>Paid app</strong></li>
	<li><a href="https://snoopwpf.codeplex.com/"><strong>Snoop</strong></a> - similar tool to XAML Spy, except that this is completely free and open source; <strong>Free</strong></li>
	<li><strong><a href="https://www.visualstudio.com/en-us/products/vs-2015-product-editions.aspx">Visual Studio 2015</a></strong> - one of the nicer new features of the new Visual Studio covers similar ground to XAML Spy, but all nicely integrated into the IDE itself. Nice. <strong>Free</strong></li>
</ol>
<h2>Conclusion</h2>
A lot of programming is by its very nature an iterative activity, GUI programming is just an extreme form. The shorter you can make the change, compile, debug cycle the better. The above tools will help you reduce the cycle, but they don't eliminate it. GUI programming has always been, is and will always be profoundly fiddly.

&nbsp;
