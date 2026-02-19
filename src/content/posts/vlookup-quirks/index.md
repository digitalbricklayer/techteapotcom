---
title: "VLOOKUP Quirks"
date: "2025-07-07T13:55:56+02:00"
lead: "What happens when you give VLOOKUP something it can't find? It is supposed to return #N/A. That is true when you tell it to do full matches on the value you are looking up. But what is the default behaviour?"
description: "What happens when you give VLOOKUP something it can't find? It is supposed to return #N/A. That is true when you tell it to do full matches on the value you are looking up. But what is the default behaviour?"
thumbnail: "/images/vlookup-quirks.png"
---

<!--more-->

I have used Excel a lot over the years. Mostly for manipulating data and relatively simple calculations and the odd graph. I want to learn Excel more thoroughly so I’ve decided to document my progress in the hope that you might get some benefit from it, and I will learn more by explaining my learnings.

One of the things that happens when you (used to) program is that you automatically think of what happens when things go wrong? With that in mind, I am currently learning that old Excel favourite VLOOKUP. What happens when you give VLOOKUP something it can’t find? It is supposed to return #N/A. That is true when you tell it to do full matches on the value you are looking up. That is not the default behaviour though.

The default is to perform a partial match. VLOOKUP when performing partial matches behaves very strangely. I’m searching for a product ID, say 100 and my column has products IDs from 1 through to 7. VLOOKUP using the default behaviour will return the value associated with the last product ID in the list i.e. 7. This makes no sense to me at all. 7 is not a partial match for 100. Unfortunately, VLOOKUP uses the last value in the range you’ve provided if it can’t find what you’re searching for. This strikes me as odd but given that VLOOKUP was introduced in the first version of Excel in 1985, and it was in the first version of Lotus 1-2-3 before that in 1983, they’ve been stuck with it and its quirks.

{{< figure src="images/excel-vlookup-weirdness-example.png#center" caption="Figure 1: An example of VLOOKUP weirdness in action." alt="An example of VLOOKUP weirdness in action" >}}

There is a workaround: always use exact match or use XLOOKUP a much more recent and better designed replacement. The only reason to use VLOOKUP is if you are using a version of Excel older than Excel 2019 or perhaps your spreadsheet is so laden down with VLOOKUPs that you want to keep things consistent.
