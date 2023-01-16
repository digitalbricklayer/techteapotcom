---
title: "Hugo in Action book review"
date: "2020-10-20"
lastmod: 2023-01-16
tags: [Hugo]
lead: "A short review of the Hugo in Action book published by Manning Publications."
thumbnail: "/images/hugo-in-action-cover.jpg"
series: ["Reading Log"]
---

<!--more-->

I have recently ported this [blog over to Hugo]({{< ref "/posts/a-new-dawn/index.md" >}}). [Hugo](https://gohugo.io/) is a static site generator written in the [Go language](https://golang.org/). In preparation, I thought it would be a good idea to read a book on the topic. The world is not exactly overburdened with up to date books about Hugo so the shortlist was very short. In Hugo's defence, the documentation provided by the project is pretty good. But, it is always helpful to have an outside perspective.

{{< notice note >}}
The *Hugo in Action* book is a work in progress at the moment. I have reviewed the chapters that were available in the middle of October. The only parts of the book that are complete are the chapters around building a static website. The JAMstack chapters are due soon. I will update the review when they are ready. The book is due to be fully published in December 2020.
{{< /notice >}}

The main selling point for [Hugo in Action](https://www.manning.com/books/hugo-in-action) is that not only does the book cover the building of static websites, it also covers the very interesting area of merging a static site with the more dynamic side of [JAMstack](https://jamstack.org/). With JAMstack, you take all of the benefits of a static website like speed and security and add the best dynamic bits of Javascript and associated web frameworks.

Another fine reason to purchase the book is that the source code for each chapter is available online in the [hugo in action](https://github.com/hugoinaction/hugoinaction) github repository.

The book starts with a good overview of the JAMstack and the main benefits to be gained, the main components of a JAMstack site and how it works. There is a useful section on why you would need to build a site using the JAMstack. The chapter then moves on to the various options for static site generator. There are a lot of very good options. You may well read the first chapter and discover that *Hugo* isn't the best option for you. If that's the case, then money well spent. The book from now on assumes you're going with *Hugo* and starts outlining the case for using it. If you are going to work with a technology, then you may as well get a compelling reason to adopt it as well as its strengths, weaknesses and alternatives.

The next chapter, **Live in 30 minutes - you now have a website** will do exactly what it says. You will (if you follow along at home) develop a website in 30 minutes fully deployed to the internet. You'll be taken through initial site generation using the `hugo` command line program, choosing a theme, adding new content and finally deploying your website to the internet.

{{< notice tip >}}
When developing a website in Hugo, it is very easy to spend a lot of time choosing a theme. My advice, don't sweat it too much in the beginning. Just get the site done with the theme mentioned in the book. It won't be exactly the way you want it, but it will work. You can change it later or even develop your own custom theme. When developing this site, I went through three themes before settling on the *mainroad* theme.
{{< /notice >}}

Markdown is central to most static site generators and *Hugo* is no exception. You are likely to be writing quite a lot of it for your site content. The **Using markdown for content** chapter goes into depth about markdown and how you use the various elements to format your content appropriately. For your non-technical users, this chapter will prove very useful. The chapter also outlines the other available markup options like *HTML*, *AsciiDoc*, *Pandoc Markdown* and *reStructured Text* as well as a comparison of them all.

Following on from the in depth markdown chapter, **Content Management with Hugo** goes into detail about how to manage and organise your website content. The chapter starts with fairly standard ideas like menus, sections and the built-in shortcodes and then moves into more complex topics like custom shortcodes.

From now on the book does start to go into more advanced *Hugo* topics that you probably won't need to know in order to build your first website. For instance, the chapter **Creating your own theme** I read but I can't say that I took too much in because I know that I don't need the information at the moment. I have stored away the knowledge of where to find the information so I can find it quickly in case I do need it in the future. If you are an experienced *Hugo* user, then I am sure that this information will be a gold mine for you.

All told I think that **Hugo in Action** is an excellent book that covers the non-technical and technical parts of *Hugo* very well. If you buy this book, you will have a functioning *Hugo* based site by the end. All told it is a :thumbsup: from me.
