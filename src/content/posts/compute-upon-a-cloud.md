---
title: "Compute upon a cloud"
date: "2007-12-17T09:01:50+00:00"
categories: ["Data Center"]
tags: [amazon, "cloud computing", "data center"]
aliases: [/compute-upon-a-cloud/]
---

<img src="/images/uploads/2007/12/20141000_bah0036_s.jpg" alt="Data centre worker" align="right" style="border-left:solid 4px white" />

Interesting what [Amazon](http://www.amazon.com/) is up to...first with [cloud storage](http://www.amazon.com/S3-AWS-home-page-Money/b/ref=sc_fe_l_2?ie=UTF8&node=16427261&no=3435361) then [cloud computing](http://www.amazon.com/b/ref=sc_fe_l_2?ie=UTF8&node=201590011&no=3435361) and now [cloud databases](http://www.amazon.com/b/ref=sc_fe_l_2?ie=UTF8&node=342335011&no=3435361). Is the art of data centre management going to be concentrated into a few massive data centres?

We currently rent a single Sun box, running Linux oddly enough, in a data centre to run all of our websites and email. One of the down sides with renting a machine is the limited capacity of storage, CPU and bandwidth. If you go the Amazon way then capacity becomes elastic. You can increase it when you need to and reduce when necessary.

The upside of renting is that your costs are known beforehand.

Would we consider moving over to a service like Amazon? Yes, but with a few reservations:

- Data security -- we need to be [PCI DSS compliant](https://www.pcisecuritystandards.org/index.htm) because we handle online payments. We must ensure that card holder data cannot be compromised;
- Budget limits -- how can we make sure that we don't run up ridiculous bills either through programming error or a breach in security;
- Support -- who are we going to call when things go wrong?
- Denial of Service -- will the cloud come with DoS mitigation services and insurance?
- Firewall -- you better be sure you're going to need a firewall. PCI DSS mandates a firewall, but you need to make sure that access to your ports are limited. That's best done off server.
- We really are at the beginning of the virtual computing and cloud computing revolutions. I expect the IT world will look very different when both have run their respective courses. Though, of course, both virtual and cloud computing are very much bound together.

One side effect of concentrating more and more computing into central hubs is the head count reduction that will likely follow. If your data centre disappears or reduces in size why employ so many people to manage it?

What is likely to happen is that a layer of service providers will be created to allay a lot of the above concerns, especially the support issue. Amazon probably won't be interested in problems with my particular virtual image, but a service provider who built the virtual image in the first place will be.

Virtual computing will provide challenges to software licenses. Any software that is licensed per CPU is going to be very expensive to run inside a virtual image that can be executed on very large computers and indeed many computers at the same time.
