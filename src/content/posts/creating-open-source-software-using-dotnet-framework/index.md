---
title: "Creating open source software using Microsoft's .NET framework"
date: "2008-05-02T15:14:13+00:00"
categories: ["Open Source"]
tags: [dotNET, microsoft]
aliases: [/creating-open-source-software-using-dotnet-framework/]
description: "Whilst developing PowerTime, I've kept in mind the requirement that I need to ensure that the software can be built using only freely available tools."
---

Whilst developing PowerTime, I've kept in mind the requirement that I need to ensure that the software can be built using only freely available tools.

Of course we will eventually provide an installer, but I like the idea that people can build the software on their own machine if they want to.

One way to make self building easier is to minimise the number of external dependencies required. To that end, everything is written in [C#](https://en.wikipedia.org/wiki/C_Sharp) and only standard [.NET framework](https://en.wikipedia.org/wiki/.NET_Framework) libraries are used. No external libraries are required to create a functional build.

## Build Environment

A free command line build tool is available with the .NET framework called [MSBuild](https://en.wikipedia.org/wiki/MSBuild). The tool uses the same build files used by Visual Studio so duplicate maintenance of separate build scripts is not required.

## Unit Testing

One area of .NET development positively overflowing with options is unit testing. A number of very good open source tools exist, including the excellent [NUnit](http://www.nunit.org/) framework that I've employed.

Microsoft does have their own unit testing framework nicely integrated into the IDE, but it is only available to people who have stumped up for [Visual Studio Professional 2008](http://msdn.microsoft.com/VStudio/).

The only real problem with NUnit is that it isn't integrated into Visual Studio. A solution is available through [TestDriven.NET](http://www.testdriven.net/) but unfortunately that is a (modestly priced) commercial product. Fortunately it doesn't impact anybody else so I may buy it anyway because it would certainly improve my productivity.

A binary installer for NUnit is freely available so satisfying this code dependency shouldn't be too onerous.

## Development Environment

The following development environment options are available:

- Use the command line compilers supplied with the .NET software and use your favourite text editor; or
- Use the free Visual Studio Express IDE for whichever language you are interested in; or
- Use the (paid for) Visual Studio Professional; or
- Use the open source mono project on Linux with your favourite IDE.

Options 1 &amp; 2 are not open source, but they are free. Option 3 is a paid for option and most certainly isn't open source. Option 4 is completely open source and free. Only problem with mono is that it isn't complete as yet. Mono has implemented most of .NET up to and including v2. For me that isn't a problem because I'm targeting .NET v2 anyway. If you need features beyond v2 then you'd better look at the other options.

I've gone with option #3 because it is the most productive for me and I've already got the software. Fortunately using Visual Studio Professional doesn't impact my goal of ensuring that anybody can build the code because if you haven't got it you can use either MSBuild or Visual Studio Express.

## Code Coverage Tools

One of the central tenets of unit testing is that you've got to make sure that you are testing as much of your code as possible. Believing that your code is being tested when it isn't is far more dangerous than knowing it isn't. That's where [code coverage analysis](https://en.wikipedia.org/wiki/Code_coverage) tools come in. Whilst a number of options exist ([NCover](http://www.ncover.com/) &amp; [dotTRACE](http://www.jetbrains.com/profiler/)) for .NET developers, none are available for free.

Whilst [JetBrains](http://www.jetbrains.com/) offers their IntelliJ IDE product for free to open source developers, I couldn't see a similar offer for their .NET based products.

Again, whilst it would be nice to have a free high quality tool available to everybody there are no code dependencies to resolve with a code coverage tool. Those who have one can run it against the software without affecting those without it.

## Conclusion

Nobody said that developing open source code on Windows was cheap. There are a wide variety of high quality tools available, unfortunately they cost money and most certainly aren't open source.

Having said that, a viable development environment can be created either for free or cheaply. When compared, from an open source development perspective, to the Java environment, .NET doesn't come out too favourably.

Perhaps Microsoft, if you're listening, you could provide software like code coverage tools as a standard part of .NET just like you've already done with the compilers. Just very simple command line tools would be fine...no need to tread on the toes of the commercial ISVs.
