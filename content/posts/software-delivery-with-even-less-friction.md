---
title: "Software delivery with even less friction"
date: "2013-12-18T09:00:34+00:00"
categories: [General]
tags: []
aliases: [/software-delivery-with-even-less-friction/]
---

I've talked before about the <a href="{{< ref "/posts/continuous-delivery-every-single-day.md" >}}">joys of continuous software delivery</a> before.

Well, I've been building a couple of micro sites recently and thought it would be nice to try out a few new technologies and techniques.

Firstly, I've built them with <a href="http://en.wikipedia.org/wiki/HTML5">HTML5</a> and the <a href="http://getbootstrap.com/"><del>Twitter</del> Bootstrap</a> framework, there's a very good tutorial <a href="http://www.w3resource.com/twitter-bootstrap/tutorial.php">here</a>. Bootstrap provides a combination of CSS and Javascript to make building a clean, responsive site without having to worry about cross browser compatibility.

We use TeamCity and <a href="http://octopusdeploy.com/">Octopus Deploy</a> for another much larger site. For micro sites I think that Octopus is overkill. A large complicated deployment workflow isn't necessary for a simple micro site. Octopus really comes into its own when you need to deploy to a large web farm, or you need a workflow prior to releasing the website into production.

I thought I'd give <a href="http://appharbor.com/">Appharbor</a> a go. Appharbor is a newish form of web hosting. They host your website as you'd expect, but they've also integrated source code control and source code building into their offering.

All you need to do is create an ASP.Net website project, initialize your git repository then push it to Appharbor. Your website is then built, any tests are executed and then, if you're green, the website is deployed.

Appharbor is focused on the .NET space. <a href="http://www.windowsazure.com/">Windows Azure</a> offers a similar, though more expensive, option. Other languages have similar services available like <a href="https://www.heroku.com/">heroku</a> and <a href="http://www.brightbox.co.uk/">brightbox</a>.

One major lesson learned. Your tests need to give you a high degree of confidence that your site will work in production. Your tests are your only gate keeper stopping you from deploying a broken site. So, if your tests are green, the site had better work.

I've aimed for 100% code coverage with the tests and have managed to achieve 94.41%. The other 5 odd percent is the code calling the API of a third party website. Tough to test code talking to externals, so I manually test that code. Not ideal but I can live with it.

The micro sites in question are a C# Weekly launching early next year and the same for F# Weekly due a little bit later.

The visuals on the sites are a little bit minimal, but everything does work.
