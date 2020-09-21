---
title: "How will cloud computing change network management"
date: "2008-09-24T15:32:49+00:00"
categories: []
tags: []
---

The big selling point with <a href="http://en.wikipedia.org/wiki/Cloud_computing">cloud computing</a> is that computing capacity grows and shrinks depending upon the load being put upon it. You typically only pay for CPU (by the hour) and storage (by the month) you actually use.

If your website enjoys a sudden surge in traffic, by appearing on the <a href="http://en.wikipedia.org/wiki/Slashdot_effect">front page of slashdot</a> for instance, then extra servers will be provisioned automatically. Once the peak load passes and more normal traffic levels return, the extra servers are automatically de-provisioned.

How will cloud computing impact upon network management?
<h2>Service oriented monitoring</h2>
Cloud computing makes network and server infrastructure invisible. A large part of existing network management is involved with making sure that the network and server infrastructure is working properly.

The focus of network management in a cloud environment shifts away from managing infrastructure to managing service availability &amp; performance.

One of the big sells of cloud computing is not only outsourcing the provision of a scalable, enterprise grade network, but also the necessity to manage it as well.

Root cause analysis will effectively come down to ringing your cloud vendor's tech support team. Instead of your painstakingly planned network management system tracing the root cause of your outages, you'll be relying upon your cloud vendor's painstakingly planned network management system instead.
<h2>Standard cloud instrumentation</h2>
Your cloud vendor provides detailed usage statistics of your cloud through the cloud vendors management portal. In order to use this information in your own network management system you need it to be available in a format that can be read from your network management software.

Many network management systems have fine extensibility mechanisms so that you could wire up your network management system to use your vendor's instrumentation.

A better solution would be for a standard to emerge that all cloud vendors implement. Not very likely given the diverse offerings in the cloud computing market. <a href="http://aws.amazon.com/ec2/">Amazon EC2</a> has little in common with <a href="http://www.google.com/apps/">Google Apps</a> for instance.

The more likely scenario is that a winner will emerge eventually and that will become the de facto standard. Looks like Amazon at the moment, but I wouldn't underestimate either Google or Microsoft. Microsoft in particular have a good deal to lose if they don't allow Microsoft centric web developers take seemless advantage of cloud computing.
<h2>Configuration management</h2>
One of the major issues with compute clouds is the process of configuration management of the software image to be deployed. If the software running in the cloud has a bug, then I need to be able to revert to a previous image or upload a new one quickly.

In addition, controlling when new software is deployed is likely to be very important. I'm sure you don't relish waiting around for an off peak time period to upload new software, it would be useful to have your network management system to do it for you.

Whilst configuration management is a function of network management, few tools outside of the <a href="http://www.networkworld.com/newsletters/nsm/2007/0604nsm1.html">big 4</a> are able to do it.
<h2>Managing the cloud in the cloud</h2>
The obvious place is to put your service oriented monitoring in the cloud right alongside your application. Whilst such an approach will work most of the time, what happens when your cloud vendor's network dies? All of the major cloud vendors have had network outages so it isn't a theoretical risk.

An alternative to deploying your own monitoring solution could be to use one of the many vendors promoting SaaS based online monitoring solutions. Whilst that is probably going to be a more robust solution, it may be difficult to know precisely how the vendor has deployed their solution. What if the vendor is using the same cloud computing vendor that you have chosen? Then it won't be any better than deploying your own monitoring solution in the cloud.

One of the side effects of managing in a cloud world is that vendors will need to be more open about their infrastructure arrangements. If your management vendor is using a cloud then they need to be open about it.  Otherwise, when the 800 pound gorilla of the cloud computing space inevitably develops, there may be a danger that both management and managed services use exactly the same infrastructure.
<h2>Clouds are made of data centres, right?</h2>
Compute clouds are going to be housed in data centres, big ones too <em>and</em> lots of them. That's good news for the enterprise network management vendors because those data centres are going to need managing.

People running small &amp; medium sized data centres are likely to be the people most attracted to cloud computing. Therefore, there is likely to be a consolidation away from the small and medium data centres to large data centres. The only people who'll be able to justify the cost of running a small or medium data centre are those with specialist requirements that cannot easily be accommodated using a cloud based solution.

It is hard to see the transition as anything other than <em>party time</em> for enterprise vendors. Open source enterprise vendors will be in a very good position to win new customers. The transition to cloud computing is a once in a lifetime disruption causing a lot of cloud vendors to look for new, more flexible tools to help them manage their new, ultra-flexible infrastructure. In addition, the new cloud vendors are utilising open source software extensively in building their offerings, so they will be more amenable to open source based network management solutions.
<h2>Conclusion</h2>
Cloud computing is very much in its infancy. Clouds in their current form are likely to appeal to companies who would otherwise have opted for shared or virtual machine hosting in the case of Google Apps or one or more dedicated servers in the case of Amazon EC2. In either case, neither would be in the market for network management systems.

The next wave, when the early adopters have ironed out the problems, will be from companies replacing small or medium sized data centres with a compute cloud. These companies will still require a management system, but one tuned to managing in a cloud environment not a data centre environment. They'll need to monitor the services they are providing and manage their interaction with the cloud.

On the other hand, the cloud computing vendors themselves will require full blown enterprise grade network management systems. A great opportunity is being presented to the more nimble vendors, able to quickly fine tune their products to the particular requirements of the cloud vendors. The open source, enterprise oriented network management vendors will find their offerings chime well with the cloud vendors. The cloud vendors are already heavy open source software users.
