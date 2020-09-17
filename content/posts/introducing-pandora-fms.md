---
title: "Introducing Pandora FMS"
date: "2008-12-18T09:00:12+00:00"
categories: []
tags: []
---

The open source systems management space sure is hotting up. <a href="http://pandorafms.org/">Pandora FMS</a> looks like a good emerging open source systems management tool.

Pandora FMS has been developed by <a href="http://www.artica.es/">Ãrtica</a>, a Spanish company founded in 2005. A VMWare image is available for download, so checking Pandora FMS out is a breeze.

From a technical perspective, Pandora FMS is written in Perl &amp; PHP with MySQL as the backend database. The software is split into two main components, the server and the console.

The server is responsible for performing all of the basic work, like receiving SNMP traps &amp; collecting information from agents. An agent may also be optionally installed on machines to increase functionality. Pandora FMS may be used in an agent less environment using WMI in Windows environments and SNMP.

The console is responsible for all of the user interface functionality using a PHP based website.

<strong>Update</strong>: <a href="http://pandorafms.com/index.php?lang=en&amp;sec=pandora&amp;sec2=appliance">Pandora FMS is available pre-installed as an appliance</a> if the thought of a manual install fills you with woe.
