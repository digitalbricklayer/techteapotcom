---
title: "Manual vs automated process"
date: "2020-10-21"
categories: [General]
tags: []
draft: true
---

You have a one off task you need to do. There's an automatic process you can build to achieve the end result or you could do the process manually.

How do you decide which route to go down?

The automatic process requires you to undertake a period of software development using one or more tools to generate your desired output. This could be as complicated as firing up your Python IDE of choice and building a program or programs to automate your process or just hitting your favourite unix shell and creating a shell script.

The problem is, the process is a one off. The artifacts you create will be thrown away afterwards.

It wouldn't be too difficult to determine whether you should automate if you knew for sure how long the automation process would take. That's the problem. Software development is difficult to estimate at the best of times.

## Partial automation

The way I went with the port of this blog over to Hugo was fairly pragmatic. I decided to automate but didn't commit to automating the entire process. Automating doesn't have to be a single step process ie you run a command and hey presto at the end of the process your desired output is there ready to be used. No,
