---
title: "Capturing loopback traffic without a loopback interface"
date: "2014-03-20T16:37:01+00:00"
categories: []
tags: []

Wireshark is a wonderful tool, no doubt about it. But, on Microsoft Windows, there is one thing it isn't so good at.

Microsoft decided to remove the local loopback interface in Windows 7. So capturing loopback traffic is rather difficult without modifying your system. Something I try to avoid if at all possible.

There are ways to install the loopback interface if you want, as documented <a href="http://wiki.wireshark.org/CaptureSetup/Loopback">here.</a> There are also other means to achieve the same effect, also documented in the previous link.

Unless you need to do a lot of capturing, the chances are you're going to want an easier, quicker way.

Happily, somebody has thought of that. Just download the <a href="http://www.netresec.com/?page=RawCap">RawCap</a> utility kindly provided for free by <a href="http://www.netresec.com/">NETRESEC</a> and you don't need to configure anything. You don't even need to install any software, or even unzip. Just download and copy into your <em>utils</em> folder.

Here's how to run RawCap:
<p style="text-align: center;"><em>RawCap.exe 1 dumpfile.pcap</em></p>
<p style="text-align: left;">The <em>1</em> is the identifier for the loopback interface and <em>dumpfile.pcap</em> is the output file. If you're not sure, just run RawCap.exe and you'll be prompted.</p>
<p style="text-align: left;">The output file is in <a href="http://www.tcpdump.org/">PCAP</a> format, so it's a snap to load into Wireshark for later analysis.</p>
