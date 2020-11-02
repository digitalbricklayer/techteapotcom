---
title: "Npcap picks up where WinPcap left off"
date: "2020-11-02"
categories: [Protocol Analysis]
tags: [WinPcap, npcap, Wireshark, libpcap]
---

Sort of.

First a bit of background.

## Basics of Protocol Analysis

Things doesn't get much more specialised than protocol analysis. Protocol analysis involves the study of the packets flowing through a computer network.

Not too many people have the requirement for such detailed analysis of the inner workings of their network.

If you are a student learning how networks work under the hood, you'll find protocol analysis  absolutely invaluable as a learning tool. Same goes for developers creating pretty well anything talking to a network. Making sure your program is sending and receiving the correct network traffic is absolutely invaluable. If you are a network administrator and you are troubleshooting a problem on the network, then it can be helpful to see what is happening at the very lowest level on the network.

There are many tools that can be used to analyse packets on a network. From very expensive dedicated hardware to commercial software and open source solutions.

The best known open source network analyser is [Wireshark](https://www.wireshark.org/).

## Wireshark

Wireshark is the big beast of the open source protocol analysis world. If you need to capture and analyse network packets you probably know about Wireshark already. Wireshark can capture network packets and help you analyse and visualise them. But Wireshark doesn't capture the packets itself. It uses a third party library to do that. In the Linux and macOS world the library is [libpcap](https://www.tcpdump.org/). libpcap provides a uniform programming interface to any tool that wishes to capture packets. Unfortunately, libpcap doesn't work on Windows. That leaves a bit of a problem for people who wish to use Wireshark on Windows. Fortunately, a port of libpcap was created called [WinPcap](https://www.winpcap.org/).

## WinPcap

The operating system design between Unix systems and Windows is very different. Drivers written for Linux or macOS are not going to work on Windows systems. Consequently, a new project was needed to give a similar packet capture interface on Windows. This project was called WinPcap. Wireshark worked well with WinPcap on Windows and libpcap on Linux / macOS and things worked well for a while.

Unfortunately, WinPcap project activity ceased in late 2015. You can still download WinPcap and it still works. Windows is constantly being improved so it is just a matter of time until WinPcap doesn't work properly on the newer systems.

An attempt called [Win10Pcap](http://www.win10pcap.org/) has been made to fork the original WinPcap and update to the device driver model used by more recent versions of Windows. But it too has not seen any updates in five years.

There is a solution that is under active maintenance called [Npcap](https://nmap.org/npcap/).

## Npcap

Npcap is a fork of WinPcap.

Whilst WinPcap is [distributed under an open source licence](https://www.winpcap.org/misc/copyright.htm), the same cannot be said for Npcap.

Here's the relevant part of the Npcap licence:

> NPCAP COPYRIGHT / END USER LICENSE AGREEMENT
>
> Npcap is a Windows packet sniffing driver and library and is copyright
(c) 2013-2020 by Insecure.Com LLC ("The Nmap Project").  All rights
reserved.
>
> Even though Npcap source code is publicly available for review, it is
not open source software and may not be redistributed without special
permission from the Nmap Project.  The standard version is also
limited to installation on five systems. We fund the Npcap project by
selling two types of commercial licenses to a special Npcap OEM
edition:
>
> 1) Npcap OEM Redistribution License allows companies to redistribute
Npcap with their products.
>
> 2) Npcap OEM Internal Use License allows companies to use Npcap OEM
internally in excess of the free/demo version's normal 5-system
limitation.
>
> ...

The source code for [Npcap is hosted on github](https://github.com/nmap/npcap) and is publicly available. But you can't fork the code and then redistribute it yourself.

## Why does this matter

On one level it doesn't matter. If you wish to sniff packets on Windows hosts then you can still do so using Npcap. The main problem is that you now have a five host limit before you need to purchase a commercial licence. That isn't going to be a problem for me because I don't have more than five Windows based hosts. But it will be a problem for some. It is bound to make Windows a less attractive option for network managers in medium sized organisations.

Does the lack of an open source Windows based packet sniffing library matter? On the one hand it plainly doesn't matter. People who want to sniff packets on Windows can do so using Npcap. On the other hand it seems odd to me that Windows doesn't have a viable open source option. You would think that an operating system so absolutely dominant in market terms would be able to nurture an open source packet sniffing ecosystem. The absence of a free option does make Windows a lot less attractive from a network management perspective. Whilst a home user is unlikely to butt up against the five host limit, it seems likely that most medium companies will one way or the other.

## Conclusion

It feels like a retrograde step to me but I am thankful there is an almost freely available option under active maintenance.

If maintenance of Npcap stops, then the community can't pick up where Npcap stops. The source code is in the open, but not open source. You cannot distribute it yourself. You would need to go back to where WinPcap stopped and move forward from there.
