---
title: "Google account security"
date: "2008-12-11T09:45:56+00:00"
categories: [Security]
aliases: [/google-account-security/]
---

Here at Teapot Towers we are pretty paranoid about security. One of the things we've done to improve our security is lock down our web sites with a nice phat firewall.

Outside of the firewall, you just get to see the standard web &amp; incoming email ports. Internally, from the company network, we bypass the firewall meaning we can see everything, most notably the SSH service for doing all of the nice server admin work.

We use quite a number of Google services including Google Adwords. Our Adwords account got hacked a few weeks ago causing no end of inconvenience.

I asked Google about the cause of the account compromise and they said it was caused by my machine being compromised with a key logger. I scanned all of the machines from which I log in and could find no evidence of any malicious software. The absence of key logging software leeds me to believe that my account was compromised by a brute force password cracker somewhere out in the wild west that is the internet.

It strikes me as odd that Google don't permit us to specify good IP addresses, a so called white list, from which I am permitted to log into my account. They could then bounce all requests from IP addresses outside of the white list. It would make cracking your Google account a whole lot harder because the hacker would have to fake a white list IP address as well as crack your password.

Just today, having checked The Tech Teapot's security log, there have been at least 30 hack attempts so far today (and it isn't even lunch time yet.) Just goes to show how you have to be very wary about putting anything on the internet these days. At my first company, back in 1992, the whole network was using a class C address with all of the client machines available on the public internet with no firewall. You'd never get away with that now. :wink:
