---
title: "SSL certificates with extended validation: know who you're dealing with"
date: "2008-02-01T16:25:18+00:00"
categories: [General]
tags: []
aliases: [/ssl-certificates-with-extended-validation-know-who-youre-dealing-with/]
---

One of the biggest problems a website encounters is trust. How do you know who you are dealing with?

Well, you just look for the SSL certificate and that *proves* that the website is bona fide doesn't it? Wrong! All a traditional SSL certificate does is verify that the domain is the same as the one specified in the certificate.

A scammer can very easily install a traditional SSL certificate for their website with the minimum of checks.

Fortunately, the security industry has come up with an improved SSL certificate that not only validates the domain, but verifies that the domain is owned by a bona fide company as well.

{{< figure src="/images/uploads/2008/02/sslev-small.jpg" alt="OPENXTRA SSL Extended Validation certificate in action" >}}

Unfortunately, browsers haven't been keeping up too well with the new [extended validation certificates](https://en.wikipedia.org/wiki/Extended_Validation_Certificate).

Only IE 7 currently displays the extended certificate information including the company name, location and certificate registrar.

Firefox users will have to wait for version 3 before they can view the extended information.

The registration process is certainly rigorous. It took us around two weeks to finally be granted a certificate because we'd neglected to update our domain information.
