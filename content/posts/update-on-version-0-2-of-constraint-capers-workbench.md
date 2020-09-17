---
title: "Update on version 0.2 of Constraint Capers Workbench"
date: "2015-12-23T13:25:09+00:00"
categories: []
tags: []

The project has been renamed. It was called the Dyna Project, it is now called the <a href="https://github.com/constraint-capers">Constraint Capers project</a> due to a name clash with another project on GitHub. The other project didn't object or anything, it just seemed like the right thing to do.

My report on version 0.1 is <a href="http://techteapot.com/a-retrospective-on-dyna-project-version-0-1/">here</a>.

I've now been working on Constraint Capers for nearly 8 months. Progress is as slow as you'd expect for a project I only work on for five hours per week or thereabouts.

Version <a href="https://github.com/constraint-capers/workbench/issues?q=milestone%3Av0.2">0.2 consisted of 10 work items</a> the main items of note were removing the necessity to link things together when building the model and adding aggregate variables i.e variable consisting of zero or more variables.

The next version is where things start to get a bit more interesting. The <a href="https://github.com/constraint-capers/workbench/milestones/v0.3">work items for version 0.3</a> begin the process of taking the solution and making it more understandable by the user.

One of the more interesting challenges for the <a href="https://github.com/constraint-capers/workbench">Workbench</a> is the user interface. The interface isn't like a spreadsheet or a word processor where you don't need to worry what mode you are in. You have a document and can edit it at any time. In the Workbench, you can edit the model, or edit the solution or display the solution. To me that kind of interface is much more akin to Visual Studio or to PowerPoint. In PowerPoint you can edit the presentation or go into presentation mode and present your work. You can't edit the presentation whilst in presentation mode.

The problem I see is that in the Workbench there are effectively two things that can be edited, the model that defines the problem and the solution that defines how the solution will be displayed to the user. So, from that perspective, it is more complex than PowerPoint. When you edit and then present there is just one thing to be edited.

Perhaps one workaround is to meld the model and solution into a single entity. Maybe eventually there won't be a big difference between model and solution. At the moment the solution is created when the user invokes the solve function. Perhaps the computer may automatically and continually solve the model without intervention from the user.

Fortunately for the 0.3 release I don't have to resolve the user interface problem. I am quite happy to kick that can down the road for the 0.4 release.
