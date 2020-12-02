# MRTG

Freshmeat [entry for MRTG](http://freshmeat.sourceforge.net/projects/mrtg). Has quite a lot of version info including dates.

Wikipedia [entry for MRTG](https://en.wikipedia.org/wiki/Multi_Router_Traffic_Grapher).

See [comp.lang.perl.misc](https://groups.google.com/g/comp.lang.perl.misc/) and search for MRTG as per the link.

See also [comp.lang.perl](https://groups.google.com/g/comp.lang.perl/).

See for [first MRTG announcement](https://groups.google.com/g/comp.lang.perl/c/FaAWCOBdgKo/m/g7IAn-LRGicJ) on 28 April 1995.

This is the message on comp.lang.perl:

>ANNOUNCE: mrtg - Network Traffic Stats on the Web
>
>MULTI ROUTER TRAFFIC GRAPHER
>============================
>Here at DMU, our Internet link is always under heavy load. Therefore
everybody is keen to know how the state of the link is.
>
>I have written a small perl script which gathers the traffic stats from our
backbone router. (the tool uses "snmpget" to read the information from the
router.)
>
>The tool the creates a daily, weekly and yearly traffic graphs and makes
them accessible trough a html document. (It uses ppmtogif to create the
graphics)
>
>If you are interested, you are welcome to download a
copy and see the output of the tool, take a look at my homepage server:
>
>http://engelberg.dmu.ac.uk
>
>The tool can be easily configured for other sites, and it can also keep stats
for several routers.
>
>If you have comments on this program please get in touch
>
>Enjoy!
>tobi

See for [MRTG 1.1 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/bhOhM6Grii4/m/1Y8LlDrkKzcJ)

See for [MRTG 1.6 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/4gUbj7tBi14/m/R2fzLDA_bLcJ)

See for [MRTG 2.0 announcement](https://groups.google.com/g/comp.lang.perl.misc/c/KqlEw0PexWA/m/cjYGNVFl-ScJ)

See [Perl and the dynamic web](https://opensource.com/life/16/11/perl-and-birth-dynamic-web)

See [here](https://lists.oetiker.ch/) for MRTG + RRDTool mailing lists

Found [this succinct listing of MRTG versions](http://www.mrtg.cz/pub/CHANGES) (from 2.0.1) with changes in each version. Still need history from version 1.6 through to 2.0.1. This is quite a big problem as this is the time that rateup was introduced and quite a lot of other project evolution.

Example [here](https://www.noao.edu/kpno/router-stats/readme.html) with some history of MRTG.

First reference I can find on Google Books is in 1998 in SysAdmin: The Journal for UNIX Administrators. See https://books.google.co.uk/books?id=WUlVAAAAMAAJ&q=mrtg&dq=mrtg&hl=en&sa=X&ved=2ahUKEwius4zfjartAhVpRhUIHcyEAck4FBDoATACegQIBRAC the article is about diagnosing a NFS problem using MRTG to show that a network link is overloaded.

Interesting example of MRTG site circa 2000 [here](http://mrtg.xidus.net/). Has an example of an old config file with a lot of interesting stuff in it.

Paper presented by Tobi Oetiker at LISA 98 is [here](https://www.usenix.org/legacy/event/lisa98/full_papers/oetiker/oetiker.pdf) in PDF form.

## Outstanding research

* Most significant milestone releases - when did major features ship?
* Most significate contributors - what were the contributors doing? Were they sysadmins doing their job using MRTG?
* Project activity - when did the project reach its peak and when did it start to lose momentum
* Diff all of the releases to gauge the changes

## Post ideas

* A disection of MRTG v1.0
* Open source when v1.0 emerged and the state of the internet at the time
* A disection of v2.0 rateup
* A disection of the first version to introduce rrdtool
* MRTG: a history
