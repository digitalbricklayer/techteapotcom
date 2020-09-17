---
title: "Sometimes the open core functionality ceiling gets lower"
date: "2013-06-20T12:27:04+00:00"
categories: []
tags: []

First of all a little bit of background will make the post a little bit more understandable to non I.T. folks.
<h2>A bit of background</h2>
<a href="http://www.zenoss.com/">Zenoss</a> is a network management software vendor with an open source core product, called <a href="http://community.zenoss.org/">Zenoss Core</a>, and a closed source product called <a title="Network managementâ€™s â€œnew waveâ€ six years on" href="http://www.zenoss.com/">Zenoss Enterprise</a>.

Zenoss is written in the <a href="http://www.python.org/">Python</a> programming language and uses the <a href="http://www.zope.org/">Zope</a> web application framework.

<a href="https://pypi.python.org/pypi/RelStorage">Relstorage</a> is a Zope add-on for saving data to a relational database. Relstorage allows Zenoss to use a relational database as its storage backend, with all of the scaling out benefits that entails.

A relational database does not need to run on the same server as Zope, you can run it on a completely different server. In fact, you can run the relational database on a cluster of machines giving substantial scalability benefits. With Zope's native database format, running it on a different machine isn't possible.

Zope's native database format limits how scalable Zope can be, which in turn limits how scalable Zenoss can be.
<h2>A bit more background</h2>
Way back in 2010 <a href="http://techteapot.com/a-real-world-example-of-the-problems-with-open-core-software/">myself</a> and <a href="http://www.adventuresinoss.com/?p=1523">others</a> suggested that an open core strategy would lead to some <a href="http://techteapot.com/an-exploration-of-open-core-licensing-in-network-management/">difficult decisions about which features</a> go into the open source product and the closed enterprise product.

I suggested that a feature ceiling could be reached in the open source product and <a href="http://techteapot.com/musings-upon-the-open-core-functionality-ceiling/">offered some modest proof</a> that it existed.
<h2>The ceiling fell in... a bit</h2>
Phew, now we've got the introductions over, what the heck has all of the above got to do with open core software and lowering the functionality ceiling?

The following is part of a <a href="http://community.zenoss.org/docs/DOC-10312">conversation on the dev IRC channel</a> run by Zenoss.

rmatte:
<blockquote>"... A decision was made some time ago to move from standard zopedb to relstorage to improve performance.Â  Recently, a decision was made to remove the relstorage code from Zenoss Core."</blockquote>
<a href="http://www.zenoss.com/about/team/management">Bill Karpovitch</a> Co-founder and CEO of Zenoss Inc.
<blockquote>"a mistake we made in the process was that product management had it slated for an enterprise feature but we began development in the core trunk.Â  for better or worse, our decision was to pull it back. we are continuing to look this as part of the plan forward."

"all good points.Â  to be clear, the Core/Enterprise feature decisions are challenging and involve tough trade offs."</blockquote>
As Bill Karpovitch says above, the relstorage feature wasn't intended to go into Core, it was supposed to be an Enterprise only feature.

Unfortunately, it kind of snuck into Core accidentally and was removed. This upset the Zenoss community quite a lot as they believed that it would effectively create a fork between the Core and Enterprise products. A fork would make creating add-ons more difficult because potentially Core and Enterprise would need to be tested seperately. Supporting both would also be more difficult due to the core of the Enterprise product being different from Zenoss Core.

The relstorage feature was <a href="http://web.archive.org/web/20131126143926/https://community.zenoss.org/servlet/JiveServlet/downloadBody/11984-102-1-1485/Zenoss_Resource_Manager_Release_Notes_23-092011-4.1-v01.pdf">released in Zenoss Enterprise</a> version 4.1.
<h2>Conclusion</h2>
BTW this post is in no way an attack on Zenoss, or their very fine business. Kudos to them for having this kind of discussion in public. The above is just a concrete example of the friction that is inevitable when you have an open source product and a closed source product.

The friction isn't confined to open core companies either, closed source companies have exactly the same friction when they have tiered products too.

There is a happy ending, <a href="http://sourceforge.net/projects/zenoss/files/Documentation/zenoss-4.2.x-docs/zendocs-4.2.0/Zenoss_Core_Release_Notes_00-082012-4.2-v05.pdf">relstorage was eventually added</a> to Zenoss Core version 4.2.
