---
title: "Manual vs automated process"
date: "2022-10-06"
description: "How do you decide to automate or part automate a particular process."
lead: "You have a one off task you need to do. There's an automated process you can build to achieve the end result or you could do the process manually. How do you decide which route to go down?"
tags: ['Hugo']
---

<!--more-->

The automated process requires you to undertake a period of software development using one or more tools to generate your desired output. This could be as complicated as firing up your Python IDE of choice and building a program or programs to automate your process or just hitting your favourite unix shell and creating a shell script.

The problem is the process is a one off. The artifacts you create will be thrown away afterwards.

It wouldn't be too difficult to determine whether you should automate if you knew for sure how long the automation process would take. That's the problem. Software development is difficult to estimate at the best of times.

## Job size

The size of the job plainly has a very big part to play in the decision to automate. If the job is small, then you almost certainly aren't going to save yourself much time if any time. On the other hand, a job with many thousands or even millions of items would be unthinkable to do manually.

The problem lies in the middle. It is entirely possible that you could manually undertake the process with the minimum of automation. But it is always tempting to think there is some easier way to do it. Especially when faced with a tedious and often extremely boring process to carry out.

## Partial automation

The way I went with the port of this blog over to Hugo was fairly pragmatic. I decided to automate but didn't commit to automating the entire process. Automating doesn't have to be a single step process ie you run a command and hey presto at the end of the process your desired output is there ready to be used. No, converting this blog was actually lots of small pieces of automation. Some used simple search and replace and others a little bit of scripting.

I split the task into lots of small tasks. The site itself is around 500 posts. I wrote [a small script to extract the posts from a MySQL database]({{< ref "posts/a-new-dawn/index.md" >}}) and dump into separate HTML files. I then went about the process of converting over to a format that Hugo is happy with. I did that with a combination of manually editing and text search / replace.

A lot of the older posts are still not fully converted. The metric I used to determine how much effort to expend was how old the post is and how much traction the post originally received. An old post with very little traction received the very minimum amount of attention. A newer post that received quite a lot of traction received a lot of attention and was fully ported over to Hugo best practices.

## Summary

There is no simple set of principles that will tell you how much automation you should consider. The size of the job will guide how much automation to carry out. If the job contains many millions of items, then you are justified in a very large investment in automation tools. A very small job will almost certainly be done manually. In the middle area, you will need to carefully consider the cost and benefits of automation and the risk that you will over invest in automation.
