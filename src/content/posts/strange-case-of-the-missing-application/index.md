---
title: "Strange case of the missing application"
date: "2008-03-07T12:43:42+00:00"
aliases: [/strange-case-of-the-missing-application/]
---

Many moons ago, around about 1989 or so, my brother-in-law asked me to solve a problem for him. He was the secretary responsible for assigning referees to football matches in a local football league.

He was having considerable trouble with it. It was taking him ages to do the task manually because, whilst it sounds easy, it is rather complicated because there are a number of subtle constraints that must be taken into account.

A referee wasn't permitted to referee the same team twice in the same season, the referees preferred to officiate matches close to home. Some referees were preferred for some of the more brutal encounters etc etc.

I was in college at the time studying computers and he thought I could help out.

I thought that I'd be able to find a tool to solve the problem quite easily. Turns out that it was anything but easy to find something...and that's why I think the missing application comes in.

If you need to solve a [constraint satisfaction](https://en.wikipedia.org/wiki/Constraint_satisfaction) problem you've two choices:

- Get hold of a vertical application designed specifically to solve your particular type of problem; or
- Write your own application using one of a number of programming languages suited to the task or use a constraint satisfaction library tacked on to a regular programming language.

It occurs to me that there really ought to be a third option. An application or toolkit that allows regular users to specify their problem in an easy to use way and then have the application solve the problem for them.

The [evolution of the spreadsheet](http://www.bricklin.com/history/saiidea.htm) was effectively the same. Prior to the spreadsheet the same two choices listed above were your only choice. Along pops the spreadsheet and hey presto anybody can quickly and easily calculate, graph and solve mathematical problems to their heart's content.

The main problems I can see are the representation of constraint satisfaction problems in an easy to understand manner and the fact that constraint satisfaction problems can take a massive amount of processing.

The instant feedback you get from a spreadsheet would be difficult to achieve given the combinatorial explosions inherent in many constraint satisfaction problems. Though with all of those nice multi-core processors coming along over the next few years I think the feedback problem could nicely solve itself.

The representation problem is solvable too with a number of compromises on the types of problems that can be solved.

Believe it or not I've been working on this on and off for the best part of twenty years. :smile:

**Update June 2015**: I'm currently prototyping the missing application over [here](https://github.com/digitalbricklayer/workbench).

**Update December 2015**: The prototype is now called Constraint Capers Workbench and the source code is hosted [here](https://github.com/digitalbricklayer/workbench).
