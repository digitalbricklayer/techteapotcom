---
title: "Adding anything external to your software will triple support"
date: "2013-07-30T14:41:55+00:00"
categories: [General]
tags: []
---

By external I mean, stuff your software has to talk to over the wire.

Be it a SMTP server, network share or FTP server. Whatever.

Let's say you think that supporting your customers on-premise email server is a pain. So you think, why don't I use a cloud SMTP server then hard wire my product to use that instead of all of that configuring malarchy.

It's a great idea but it won't stop the pain. Many networks have big fat firewalls configured to stop their SMTP traffic from inside their network going outside on the assumption that it is probably a compromised PC / server being used for malicious purposes.

Who do you think will get the call when your software doesn't send the expected emails? You or the techie responsible for the corporate firewall?

Hint: it will be you.

Then you think. I know, I'll use that nice shiny new REST interface available from said cloud SMTP provider.

Every network lets web traffic through the firewall. Right?

Wrong.

You won't be surprised to learn that those same corporate firewalls stop all outgoing web traffic that doesn't go through the web proxy.

Who do you think will get the call when your software doesn't send the expected emails. You or the techie responsible for the corporate firewall?

Yup, you guessed it. It will be you again.

So, what is my advice to you? Simple. You can't avoid interfacing to external systems, but you can make it a lot less painful to diagnose customer problems. Implement a <em>Test Connection</em> feature alongside the external system configuration. Make sure that the diagnostic information is actually useful when your user presses the test button.

And write decent application logs. Log absolutely everything even the batshit crazy stuff you know you'll never need.

You will.

Make the logs easily availabe so that your customer can send them to you with the minimum of fuss. Your customer should be able to send the logs to you in one or two clicks.

No sending of half a page of instructions to explain how to do it manually.
