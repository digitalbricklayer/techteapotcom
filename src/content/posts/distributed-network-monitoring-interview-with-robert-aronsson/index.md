---
title: "Distributed network monitoring interview with Robert Aronsson"
date: "2008-09-10T09:36:22+00:00"
categories: ["Network Monitoring", "Network Management"]
tags: [interview]
aliases: [/distributed-network-monitoring-interview-with-robert-aronsson/]
---

Robert Aronsson is the CEO of Intellipool AB a company with over ten years experience of the network management market. Intellipool introduced a distributed network monitor over four years ago. I interviewed Robert with a view to getting some insight into Intellipool's experience of implementing distributed network monitoring solutions with their customers.

The interview was conducted via email. My questions are in bold with Robert's answers underneath.

## Q: What key factors determine whether you need a distributed solution?

The most obvious factor is network location, doing direct network monitoring over, for example, a branch office VPN is not something I would recommend. Depending on what you are monitoring it can be a huge resource drain on a VPN that should be used for "normal" office work.

By placing a remote gateway at a branch office, INM can monitor all aspects of the remote servers to just a fraction of the "bandwidth cost" compared to direct monitoring.

There is a second factor that might not be that obvious, but Intellipool's take on distributed monitoring can be used as a "clustering" solution, splitting the monitoring workload over several machines if you have a very large network to monitor. Since all management is done from the central INM server it's very easy to move monitored objects between different gateways when you for example needs to take down a machine for maintenance.

## Q: What are the biggest barriers to successfully deploying a distributed network monitoring solution?

The two biggest practical problems that you will encounter is deciding if you need a dedicated machine to host each remote gateway and re-configuring firewall rules in both ends.

In Intellipool we have implemented the server/gateway system to make it as cost effective as possible for the customer, this means that:

- Remote gateways always connect to the central server, meaning that you have fewer firewall rules and also avoid the risk of deal breakers such as having to open a customer firewall for incoming traffic;
- Since the gateway connects to the server, the remote gateway can be placed on a dynamic IP;
- A typical Intellipool gateway consumes around 30 MB of memory, stores nothing but temporary work files on disk and can be remotely updated once it's installed. Installation of a new gateway is done in a matter of minutes. The low resource footprint makes it possible to co-locate the remote gateway running on an already installed server.

## Q: What is the best management structure for managing a distributed solution? Should each office/department be responsible for its part or should it be controlled centrally?

Control of the actual software (ie. the remote gateway) should be handled by the same group/entity that manages the Intellipool server. Management of monitored objects is another story, it's quite possible to hand over the control over the object to a local sys admin. But in reality it's best that everything is managed by the same group of people, the risk of responsibility grey zones is reduced if you have appointed one group of people to control the whole chain.

## Q: What are your top 3 do's and don'ts?

(I'll formulate it in a bit different way here) There is a number of things to consider before going ahead with distributed monitoring.

- When considering distributed monitoring, make sure that the traffic to and from servers are encrypted and (something that is often forgotten) protected from man in the middle attacks;
- Make sure that you select a system where installation and upgrade of remote gateways can be done remotely;
- Distributed monitoring is not for everyone, even if your organization scattered around the globe connected with VPN's. If you are just interested in basic monitoring (ping, simple HTTP monitoring etc) you are likely better off doing it from one central location, since in this case bandwidth is not an issue.

Thanks Robert. If you have any questions, please leave a comment.
