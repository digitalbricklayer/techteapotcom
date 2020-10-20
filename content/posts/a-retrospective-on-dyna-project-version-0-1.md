---
title: "A retrospective on Dyna Project version 0.1"
date: "2015-08-05T15:46:49+00:00"
categories: [General]
tags: []
aliases: [/a-retrospective-on-dyna-project-version-0-1/]
---

Whilst version 0.1 of the Dyna Project isn't quite finished, I thought it would make sense to take stock before work starts on version 0.2.

But first some introductions would probably be helpful.
<h2>What is the Dyna Project?</h2>
For a lot of years I've been interested in constraint satisfaction problems and how to solve them.

The Dyna Project is my latest attempt to create a tool for solving constraint type problems in an accessible way. I want constraint type problems to be as solvable as financial modelling is with a spreadsheet.
<h2>A retrospective on version 0.1</h2>
I've been working part time on the Dyna Project since 7th April this year. The project has received 122 commits so far, with approximately 5K lines of C# code. My plan was to build the simplest graphical modeller of constraint type problems possible. I think I have achieved that, it could not be much simpler.

Whilst the solution is very simple, there is the kernel of the design already. There is a place to model your problem, a mechanism for solving it and another mechanism to display the solution. The only element missing is the ability to design how the solution will be displayed.

I can't say I like anything about the model building interface or design. It does work, but it is very painful to use. The idea of using different shapes for the variables, domains and constraints doesn't work at all. The connectors add a lot of ceremony but don't add much in the way of clarity. Most work in the 0.2 release will need to be used resolving the model building interface. Without a workable model interface, there's not much point to the rest of the program.

The project name will be changing before the 0.2 release. The name clashes with another project on GitHub so I think it only polite to find another one. No idea what the new name will be yet. I am open to suggestions. :smile:

Please don't use the project yet, it is some distance away from being usable. I know it's buggy, and have no intention of fixing the bugs because much of the code is going to change for version 0.2.
<h2>Conclusion</h2>
The design of version 0.1 was only ever intended as a place marker. In that and that alone I think it has succeeded. The outline of the program is in there, all of those elements need considerable improvement in the next few releases.

<strong>Update March 2016</strong>: The new name for the project is <a href="http://constraint-capers.github.io">Constraint Capers Workbench</a>.
