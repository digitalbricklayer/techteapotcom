---
title: "An exploration of open core licensing in network management"
date: "2010-02-25T10:18:52+00:00"
categories: ["Network Management", "Open Source"]
tags: ["open core"]
aliases: [/an-exploration-of-open-core-licensing-in-network-management/]
---

Open core refers to a business strategy employed by some commercial open source companies. The open core strategy is popular amongst companies within network management.

The open core strategy is largely defined by creating an open source <em>community</em> product that is freely given away, and another product, the <em>enterprise</em> edition, that is sold as a regular commercial software product.

The open core business model is useful to software vendors because it permits them to build a community surrounding the open product who will form the nucleus of the people who upgrade to the enterprise product.

The <em>enterprise</em> product is useful because it is packaged and sold in the same way as proprietary software. One of the major pluses for the open core strategy is that, having a paid for a product with all of the sales infrastructure that implies, fits in with many company's purchasing processes. Tarus Balog, project lead of <a href="https://www.opennms.org/">OpenNMS</a>, posted about how his <a href="http://www.adventuresinoss.com/?p=1141">pure play open source business sometimes struggles with companies who expect to purchase software,</a> rather than deploy the software for free and pay for training and implementation services.
<h2>Open core as the new shareware</h2>
The <a href="http://www.ebb.org/bkuhn/blog/2009/10/16/open-core-shareware.html">open core strategy has been likened to <em>shareware</em></a>, a software business model pioneered by <a title="Andrew Fluegelman" href="https://en.wikipedia.org/wiki/Andrew_Fluegelman">Andrew Fluegelman</a>, <a title="Jim Knopf" href="https://en.wikipedia.org/wiki/Jim_Knopf">Jim "Button" Knopf</a>, <a title="Bob Wallace" href="https://en.wikipedia.org/wiki/Bob_Wallace">Bob Wallace</a> et al in the late 1970s and long favoured by small Independent Software Vendors. Under the shareware model, the publisher distributes a limited version of the software that is either time limited or with key features disabled, in the hope that users will find the product useful enough to upgrade to the full version.

The shareware product is usually upgradeable to the full version by entering a product key supplied when the full version is purchased.

Whilst there is at least a grain of truth in the comparison there are some key differences between shareware and open core:
<ul>
	<li><strong>Key features are missing</strong> - open core software is useful in and of itself. An open core product that isn't functional will not gain traction with a user community;</li>
	<li><strong>No community contributions</strong> - open core companies are keen to develop a community around their open core offering and hope/expect the community to contribute to the software eco-system surrounding the open core project;</li>
	<li><strong>Time limited</strong> - open core software is not time limited, you can use it for as long as you want.</li>
</ul>
The main similarity between open core and shareware business models is the desired end result on the part of the publisher. Both business models hope to up sell users to the full version of the product. The method used by both is also very similar, both business models withhold valuable functionality until the user upgrades.
<h2>Open core in network management</h2>
There has been quite a <a href="{{< ref "/posts/network-managements-new-wave.md" >}}">large influx of commercial open source companies into network management</a> in the last few years, many with the largess of venture capital behind them. The most recent, <a href="http://www.rivermuse.com/">RiverMuse</a>, released the <em>community</em> edition of their event and fault management offering during 2009 and is following an open core strategy with the imminent release of their <em>enterprise</em> edition during early 2010.

In many ways network management is a perfect environment in which to exploit an open core strategy. Network management products are commonly structured around a central engine with add-ons integrating with third party networking hardware and servers.

The enterprise product is built around the core engine with a number of add-ons not provided in the <em>community</em> edition. The dual product strategy is most clearly taken by <a href="http://www.zenoss.com/">Zenoss</a> who provide an open core engine but withhold <a href="http://community.zenoss.org/community/zenpacks#enterprise">many useful add-ons</a> for important enterprise services like Microsoft Exchange and Active Directory. Whilst anybody could use the core engine to write their own add-on to provide the same functionality, many organisations find it more efficient to pay for a ready made and tested solution.
<h2>Vendor perspective</h2>
The pros and cons of the open core business model from the vendor's perspective.
<h3>Open core licensing</h3>
The central part of an open core strategy is the dual licence. The <em>community</em> edition product is licensed under an open source licence, the <em>enterprise</em> product is usually licensed under a proprietary licence. Sometimes, when copyright or licensing issues intrude, the <em>enterprise</em> product also has an open source licence. <a href="http://www.groundworkopensource.com/products/enterprise/">Groundwork Monitor Enterprise Edition</a> is a good example of an <em>enterprise</em> product having an open source licence. Dual licensing is only possible if you hold the copyright to all of the code, or have the agreement of the third party copyright holders to distribute under a restrictive licence. The same applies to any libraries distributed with the enterprise product.

If the <em>enterprise</em> product is licensed under an open source licence then there is always the danger that a customer may release the product in public, including the source code, meaning that potential customers no longer need to purchase the <em>enterprise</em> product in order to get hold of the value added features.
<h3>A fork in the road</h3>
A rival copy of an open source project based upon the same source code is called a fork.

As the core <em>community</em> product is freely available to anybody, there is a danger that a third party could create add-ons to the <em>community</em> edition and sell them in direct competition to the open core company. Whilst there is a danger of a competitor emerging to utilise the <em>community</em> product, there are some very good reasons why it won't happen.

The competitor would be barred from using trademarks from the <em>community</em> edition in their product name or website. Consequently, it would be very difficult to promote the add-on to the desired audience. Trademark issues were one of the <a href="http://blogs.the451group.com/opensource/2009/05/08/nagios-fork-commercial-growing-pains-commercial-interests/">causes of the Icinga Nagios fork</a> for instance.

In order to get around the trademark issue, the competitor would be forced to fork the <em>community</em> edition and release it under a new name. They could then sell an add-on product. Plainly the original community wouldn't know anything about the fork and it would take a lot of marketing effort, in an already competitive market, for anybody to notice.

With the original community largely closed off, the competitor would have to start afresh and build a new community from scratch. Building a community takes time and money, external investment would be a very useful way to kick start the process. The competitor would not make a particularly attractive target for investment given that it doesn't own any of the intellectual property of the fork.

In addition, the competitor would need to be absolutely certain that there are no source code or other artefacts which are being distributed as an exception to the <em>community</em> edition licence. There may also be clauses in the licence that have been inserted to guard against forking. The Zenoss <a href="http://www.adventuresinoss.com/?p=1234">licence contains just such a poisoning clause</a> for instance.

Whilst forking is a danger to any commercial open core company, it does not appear to be a very pressing danger in practice.
<h3>Open core strategy</h3>
The open core strategy employed within network management companies encompasses quite a high degree of differences. There are companies like <a href="http://www.hyperic.com/">Hyperic</a> who have <a href="http://blog.hyperic.com/springsource/">pursued a pure open core strategy very successfully</a>, controlling all of the software in both the core and enterprise products.

At the other end of the spectrum, <a href="http://www.groundworkopensource.com/">Groundwork Open Source</a> have executed more of an <em>aggregation</em> strategy, by bundling together well known open source projects together and making them into an enterprise network management platform with their own glue software.

The <em>aggregation</em> strategy could be considered to be more in keeping with the open source philosophy of software reuse. There are a number of advantages and disadvantages to the <em>aggregation</em> strategy. The main advantage being that by reusing a lot of best of breed components you get to market much faster than starting off from scratch. Though the vast array of licenses used by the various open source projects are likely to keep a good number of lawyers busy trying to sort out all of the requirements. Some open source licenses may well preclude use of the software within a commercial setting. Porting the software to new platforms is also likely to be difficult, you can only support the union of all of the platforms supported by the projects. Without the agreement of the project leads, you may have problems with trademark use, especially if you wish to market your software as being powered by the project in question. Many open source projects, <a href="http://www.nagios.org/">Nagios</a> being a very good example, do protect their names quite vigorously.

On the positive side, if you can leverage existing projects, you will have a number of communities ready and waiting to be up sold to your enterprise product.
<h2>Community perspective</h2>
An exploration of open core from the community perspective.
<h3>The Open Core Functionality Ceiling</h3>
One of the most difficult balancing acts for product managers of open core products is <a href="{{< ref "/posts/a-real-world-example-of-the-problems-with-open-core-software.md">}}">knowing which features should go into the <em>community</em> product and which should go into the <em>enterprise</em> product</a>.

Does having an open core strategy mean that there are features that will never appear in the <em>community</em> product? Does the requirement to provide sufficient leverage to the sales VP provide an artificial ceiling for the functionality of the <em>community</em> product?

In a fully functioning open source eco-system, the community would tend to close the gap between the <em>community</em> product and the <em>enterprise</em> product. Plainly an open core company is not going to be very comfortable with the value proposition of the <em>enterprise</em> product being undermined by the community.
<h3>Community contributions in an open core world</h3>
One of the problems with the open core strategy from the vendor perspective is that you need to be careful with how you handle community contributions. In the case where the company takes no third party contributions this isn't going to be a problem, all of the engineers are on the company payroll.

If the company accepts third party contributions things become quite complex. In order to create a proprietary version of the software you either need to own the copyright to all of the software or have some kind of agreement to use the software in that way. A good example of such a third party contribution agreement is the Rivermuse contribution agreement.

The Rivermuse agreement must be signed each time a contribution is made. Whilst, from Rivermuse's perspective, the agreement is absolutely necessary, I would think that the terms might make third party contributors think twice before agreeing to it.

Not only do Rivermuse have the right to sell your software without compensation, you have to assign the copyright of your work to Rivermuse. They also have the right to apply for patents based upon your work. If you submit your code, you could find yourself being sued for patent infringement by Rivermuse for discoveries that you made in the first place.

The <a href="https://www.opennms.org/documentation/ContributorAgreement.pdf">OpenNMS Project Contributor Agreement</a>, like the Rivermuse contribution agreement, also mandates that contributors assign copyright to the <a href="http://www.opennms.com/">OpenNMS Group</a>. The major difference is that the contributions are effectively owned by two parties, the contributor themselves and the OpenNMS Group, an <a href="http://www.adventuresinoss.com/?p=1300">arrangement known as dual ownership</a>. The contributor also grants the OpenNMS Group a licence to use any patents contained within the contribution.
<h3>Open source etiquette</h3>
Many open source projects are written by people who gain no financial benefit from doing so. Open source software has been around for long enough that certain modes of behaviour have become the norm. One of the norms is the expectation that anybody wishing to incorporate an open source project into their own offering will ask the lead of that project for permission.

One of the dangers that commercial exploitation brings to the open source community is that the norms may be trampled upon. Is a company backed by outside investors likely to take the project owners views in mind when they have their own shareholders to concern themselves with. I'd like to be a fly on the wall in the board meeting when the VP of engineering explains to the board that a certain path cannot be followed because an open source project owner hasn't agreed to their work being used, especially when the company would be perfectly within their legal rights to use it.

If a project lead sees their project being exploited by open source companies will it become a motivator to improve the software or will it become a disincentive?
<h2>Conclusion</h2>
Whilst there are many issues surrounding open core as a business strategy, it cannot be denied that an awful lot of high quality open source software has been written in pursuit of it.

When one surveys the open source network management landscape from before the open core invasion, it is hard to see how the user community has lost out.
