
This file is a local version of this page: http://www.mrtg.cz/pub/CHANGES

Changes 2.17.7, 2018-07-12
--------------------------
From: Martin Sechny, shenk.sk
* update to HTML 5 template in bin/mrtg, checked by HTML+CSS W3C validator
* corrected style in HTML template: color with background-color
  (workaround for missing text color property in mrtg.cfg)

Changes 2.17.6, 2014-12-02
--------------------------
From: tobi
* add --descr=ifname option to indexmaker
* fix parsing of global option in cfgmaker
* add dcn id to cfgmaker (baed on input from Pawel Golaszeswski)

From: Steve Alligood <steve@betterlinux.com>
* make sure threshval does not get clobberd

Changes 2.17.5, 2012-04-26
--------------------------
From: Pavel Gulchouck <gul@gul.kiev.ua>
* fix for kmg option coredump

Changes 2.17.4, 2012-01-12
--------------------------
From: tobi
* some address fixes to contrib
* fixed duplicate install-sh entry in archive

Changes 2.17.3, 2011-12-01
--------------------------

From: tobi
* set oid-mib-cache file for New_SNMP_util as well #106

From: rihad
* prevent spurious warnings about unknonwn values of inlast outlast in mrtg

From: tobi
* add the process id tmp file extensions, to guard against multiple rateup
  instances messing things up for each other. (attempt to fix #115)
* quell warning in CnTWaLK mode #111

From: morph@debian.org
* spelling fixes

From: tobi
* make threshold checking more robust against incomplete information in the
  config file #113

From: trac
* support ifAlias for Vyatta gear

From: Dannys
* CnTWaLK should add the count and not max index

From: Tobi
* abort indexmaker if there is no data to be found

From: Ryan
* fix for big5 translation
From: Tobi
* in cfgmaker use ifdesc=alias only if there is actualy alias info

From: Vitezslav Crhonek vcrhonek redhat.com
* fix of a file pointer leak found by coverity scan
* fix for kMG support in rateup

From:  Adrian Minta
* add support for zyxel ifAlias

From: #110
* add support for Matrix N7 Diamond

From: Tobi
* enable warnings in cfgmaker and fix issues ...
* explicitly import SOCK_DGRAM and AF_UNSPEC to make ipv6 support work

From: Mike Mitchell <Mike.Mitchell@sas.com>
* Updated Net_SNMP_util.pm and SNMP_util.pm to latest versions

Changes 2.17.2, 2011-02-20
--------------------------
From: Tobi
* can not replace a file by renaming another to its name under WIN32
  fix in rateup #104

From: Tobi
Changes 2.17.1, 2011-02-18
--------------------------
From: Tobi
* Fix scaling when noo and noi options are used. fix for  #95
* Stop staticly linking rateup. fix for #97
* Only set LD_RUN_PATH if it is actually necessary. patch from #98
* Net::SNMP only support aes128, des and 3des ... fix for cfgmaker from #99
* Understand desc and descr in ifdesc option of cfgmaker
* only set $args{'-maxrepetitions'} if $Net_SNMP_util::MaxRepetitions > 0
* do not load Net_SNMP_util unless snmpv3 is requested ... fix for #75
* be more agressive about updating the confcache. If a key is missing, go
  looking for it again and complain. fix for #74
* only apply 32bit counter wrap compensation when the wrap is within 32bit
  range. fix for #70
* implement pngdate as TimeStrPos[x]: RU instead of separately. for for #68
* add missing <p> tag arount 'last updated ... ' in html output. fix for #63
* remove rececondition when writing new trafic graph files by writing to a
  temp file and moving it later. fix for #51
* make snmpopt_current available in cfgmaker templates. fix for #48
* explicitly import Socket6 routines in SNMP_Session. fix for #45
* default ThreshHyst to 0.1 only if ThreshDir is define. fix for #42
* point out when there is an unknown interface found. fix for #41.
* allow for $speed to return 0 and still use SNMPv2 ... some Cisco Gear
  seems todo that. Fix for #33
* add dlink support for ifAlias OIDs to cfgmaker from #50
* add WWP (Ciena) support for ifAlias OIDs to cfgmaker from #66


From: Chris Chiappa <chris+debian@chiappa.net>
* Updated squid docu #80

From: redrat at mail.ru
* Fix russian translation bug #92

Changes 2.17.0, 2010-12-15
--------------------------
From: Steve Shipway s.shipway auckland.ac.nz
* added rrdcached support
  - new keyword:  RRDCached: which overrides anything set in the RRDCACHED_ADDRESS
    environment variable and sets MRTG to work in RRDCached mode.  This verifies
    that you're using a unix-domain socket and the socket is writeable.
  - Check for environment variable RRDCACHED_ADDRESS and use this if no
    explicit address was set in the cfg file, making the same config validity
    checks.
  - Make warning if using rrdcached to the effect that the thresholding
    checks will no longer work.
  - If in rrdcached-mode, and using RRDTool 1.4, then force use of update
    rather than updatev (as rrdcached does not yet support updatev) and
    consequently bypass the thresholding checks.
  - Changes to validity check error messages  to also report the file
    containing the error (as well as the line).
* Added support for glob patterns in include
* Make daemon reload cfg automatically when it changes

From: john.belshaw cggveritas.com
* added support for Arista to cfgmaker

From: duncan_j_ferguson at yahoo.co.uk
* fix cfgmaker to work in mixed v1/2/3 snmp environment

From:  Stuart Henderson stu spacehopper.org
* do not strigify arguments to conversion function let eval take care of this
* untaint inlast and outlast to make  perl taint mode happy
* teach cfgmaker about openbsd

Changes 2.16.4, 2010-05-17
--------------------------
From: Tobi
* fix "P_DETACH" and Pod::Usage issues with perl 5.12

From:  James Golovich <james@gnuinter.net>
* relax cfgmaker option parsing when figuring whether to test for highspeed
  counters or not.

From: Stephen Satchell <satch@gradedlabs.com>
* fix sorting of numbered interface names index maker

From: Hleb Valoshka <h.valoshka@brnv.rw.by>
* belarusian translation for mrtg 2.16

Changes 2.16.3, 2010-01-20
--------------------------
From: chris.merrett melbourne.co.uk
* three new config options to compliment the existing
  RRDRowCount option to explicitly set the size of all RRAs

From: Leonardo Reginin leonardo procergs.rs.gov.br
* allow to rename target in the clonedirectory option
* add import to the require File::Copy

Steve Shipway  s.shipway auckland.ac.nz
* support multiple options in ifdesc and ifref setting for cfgmaker

Carlos Fuentes Bermejo carlos.fuentes rediris.es
* teach cfgmaker about nortel switches

Pavel Gulchouck  gul gul.kiev.ua
* make sure rates over 4G work too

From: Oliver Lehmann oliver FreeBSD.org
* allow group and user option to be set to root

Changes 2.16.2, 2008-05-16
--------------------------
From: Steven Bakker steven.bakker ams-ix.net
* globally disable __DIE__ handler in eval using $^S check

* updated to SNMP_Session 1.12

From: Tobi
* make SNMP_Session.pm work on windows even when a __DIE__ handler ist
  installed.

Changes 2.16.1, 2008-02-17
--------------------------
From: Tobi
* fix RouterUptime config with non unique targets

Changes 2.16.0, 2008-02-06
--------------------------
From: Fernando Nieto  fnieto satec.es
* Makesure mrtg repopulates its cache only once even in fork mode

From: Tobi
* Added support for RRDtool based Holt-Winters aberrant behaviour detection.
  Threshold based alerts have been enhanced to be able to fire based on the
  FAILURES RRA. Note that Holt-Winters aberrant behaviour detection can only
  be enabled on newly created RRAs.

From: Sergio Chiesa sergio.chiesa eutelia.it
* when thresholds were UNboraken, the threshprogok did not run necessarily

From: Mike Mitchell Mike.Mitchell sas.com
* MIB parser rewritten for better compatibility

From: Norman Rasmussen norman rasmussen.co.za
* allow RouterUptime to contain an explicit OID for queriing the uptime.

From Ajit Mallick ajitmallick gmail com
* support for nortel passport 8600 in cfgmaker

From Dan.McDonald
* Added Documentation for GeTNEXT prefix
* Added New Prefix for Counterd SNMP Walk -> CnTWaLK (see docs)

From: Simon Leinen
* Upgrade to SNMP Session 1.10

From: Mike Mitchel
* Updates for  Net_SNMP_util.pm   and  SNMP_util.pm   

From: Tobi
* Fix if_is_ciscovlan condition in cfgmaker
* Updated port syntax in documentation (based on trac entry)

Changes 2.15.2, 2007-04-29
--------------------------
From: Tobi
* Improve parsing reliability of indexmaker
* Fixed deadhost detection in mrtg

From: Dan.McDonald austinenergy.com
* added config option noHC for boxes that don't have HC counters
  but run SNMPv2/v3

From: Mike Mitchell Mike.Mitchell sas.com
* Updated Net_SNMP_util module (error messages)

From: Günter Knauf
* Updated Makefiles for Win32 and Netware
* New Netware version of rateup.nlm

Changes 2.15.1, 2007-02-01
--------------------------
From: Gosselin, Gerry GGosselin onecommunications.com
* make cfgmaker detect broken snmpv1 counters more reliably

From: Mike Mitchell <Mike.Mitchell@sas.com>
* latest Net_SNMP_util.pm with many small fixes

From: Dan.McDonald austinenergy.com
* more cfgmaker smarts and documentation for snmpv3

From: Tobi
* be happy even if no threshmail sending is configured
* add install target for traffic-summer
* fix mrtg-traffic-sum default catch expression to be in sync with docs

Changes 2.15.0, 2006-12-05
--------------------------
From: Stefan.Schnitter t-systems.com
* Free positioning of a generated ifIndex in the OID string using
  the magic IndexPOS keyword

From: Tobi

* When doing threshold checking with rrdtool, there was a very expensive
  'getting the data back with rrdinfo and rrdfetch' cycle after each
  rrdupdate.  with rrdtool 1.2 and the updatev function this is not
  necessary anymore the new code speeds up mrtg cycle time by a factor of 3
  to 10 depending on your platform.

* Threshold Un-Borken Messages will only be generated when the value is 10%
  away from the threshold. Configurable via ThreshHyst

* New function thresholdmail lets you send an email when a threshold
  is broken. This feature talks directly to the mailserver and does
  not require any external programs.

* New template writers helper function in cfgmaker - oid_pick. It tests if a
  device is willing to supply information regarding a particular oid. This
  makes template writing much more pleasant.
  http://oss.oetiker.ch/mrtg-trac/browser/trunk/templates/cisco/host-cisco.tmpl

* added new tool mrtg-traffic-sum to build traffic stats based on the
  content of your mrtg log (not rrd) files.

* mrtg running with rrdtool can now do sub-minute resolution if the interval
  is specified like that: 0:30 ... note that you can not change the
  resolution of an existing rrd file. So this will only have the desired
  effect on new rrds. Also note that the graphing frontend may need changes too to be
  able to deal with the new interval type. Internally interval is now a float!

* new debug option 'prof' to see how long rrdtool spends on its writes ...

From: Daniel J McDonald dan.mcdonald austinenergy.com
* fixed snmpv3 support in cfgmaker

Changes 2.14.7, 2006-09-06
--------------------------
From: Tobi
* removed extra spaces from Makefile.in

Changes 2.14.6, 2006-09-06
--------------------------

From: Tobi
* timestamps in log files to be YYYY-MM-DD HH:MM:SS
* fixed rateup to propely support kMG option
* fixed problem with conversioncode option throwing an exception.
* fixed config parsing problem for libadd lines terminated by a \
* added 'eval' debug target
* updated local $SIG{__DIE__} locations to work as intended

From: Akihiro Sagawa  sagawa sohgoh.net
* fix ifspeed for foundry switches in cfgmaker

From: Russ Price gpg fubegra.net
* Added expscale option (opposite of logscale) to emphasize the top end of
  the scale; this improves display of line voltages that don't change a whole
  lot

From:  Stefan stefan sf-net.com
* added sample startup script for mrtg

Changes 2.14.5, 2006-07-14
--------------------------

From: Tobi
* allow - in oid name
* make sure __DIE__ does not get triggered in eval sections

Changes 2.14.4, 2006-07-04
--------------------------

From: Pierfrancesco Caci p.caci seabone.net
* cfgmaker should know that IOS-XR version 3.x is newer that IOS  11.x

From: Tobi
* make install should build rateup ...
* indexmaker with --prehost should act sensible even with targets that have no host
* remove extra \n from cfgmaker output in pagetop section
* cfgmaker, escape " in SetEnv MRTG_INT_DESCR output
* allow ifalias for 3com gear

Changes 2.14.3, 2006-05-05
--------------------------
From: Tobi
* fix regression in indexmaker due to --check fix

Changes 2.14.2, 2006-05-03
--------------------------
From: Mike Mitchell
* updated SNMP_util.pm and Net_SNMP_util.pm
From: Tobi
* do not create directories in --check mode

Changes 2.14.1, 2006-05-03
--------------------------
From: Peter W. Osel pwo qimonda.com
* remove superfluous ^M from rateup.c

Changes 2.14.0, 2006-05-02
--------------------------
From: tobi
* only enable snmpv3 in cfgmaker if it is explicitly specified on the cli.
* we live in a new home now ... oss.oetiker.ch/mrtg
* fix makefile to work for the install target again
* remove remaining html references

From: jpturchi at mageos dot com
* timestamp all error and warning messages of mrtg

From: Pawe? Go?aszewski <blues pld-linux.org>
* teach cfgmaker about unrouted vlans

From: Leonardo Reginin <leonardo procergs.rs.gov.br>
* new: clonedirectory function

From: Miloslav Trmac <mitr redhat.com>
* explicit cast in char conversion (minus one warning) for rateup.c

From: Simon Leinen
* Updated SNMP_Session to 1.08

From: Guenter Knauf <gk gknw.net>
* Small fixes for libgd in Makefile.Win32 and Makefile.Netware

Changes 2.13.2, 2006-02-03
--------------------------
From: Tobi
* cfgmaker and if-templates should work again

Changes 2.13.1, 2006-01-24
--------------------------
From: Tobi
* fix routeruptime config paramter
* fix spelling and presentation in the documentation
* added rateup.nlm back to the distribution

Changes 2.13.0, 2006-01-23
--------------------------

From: Tobi
* make sure rateup properly handles unscaled graphs even
  when the bits option is active ...

* place if-filter later in the cfgmaker code so that it can see ALL the template variables.

* New magic OID prefix WaLK and GeTNEXT to cause mrtg to use snmpwalk for
  certain variables and keep the first value it finds.  (sponsored by srg.com.bs)  

* use short image paths in <img src...> if images and HTML are in the same directory.

* fix threshold checking with rrdtool for logging

From: Michel <unreal .. home.nl>
* allow kMG to be set to ''

From: Juergen Obermann <Juergen.Obermann with hrz.uni-giessen.de>
* improved german translation

From: Jerzy Sobczyk <J.Sobczyk in ia.pw.edu.pl>
* make indexmaker work properly in rrdtool mode with images turned off

From: Yusaku Nakajima <yusaku@beige.ocn.ne.jp>
* remove unconditional warning from windows code

From: "Dean, Mike" <mdean@landstar.com>
* have some sensibility in return codes from mrtg ...

From: NormW <normw with bocnet.com.au>
* point to favicon from indexmaker

From: Fuminori Uematsu <uematsu@kgz.com>
* improved japanese translation

From: NormW <normw location bocnet.com.au>
* look for rateup.nlm if running on netware

From: Mike Tkatchouk <mike@tk.pp.ru>
* --log-only option for mrtg script to not update the graphics.

From: Daniel J McDonald <dan.mcdonald@austinenergy.com> (with help from Mike Mitchell)
* SNMP v3 support added Net::SNMP library required for this

From: Guenter Knauf <gk@gknw.de>
* Updates for NEtWare and Win32 Makefiles

From: Mike Tkatchouk <mike tk.pp.ru>
* new option --update-only will  not produce graphs or crete webpages ...

From: Karl M. Ramberg <kalle venstre.no>
* fix regexmatches in indexmaker

From:  Stefan Loidl <Stefan.Loidl .. lrz-muenchen.de>
* teach cfgmaker about hp gear
* make 10Gig interface detection work

Changes 2.12.2, 2005-06-19
--------------------------

From: Fabian Uebersax <fabian of uebersax.ch>
* fix portname math in indexmaker

From: Andrej Ota <andrej.ota of siol.si>
* accept extreme networks switches for ifAlias in cfgmaker

From: Jeff Woolsey <jlw with jlw.com>
* set unknown values to 0 for threshold checking if unknonwnaszero is set

From: NormW <normw location bocnet.com.au>
* updated NetWare integration

Changes 2.12.1, 2005-05-16
--------------------------
From: tobi
* max maxbytes work again (rateup.c)

From: Jeremy Chadwick <mrtg@jdc.parodius.com>
* css fix ... do not specify the graph size this is flexible

From: Peter W. Osel <pwo@infineon.com>
* fix background color setting in new css code

Changes 2.12.0, 2005-05-15
--------------------------
From: Benjamin Gufler <benjamin.gufler with lugbz.org>
* make mrtg produce propper xhtml output

From: tobi
* do not maintain separate confcache entries for different timeout settings
* make mrtg work with rrdtool 1.2 (note that this does not mean that you
  graphing frontend will necesarily work with rrdtool 1.2.x too)
* Fix location of maxbytes line in log scale mode
* do not die when encountering a bad rrd ... only warn
* stop mrtg from popping up windows whenever rateup runs by using the
  Win32::SetChildShowWindow(0);

From: Erek Dyskant <erek with nbtsc.org>
* give derive precendence when when setting the
  update mode.

From: Miloslav Trmac <mitr in redhat.com>
* call tzset when running on unix after setting TZ to cater for
  multithreaded perl

From: "Bruijn de, Pascal" <pmjdebruijn in gmail.com>
* added make CatOS if names available in cfgmaker ifdesc

From: Jeremy J. Smith <jeremy pre klugerwahl.com>
* DOCTYPE must be before any comment ...

From: Steve Bonds <388rzvl02 alpha sneakemail.com>
* added --zero-speed option to cfgmaker to deal with broken snmp

From: "Poetzel, Christopher J." <cpoetzel some anl.gov>
* Force10 ifAlias support for cfgmaker

From:  Nick Ellson <grimm location nickellson.com>
* teach cfgmaker about Cisco PIX Firewall Switch Modules

From: NormW <normw location bocnet.com.au>
* updated NetWare integration

Changes 2.11.1, 2005-01-05
--------------------------
From: Artyom Adjemov <one.bofh location gmail.com>
* new Windows docu ... running mrtg as an nt service with srvany.

From: Joe Pruett <joey location clean.q7.com>
* fixed snmp options parsing in MRTG_lib.pm to allow for !

From: Tobi

* fixed secondmean and logscale to actually issue the propper
  options for rateup.
* fixed compilation of rateup.exe for windows to get the new strftime
  function to be actually used ...

Changes 2.11.00, 2004-12-08
---------------------------

From: Al Payne <apayne location pleiades.com>
* integrated support for dellLan in cfgmaker
* reindented cfgmaker

From: Mike Nealon <mnealon location conversent.com>
      and Larry Fahnoe <fahnoe@FahnoeTech.com>
* fix cfgmaker handling of 'lowspeed' highSpeed interfaces

From: Tobi Oetiker
* reindent rateup.c
* remove @ signs from mail addresses in change log
* added if_MTU variable to cfgmaker
* make windows users happy. rateup.exe now uses a special strftime.c
  that knows about %V and will thus provided propper ISO week numbers for
  windows as well. Changed the default week format to V.

From: zurkabsd location yahoo.com.cn
* new chinese translation

From: Jaime Damiao Anjos Cadete <jaime.d.cadete location ptprime.pt>
* put -lm into LIBS to make sure it comes last

From: Ian Duplisse <i.duplisse location cablelabs.com>
* remove the flattening of peaks from the code in rateup.c this does not reflect
  what actually happens

From: John Van Essen <vanes002 location umn.edu>
* fix handling of unknonwn (-1) data in rateup ...

From: Benjamin Despres <http://users.tmok.com/~pla/email_me.shtml>
* Logscale and Secondmean logarithmic scaling for rateup

From: alex <alex location craxor.com>
* contributed mrtg message dll. Added note about it to mrtg-reference.pod

From: Mateusz <mateusz location republika.pl>
* support option derive is using rrdtool logging

From: Ulf Härnhammar <Ulf.Harnhammar.9485 location student.uu.se>
* prevent potential buffer overflow in ratup due to 'strange' input files

Changes 2.10.15, 2004-08-08
---------------------------

From: NormW <normw location bocnet.com.au>
* patches for netware support

From: Tobi
* the optional Conversion function wants to have the original
  data pulled in via snmp to work with, mapping \n and \r to nothing
  and stripping spaces must happen later.
* better error message for missing library
* Updated to snmp_session 1.05

From: Fuminori -Tany- Tanizaki <tany location tany.org>
* fix for cuin and cout values saved in html comments

From: Tom Pala <gotar location pld-linux.org>
* fix for polish translation

From: Georgi Georgiev <chutz location gg3.net>
* nodetach option for running mrtg under daemontools

From: Jozsef Szilagyi <j.szilagyi location atlastelecom.ro>
* fixed indexmaker. added missing last for  --section=portname code

From: Bartosz Kwitniewski <zerg2000 location lurker.ath.cx>
* fixed scaling bug in rateup (unsigned long) should have been long long

From: Mike Mitchell <mcm location unx.sas.com>
* fix indexmaker when used with 14all

Changes 2.10.14
---------------
From: Michael P. Soulier <michael_soulier location mitel.com>
* new option subtitle for indexmaker

From: Lech Szychowski <lech.szychowski location pse.pl>
* added new options for printing date inside the graph:
  TimeStrPos[] and TimeStrFmt[]

From: Joshua Nichols <nichoj location scorec.rpi.edu>
* teach Makefile about DESTDIR

From: Tobi
* do not try to populate the confcache off a dead hosts ...


From: Norm <normw location bocnet.com.au>
* make mrtg work on netware

From: Fuminori Uematsu <uematsu location kgz.com>
* updated japanese translation

From: Ladislav Mihok <starman location inmail.sk>
* fixed encoding for slovak translation

From:  Hal Dell <hdell location epodworks.net>
* added 3com RMON VLAN detection to cfgmaker

From: Michael_Soulier location Mitel.com
* added --headeradd option to indexmaker

From: Simon Leinen <simon location switch.ch>
* updated SMNP_Session to 1.03

From: Quentin Dunchue <que location qnr.biz>
* added host anchor in indexmaker
* fixed $default filter in cfgmaker to not include everything

From:  ¶ŔŞF¶© <ryan location asplord.com>
* updates for chinese big5 translation

From: Klaus Schmidinger <Klaus.Schmidinger location cadsoft.de>
* fix for ytics with small values in rateup

From: "Peter Wirdemo (MO/EMW)" <peter.wirdemo location ericsson.com>
* enhance cfgmaker for extremenetworks

From: Tobi and Bernd Drefs <drefs location gmx.de>
* fix hairy issue with description matching in indexmaker (add quoting)

From: Kenji <kenji location club.h14m.org>
* make thresholds work when maxbytes1 and maxbytes2 are in use ...

Changes 2.10.13
---------------
From: Pedro Marcolino <pedro location jazznet.pt>
* fixed undef data problem with forks
* add --icondir option to indexmaker

From: Tobi
* faild rrdtune should not kill mrtg complaining is enough.
* fixed manpages first lines to include mrtg as well

Changes 2.10.12
---------------
From: Nico Kadel-Garcia <nkadel location merl.com>
* Makefile should not complain when running clean on a clean setup
* It's community not comunity.

From: Luc Pauwels <Luc.Pauwels location xalasys.com> and Simon Leinen
* 16-Bit SNMP Session ID support for cfgmaker and SNMP_Session

From: Tobi
* renamed all doc pages to mrtg-* except the manpages for cfgmaker and indexmaker
* added MaxAge option setting which will prevent mrtg from touching old logfiles,
  potentially caused by setting the clock to a wrong date.
* fixed a number of && vs and and || vs or problems in the mrtg script and library

Changes 2.10.11
---------------
From: Tobi
* put out color allocation back into rateup.c what was I thinking

Changes 2.10.10
---------------
From: Tobi
* config.h.in was out of sync
* removed eout checking after select as the output seems unreliable

Changes 2.10.9
--------------
From: Tobi
* with forks, do not try to look at filehandles which have been closed

From: Albert Chin-A-Young <china location thewrittenword.com>
* improved long long check for configure.in

Changes 2.10.8
--------------
From: Marc Baudoin <babafou location pasteur.fr>
* cfgmaker has to know about Foundry virtual Ethernet interfaces

From: Tobi
* %lf was bad ... go back to %f this should portable

Changes 2.10.7
--------------
From: Don Russell <drussel2 location san.rr.com>
* fixed READPID in MRTG_lib.pm
* added commandline as meta tag in indexmaker output

From: Tobi
* for running on old perls ... we need %Lf not %lf for sprintf.

Changes 2.10.6
--------------
From: Dave Plonka <plonka location doit.wisc.edu>
* modified fork code to use select to determine if data is ready to be read

From: Philipp Capoy <pcapoy location diversenet.com>
* teach cfgmaker about  Nokia IPSO

From: Richard Bullington-McGuire <rbulling location obscure.org>
* pseudo entry for his contributions which somehow got lost from
  the changes file. Early in 2.0 history (1996) Richard
  contributed.
  * Perl code strictification (it now runs with "use strict;")
  * Makefile for rateup
  * rateup debugging
  * Perl code cleanup
  Sorry for that.

From: Klaus Schmidinger <Klaus.Schmidinger location cadsoft.de>
* fix rounding error with YTicsFactor in ratuep (nmax_q is double)

From: Mike Mitchell <Mike.Mitchell location sas.com>
* fix for generation of non negative request ids
  in SNMP_Session.pm

From: Alex Samorukov <samm location os2.ru>
* updated OS/2 portability ...RunAsDaemon works now

From: Stephen Heise <stephen location streetprices.com>
* fix for lockfile management when two instances run in parallel

From: Rafael Martinez Torres <rafael.martinez location novagnet.com>
* updated docs and snmp_session to be comaptible with INET6-2.00

From: Tobi
* fix command line option description in reference and mrtg
* Updated to SNMP Session 0.99
* fixed handling of dead host for cases where ip matching is involved
* Fixed table structure generated by indexmaker
* Change Doctype to HTML 4.01 Transitional, so that font face becomes legal
* fix pngtitle alignement for growright option.
* Restart after HUP, but terminate for INT and TERM
* fix handling of ' ' in community names
* make rounding work even without BigFloat
* allow BigFloat only in perl 5.8 and later
* added new oid hacks ... PseudoOne and PseudoZero ... they return the respective number.
* make threshold handling deal gracefuly with missing thershold descript
* fixed portability to hpux (setsid)
* make sure snmpoptions are passed everywhere
* run rateup with unknown values ... as we used to in the good old days.
  unknown as zero would not make much sense otherwhise

Changes 2.10.5
--------------
From: Dmitry Sivachenko <mitya location cavia.pp.ru>
* Improved configure to work on *bsd as well

Changes 2.10.4
--------------
From: Tobi
* More BigFloat portability fixes

Changes 2.10.3
--------------
From: Tobi
* Can only use BigFloat in perl > 5.6.1

Changes 2.10.2
--------------
From: Tobi
* Updated to SNMP_Session 0.98

Changes 2.10.1
--------------
From: Tobi
* make snmp_session work with old perls

Changes 2.10.0
--------------
From: Simon Leinen <simon location limmat.switch.ch>
* New Version of SNMP Library (0.97)

From: Martin Opitz <xomartin location ti.com>
* allow sci notation numbers

Changes 2.10.0pre9
------------------
From: Jon Barber <jon location scorpiocomputing.com>
* new configurables: printrouter and pngdate ... check the docs
From: Jessica Blackburn <jessica.blackburn location acterna.com>
* indexmaker: improve handling of multiple cfg file situation with rrdtool logging
From: Tobi
* allow user and group to be set even when not running as a daemon.
From: "Spain, Jeffry A." <spainj location countryday.net>
* use Math::BigFloat objects with 40 digits of precision
  so that we can handle floats for rrdtool if needs be
* detect if a target is a simple target for simplified handling of uptime and
  router name
* propperly handle \& in targets

Changes 2.10.0pre8
------------------
From: Tobi
* handle dead hosts propperly by returning 'empty data' and not just the
  same as in the previous round.
  fixes the stray update error with rrdtool.

From: Eric Einhorn <eric location monmouth.com>
* there are snmp devices which emit bizzar output when their tables get
  walked in the wrong order. Use a fix walking order now. No more
  hanging cfgmaker instances.


Changes 2.10.0pre7
------------------
From: Tobi
* Oops configure was broken ...

Changes 2.10.0pre6
------------------
From: Tobi
* attempt to restart when hitting a die in daemon mode.

From: "Spain, Jeffry A." <spainj location countryday.net>
* revamped target parser to weed out duplicat polls
* added new 'per target' conversion filter capability

Changes 2.10.0pre5
------------------
From: Tobi
* fixed goof in rateup where the wrong long long printf string crept back in

Changes 2.10.0pre4
------------------
From: Alex Samorukov <samm location os2.ru>
* OS/2 port

From: Tobi
* Detect 3com VLAN ids
* mrtg should not gethostbyname on numberic ipv4 addresses
* allow empty variables to be set in SetEnv
* make diff routine more conservative in rateup ...
* snmpv2 did not poll HC counters anymore ... fixed

From: Lorenzo Colitti <lorenzo location colitti.com>,
* updated docs on ipv6
* portability fixes for perl 5.00502

From: Brian Lube <blube location mail.fdn.com>
* use $if_snmp_name if $if_title_desc is empty in cfgmaker

From: Dmitry Sivachenko <mitya location cavia.pp.ru>
* fix to rateup where  sizeof(time_t) != sizeof(long)

Changes 2.10.0pre3
------------------
From: Andrew A. Vasilyev <andy location demos.su>
* fix for freebsd ... its %qd and not %lld there

From: Simon Leinen <simon location limmat.switch.ch>
      and Lorenzo Colitti <lorenzo location colitti.com>
* updates to SNMP_Session

From:  Gleydson Mazioli da Silva <gleydson.mazioli location ima.sp.gov.br>
* fixes for brazilian translation

Changes 2.10.0pre2
------------------

From: bill shamam <bill location continuity.cx>
* contributed a favicon

From: Lorenzo Colitti <lorenzo location colitti.com>,
From: Valerio Bontempi <valerio.bontempi location poste.it>,
      Roma Tre Computer Networks research group <compunet location dia.uniroma3.it>
* fix for IPv6 support (work with out option settings)
* fix IPv6 module detection

From: Daniel J McDonald <dan.mcdonald location austinenergy.com>
* allow $if_vlan_id in cfgmaker filters

From: imacat <imacat location mail.imacat.idv.tw>
* make --bindir, --libdir, --mandir, etc work

From: Paul Slootman <paul location debian.org>
* removes a couple of silly typo's and the capitalization for weekday and month names
* fix indexmaker to propperly parse description tags which do not have a white space at the end of the line.

Changes 2.10.0pre1
------------------
From: Lorenzo Colitti <lorenzo location colitti.com>,
      Valerio Bontempi <v.bontempi location inwind.it>,
      Roma Tre Computer Networks research group <compunet location dia.uniroma3.it>
* IPv6 for mrtg

From: Ryan Finnie <ryan location finnie.org>
* get router name from a dirfferent oid with Routerneme configurable

From: Tobi
* cfgmaker now complains about hosts it can not get info from, but does not die.
* force all counters to be BigInt
* make configure escape to scanf if long long is missing (inspired by marc.elsen location imec.be)

From: Clas Mayer <clas location mayer.se>
* improved swedish translation

Changes 2.9.29
--------------
From: Tobi
* allow external scripts to return UNKNOWN
* fixed SnmpOptions setting
* improved skipping of dead hosts (do not confused with 'dead' interfaces)

Changes 2.9.28
--------------
From: jackie <jackie location pub.dgnet.gd.cn>
* fix charset in gb2312

From: Jan Kasprzak <kas location informatics.muni.cz>
* small fix for BER.pm. Sent upstream to Simon too.

From: Andreas Plesner Jacobsen <apj location mutt.dk>
* make sure ifdescr does not display doubly exscaped descriptions

From: Colin Horsington <chorsington location flow.com.au>
* foundry ATM subinterfaces always report 0 speed, make it 155Mbps instead.

From: Tobi
* skip hosts which do not resolve to an IP address
* removed --descint option form cfgmaker this did only exist in the docs
* added support for config.h and test for __strtoll which will make reatup
  work on HPUX
* make maxbytes2 line reappear
* update compile instructions
* fix ifref escaping in cfgmaker

From: Fernando Nieto <fnieto location satec.es>
* make cfgmaker handle highspeed interface speed better

Changes 2.9.27
--------------
From: Gordon Tetlow <gordon location FreeBSD.org>
* allow unsetting of Unscaled, WithPeak, and Suppress

From: Barry Rountree <rountree location san.rr.com>
* updated compile instructions for new gdlib
* various documentation fixes

From: David Corlette <corlette location huarp.harvard.edu>
* a whole set of new mrtg commandline options: "--fhs", --daemon",
 "--pid-file", "--confcachefile" ... this makes

From: MASUDA Takashi <t-masuda location mvd.biglobe.ne.jp>
* fix for propperly handling 'one unknown' value ...

From: Markus Schlup <markus location qbik.ch>
* --check option for mrtg

From: Christian Birchinger <joker location netswarm.net>
* --pid-file option for mrtg

From: Willem Jaap Zwart <W.J.Zwart location TriMM.nl>
* --perhost option for indexmaker

From: Dave Habben <dhabben location illinois.net>
* fix UTF-8 warning ...

From: Moose God <grendel location moose.interq.or.jp>
* cfgmaker now treats old pre-XL Catalyst 2900 the same as any other
  non-CiscoIOS Catalyst switch

From: Tobi
* revisit default_avoid_negative_request_ids now it should be ok
* --debug option for mrtg
* deal more gracefully with space and other od chars in targets ...
* do not die on unknown data returned from external scripts skip router instead
* fixed win32 with long long ... MS libc does not understand %lld it need %I64d instead
* generate missing mrtg logo images automatically
* add check for correct operation of long long %lld and strtoll
* fixed daemon code

From: Ambrose Li <a.c.li location ieee.org>
* treat script output ##UNDEF## as this ...

From: Norbert Klasen <norbert.klasen location avinci.de>
*  strings for sys* are too long in cfgmaker use snmpwalk

Changes 2.9.26
--------------
From: André Silveira <ASilveira location multirede.com.br>
* with thresholds ... have two decimals in % mode
* give threshdesc and value as ar 4 and 5 of called threshprog

From: Pietro Falessi <falessi location uniroma3.it>
* propperly ignore signal 127 on UNIX

From: Leon Chang <leon.c location staff.ihug.co.nz>
* make cfgmaker foundry aware

From: "Jones, Derek C." <dcjones location GAPAC.com>
* ds3 (30) and sonet (39) are wan interface types too
  added them to the $if_is_wan group in cfgmaker

From: Tobi
* don't give up too quickly if a confcache setup entry does not match ...
* make rateup.c (64bit) work on macos x
* debug 64bit rateup ...

From: Michael C. Haller <michael location cilly.com>
* drop special MacOS X includes they are harmful on 10.2. Use bsd approach

From: Emilio Mena (emilio location satec.es)
* use long long in log files to enable logging of FAST links
  long long = 64 bit integers

From: Fernando Nieto <fnieto location satec.es>
* make cfgmaker support ifHighSpeed propperly and teach it
  about Juniper

From: "Davids, Ronald" <Ronald.Davids location Essent.nl>
* make output of cfgmaker such that indexmaker will sort propperly

Changes 2.9.25
--------------
* die gracefully when LANG is set to UTF-8 and give advice (RedHat 8)
* updated squid monitoring example

Changes 2.9.24
--------------
From: Tobi
* Fixed indexmaker which got truncated during the last release process

Changes 2.9.23
--------------
From: John Papandriopoulos <jpap location users.sourceforge.net>
* cosmetic tweaks for layout

From: Tobi
* Use Snmp Session 0.93 with option avoid_negative_request_ids enabled
* Supress Posix Locales in the locale module ... people who have LANG
  set to UTF-8 report very strange errors otherwhise.
* skip all queries to a host for one round when 1 query has returned undef.
* skip all trailing space in keys when matching interface by Name, Description, Anything

From: Francois Wolmarans <fwo location obsidian.co.za>
* remove <br> before <hr> near pagetop

From: Jeremy Hinton <jgh location visi.net>
* make Includes search in directory of main config files as well as in current directory

From: Quip <quip location quip.cz>
* addhead option for indexmaker

From: hw <hw location ksue.edu.ua>
* fix for uptime for squid and other non standard devices


From: Norbert.Klasen location avinci.de
* indexmaker: improve handling of urls given with --rrdviewer

From: webmaster location kingisme.com
* improved chinese translation

Changes 2.9.22
--------------
From: Nick Hilliard <nick location iol.ie>
* fixed pid file handling under unix

From: Tobi
* removed VERSION for ISA arry in MRTG_lib.pm ... it has no reason to be
  there, and perl 5.8 complains

From: James Overbeck <grendel location gmo.jp>
* fixed cfgmaker directory_name for template accessibility

From: John Caruso <caruso location paradiso.umuc.edu>
* fix for rateup rounding problems ...

Changes 2.9.21
--------------
From: Tobi

* finally fixed rrdtool thershold checking ...

Changes 2.9.20
--------------
From: Tobi

* Only complain about missing data for thresholds if
  someone actually wanted to check thresholds there ...

Changes 2.9.19
--------------

From: Szabo Balazs Zsolt <baxi location iq.rulez.org>
* fix for dynamic graph label ...
From: Andrea Rossi <rouge location shiny.it>
* updated italian translation

From: Tobi
* allow for empty names
* when reading cfg files make sure to quit when $_ comes back undef
* fix for jpeg+freetype+png compiles
* icons get now installed in $(prefix)/share/mrtg2/icons
* fixed row count in newly created rrd files for cases where people use
  other intervals than 5 minutes
* allow configuration of hires data store size in rrds with RRDRowCount
  configuration keyword
* make cleanurl function in indexmaker more robust
* make pagetop non mandatory
* compensate for broken SNMP counters which go negative, by adding 2**31;
* log2rrd on NT must use "|command" syntax

Changes 2.9.18
--------------

From: Tobi
* make router_connect work with host_templates too

Changes 2.9.18pre12
-------------------

From: Herold Heiko <Heiko.Herold location previnet.it>
 * --sectionhost option for indexmaker
From: Tobi
 * some more casts in rateup.c to make things work right
   when printing time values ...
 * make warnings for targets realy work
 * handle faild snmp queries more gracefully.

Changes 2.9.18pre11
-------------------
From: Tobi
 * make sure inlast and outlast never go negative if rateup is used
From: Herold Heiko <Heiko.Herold location previnet.it>
 * feature update for indexmaker
From: Peter K <peterk location inorbit.com>
 * kill warnings in rateup :-)

Changes 2.9.18pre10
------------------

From: Tobi
 * Fixing documentation on SetEnv
 * deal the mrtg-rrd returning nan for last update
 * complain if workdir has spaces in path on windows

From: "Jones, Derek C." <dcjones location GAPAC.com>
 * cfgmaker new if-filter ... if_is_wan

From: CHOI Junho <cjh location kr.FreeBSD.org>
 * fixes for korean translation

Changes 2.9.18pre9
------------------

From: Tobi
 * properly test for thresholds with % at the end
 * detect failing rateup
 * make cfgmaker really work with snmpv2 and test properly if
   snmpv2 is supported or not using ifHighSpeed
 * make translation system simpler ... by using eval
 * try to be even smarter about spaces and odd characters in
   rateup calling sequence under NT ..

Changes 2.9.18pre8
------------------
From: Tobi
 * fix cfgmaker tests for snmp v2 counters ... make sure they work
   before using them in the cfg file
 * make mrtg work if it installed in c:/program files

From: Jussi Siponen <jussi.siponen location posiona.com>
 * finish translation

From: Tobi
 * make sure failing external commands do not produce warnings in the code
   except where I want them.

Changes 2.9.18pre7
------------------
From: Tobi
 * fixed up various warnings which occurred throughout
   the code because of the introduction of -w

Changes 2.9.18pre6
------------------
From: Tobi
 * fixed up various warnings which occurred throughout
   the code because of the introduction of -w

Changes 2.9.18pre5
------------------
From: Ian Duplisse <i.duplisse location cablelabs.com>
 * using kilo is not sensible everywhere in rateup as long as
   there are still pow and log10 instances there.

From: Tobi
 * if inlast or outlast are undefined, skip update unless rrdtool is used
 * added -w to perl line in mrtg ... this should give us warnings about
   potential problems in the code ... everybody will now start complaining.
   fixed the most obvious issues already. As a side effect the code
   should work with perl 5.003 again.

From: Delev Zoran <delevz location esmak.com.mk>
 * translation to macedionan

Changes 2.9.18pre4
------------------
From: Tobi
 * rateup: if last counter value is 0, this is no problem ...
   backout of the change from pre2
 * data cleanup ... if a value is unknown, then it is set to 'undef'
 * more robust 'error' handling for strange target return values
From: Adrian Senn <adrian location senn.ch>
 * drop . from the end of hostnames in cfgmaker
From: Sergiy Guminilovych <gray location arte-fact.net>
 * improved Ukrainian translation
From: Systems Administrator <sysadmin location sunet.com.au>
 * we also are using squid if the OID matches enterprises.3495

Changes 2.9.18pre3
------------------
From: yoshimoto <enolagay location nifty.com>
 * Patch for YTics Factor Problem in rateup ...
   YTics Should work properly now ...
From: David Lee <t.d.lee location durham.ac.uk>
 * allow ../configure to work ...
From: Klemens Kasemaa <klem location estpak.ee>
 * estonian translation
From: dima location Chg.RU
 * Updated Russian translation
From: Amir Guindehi <amir location datacore.ch>
 * added missing prefix to flastmod in indexmaker

Changes 2.9.18pre2
------------------

From: Tobi
 * rateup: if last counter value is 0 then something must be wrong ...
   do not calc then
 * mrtg: add warning to lockit code when mrtg thinks that
   the user is running mrtg from two cron entries simultaneously
   on the same config file.
 * rateup: force rateup to compile static ... try realy hard :-)

From: Olexander Kunytsa <kunia location x-telecom.net>
 * updated ukranian translation

From: Simon Leinen and Mike Mitchell <Mike.Mitchell location sas.com>
 * update to SNMP_Session 0.92

Changes 2.9.18pre1
------------------

From: "MORI, Takahiro" <mori location chan.to>
 * yticsfactor was not considered when building ylab in rateup.c
   atted *yticsf to line 668 of the code

From: Tobi
 * When reading back the html file only looked at the first 40
   lines and thus ignored 5 values off the statistics on the last graph
 * Updated unix install instr to latest library versions
 * allow handling of rrd conversion for 'strange' filenames ...
 * added avgpeak option ... for ISPs who like this for billing ...
   (paid for by Advances.Com, Inc.)
 * cfgmaker should not comment out DS3 interfaces on non Cisco Gear

From: "Leitch, Roger (CRTLDN)" <Roger.Leitch location concert.com>
 * fix for withzeros option ... this did not work before

From: Roman Festchook <roma location polesye.net>
 * translation file for mrtg to ukrainian language

Changes 2.9.17
--------------
From: Tobi
 * mrtg_lib had broken scanning for Ip tables in populateconfcache
   this caused reference by IP to break

Changes 2.9.16
--------------
From: Tobi
 * Removed win32::console from daemon mode mrtg
 * updated docu to get nt mrtg started with wperl instead of perl ...

Changes 2.9.15
--------------
From: Tobi
 * new rateup.exe which creates pngs ... created using a mingw32
   gcc running as a crosscompiler on SPARC Solaris. The rateup.exe
   is not linked as a console application, so no more popping
   cmd windows ... mrtg should run quietly now ...

 * updated instructions for running mrtg on windows in daemon mode

 * new option for mrtg --logging replaces  $main::debugfile from 2.9.13.  
   It can be set to a file which will take all mrtg output. On Win32 it can
   also be set to 'eventlog' which will make all mrtg output go to the
   eventlog.

Changes 2.9.14
--------------
From: Martin.Frys location newtonit.cz
 * fix for configure ... -lfreetrype will not work :-)
From: Tobi
 * propper caching for new gd lib variant tests in configure.in

Changes 2.9.13
--------------
From: Damien <damien location detonate.net>
 * contrib mrtg_php_portal
From: HERITIER Hervé <hh location handco.org>
 * contrib iptables_acc_snmp
From: Pascal Eeftinck <arcade location planet.nl>
 * snmpv2 regexp did not match in cfgmaker
From: Alexander V Redyuk <aredyuk location irmcity.com>
 * russian translation to windows-1251 russian charset.
From: Klaus_Klein location mckinsey.com
 * contrib apc_ups monitor
From: Ratko Bucic <ratko location ban.junis.ni.ac.yu>
 * serbian language translation updated
From: O'Shaughnessy Evans <shaug location wumpus.org>
 * fix for indexmakers extension feature
From: Dinko Korunic <kreator location fly.srk.fer.hr>
 * croatian translation
From: Graziano <graziano.sommariva location elsag.it>
 * updated cfgmaker_dlci contrib with work with win32
From: Jamaludin Ahmad <jamaludin location jamalinux.com>
 * Indonesian and Malaysian translations
From: "Newman, Daniel" <NewmanD location telergy.net>
 * contrib document monitoring Cisco BPX and MGX switches with MRTG
From: Tobi
 * improved mrtg logfile format description
 * require perl 5.005 for mrtg_lib
 * populateconfcache steps across non existing tables gracefully
 * in mrtg, handle bigint more carefully and remove excess + from results
   as some perls seem to crash on them ...
 * check if gd was linked with jpeg and even freetype ...
 * if $main::debugfile is set to a writeable filename, all output form mrtg
   will go there (Firedeamon Suggenstion)
 * SNMP_Session 0.86 added ... lenient_source_port_matching replaces the add hock
   only_ip_address_matching from mrtg 2.9.11 ... AS/400 folks beware
 * added --section=portname to indexmaker
 * try to fix IsCounterBroken test in cfgmaker ... just cant find any broken
   coutners to test this :-(

From: Jakob Ilves <jakob.ilves location oracle.com>
 * configuration templates for cfgmaker ... read the docs
 * fix for broken --dns-domain in cfgmaker
Changes 2.9.12a
---------------
From: Tobi
 * the windows binary  rateup.exe creates gif file ... fixed mrtg accordingly ...
 * no changes to unix mrtg

Changes 2.9.12
--------------
From: Tobi & Jeff Frost <jeff location digitalpipe.net>
 * fix for broken RouterUptime[] configurable

Changes 2.9.11
--------------
From: Mike Mitchell <Mike.Mitchell location sas.com>
 * fix for broken snmp with returns negative numbers for counters ...
 * integrated my SNMP_utils changes into the real thing.

From: Tobi
 * make sure cfgmaker puts now raw < or > into the PageTop tag

From: Chad Mynhier
 * properly integrated ytics support in rateup

From: Diogo Gomes <etdgomes location ua.pt>
 * Portuguese translation for mrtg

From: Thomas Abthorpe - Tby. * <tabthorpe location cgc.ca>
 * The period "." was missing in front of $$rcfg{extension}{$item}.
   in indexmaker

From: James Overbeck <grendel location interq.ad.jp>
 * properly deal with target math resulting in non integer data even when
   logging to rateup which can not deal with floats.


From: Simon Butcher <simonb location alien.net.au>
 * cleanup of rateup.c and some new options -b -a -o -i
 * new options for mrtg noborder, noarrow, noi, noo, nobanner and nolegend
   check reference.pod for docs.
 * generator meta tag to html pages

From: Gerry Van Steerteghem <gerry.vansteerteghem location pandora.be>
 * add hyperlinks to 14all compatible indexmaker pages

From: David Boyer <Boyer_D location glan-hafren.ac.uk>
 * contrib mrtg.php produces live index

From: David A. Pérez <david location kamborio.com>
 * contrib TTrafic a *.log analyzer in asp

From: Ratko Bucic <ratko location ban.junis.ni.ac.yu>
 * serbian language translation

From: "Gill, Vern" <vgill location technologist.com>
 * contrib iptables-accounting

From: Dan Lukes <dan location gw.nic.cz>
 * allow configure to work even if you have a gdlib which supports BOTH gif and png

From: GOMEZ Henri <hgomez location slib.fr>
 * add 'only_ip_address_matching' feature to SNMP_Session. We are
   more libaral when accepting snmp responses now.

From: Tobi
 * be more tolerant with external scripts input
 * added feature to SNMP_utils: If first snmp var name is a HASH pointer,
   the hash contents is used to set snmp options on the connection
 * handle descriptions with & in cfgmaker
 * added SnmpOptions: command to mrtg.cfg lanuage ... It allows
   to set Snmp Options as available in SNMP_Session. Check the reference.txt file.
 * test for availability of ifHCInOctets when running cfgmaker for v2 targets
   suggested by  Pascal Eeftinck <arcade location planet.nl>
 * fixed indexmake image path for situations with Directories
 * added option --prefix to indexmaker for people keeping thier index
   somewhere else than default.
 * honor background option in cfg file for indexmaker pages
 * fixed warning in indexmaker (Use of uninitialized value in concatenation <.> at indexmaker line 174)
 * when the integer option was specified, there was still a .x printed in the sumary area ...
 * updated url in ircstats2 README
 * mrtg will now timestamp any warning and error message it emits
   suggested by SUZUKI Yasuhiro <ysuzuki location bb.mbn.or.jp>

From: Juha Laine <juha.laine location soon.fi>
 * fixed threshold processing ... IT REALY WORKS NOW! ...
   **** Incompatible CHANGE ****************
   ThreshProgOK now gets the same
   commandline arguments as the normal ThreshProg ...
   **** Incompatible CHANGE ****************

From: Alexey Milevsky <alex location pbank.donetsk.ua>
 * configurable confcache (.ok) file location

From: Anthony Howe <achowe location snert.com>
 * add <meta http-equiv="Cache-Control" content="no-cache">
   to html files as this seems to be more understandable than "Pragma" content="no-cache"

Changes 2.9.10
--------------
From: Tobi
 * reintroduced new cfgmaker ... somehow it got replaced by an older version
   in 2.9.8 and 2.9.9

Changes 2.9.9
-------------
From: Tobi
 * accept numbers starting with + comming from snmp
 * changed library version to  2.090009

Changes 2.9.8
-----------------
From: Tobi

 * indexmaker does now also honor ImageDir and problems in connection with
   the directory option. The result should be fewer broken links in index
   files.
 * better documentation on how to suppress images in indexmaker
 * remove potential newlines and padding from snmp response
 * added new global config: SingleRequest to force single variable
   snmp requests.
 * switch group before user if --group is used when starting mrtg
 * added special legends for perminute and perhour
 * new option for indexmaker --pagetop
 * if threshdir is defined, run thresholdprog* only when a boudery has been
   crossed.
 * better documentation of threshold programming
 * only run threshprogs if there are threshold bounderies defined
 * make threshold checking work better ... only run the threshold               
   programs when a threshold boundery has been crossed ...                      
 * threshold stuff should be realy working now                                  

From: Fernando Braghetto - Webmaster Hiway <webmaster location hiway.com.br>
 * total control modem config

From: Sune Kirkeby <sune location silvertag.com>
 * configurable lockfile locations

From: Tim Cimarusti <tim location cimware.com>
 * update for ciscoindex contrib

From: Michael Bussmann <bus location fgan.de>  
 * update mrtgindx.cgi to work with .png files

From: Steven Shipway <Steven_Shipway location adsweu.com>
 * Steven has a MRTG&RRDTOOL website now. Replaced references and contribs
   with links to http://www.cheshire.demon.co.uk/pub/

From: Gianmarco Armellin <gianmarco location armellin.com>
 * index.html?.meta code was not working

From: Us <us location sweet-sorrow.com>
 * slovenian translation

From: Andres Kroonmaa <andre location online.ee>
 * add commandline to generated output of indexmaker as a commet

From: Andrew Ivanov <ivanov location rbc.ru>
 * snmpoptions were disregadrded in the table population area of the script

From: Simon Lyall <simon.lyall location ihug.co.nz>
 * more tolerant matching for Description in indexmaker

From: Anthony Fabian <anthony.fabian location comindico.com.au>
 * fixed threshold feature: threshprog was not getting the right parameters
   when called

Changes 2.9.7
-------------
From: Tobi
 * improved scanning of results from external scripts ...
 * in cfgmaker remove excess \ in Titles

From: Wolfgang Hoffmann <woho location netpark.at>
 * new mrtglog programm in contrib

From: Tobi and Daniel Elvin <daniel.elvin location fagotten.org>
 * added --show-op-down parameter to cfgmaker

From: Jakob Ilves <jakob.ilves location oracle.com>
 * massive enhancement to cfgmaker ... the beast has become much more
   configurable. Hold on to your hats, there is more to come.

From: Simon
 * Upgrade to snmp_session.pm ... the beast was not reacting to udp packets
   coming from another interface of the router.

Changes 2.9.6
-------------
From: Tobi
 * downgraded rateup code ... 2.9.5 was completely broken
 * fixed .pid fiel code ... now it should work, and double starts of mrtg
   will get prevented as well ...

Changes 2.9.5
-------------
From: Jakob Ilves <jakob.ilves location oracle.com>
 * rewrote  --ifdesc in cfgmaker ... there are many more options now

From: O'Shaughnessy Evans <oevans location acm.org>
 * fixes for cfgmaker (--help, --noreversedns and version param)
 * fixes for indexmaker (--help, --version, added man info on section=descr)

From:  Do Jong Gwan <daker location metri.re.kr>
 * rules for activating threshold checking were not ideal ...
   (often it did not get activated when it should)

From: Tobi
 * removed extra space in hrefs in indexmaker pages
 * make configure catch missing gd.h
 * make sure no two mrtg daemons run on the same cfg file in parallel.
 * proper exit values for cfgmaker and indexmaker
 * rewrote threshold checking to be more perlish
 * thresholds can now be specified in % of maxbytes to activate this,
   they must end in '%'

From: Tobi & Luiz Encarnacao <lfencarnacao location hotmail.com>
 * All translations had bad formating in the credit line (extra font and td tags)

From: Justin Schoonover <JustinS location dis-corp.com>
 * Make Rateup honour the yticsf properly

From: Tobi
 * Removed 14all.cgi from the contrib section and replaced by a pointer
   to Rainers website. This ensures that people get the current version
   and not some outdated code from my contrib archive.

From: Curtis Doty <Curtis location GreenKey.net>
 * add refresh and expiery to indexmaker pages
 * fix rateup.c to honor weekformat when drawing grid lines "Format U"

From: Tobi & Mac Daddy <macdaddy location vinnie.ksu.ksu.edu>
 * New BodyTag configurable lets you customize the webpages <body ..> tag

From: Alex <alex location nac.net> and Tobi
 * fix for external data sources sending "" as response breaking the logfile problem

From: Hubert Figuiere <hfiguiere location teaser.fr>
 * Support for MAC OS X

From: Simon Leinen
 * Update to SNMP Session 0.81

From: Bernard Martinet <Bernard.Martinet location grenet.fr>
 * Fix for parsing of 'by name' matchin target parser ...

From: Miroslaw.Maczka location bze.com.pl
 * update to nt-service

From: Tobi


Changes 2.9.4
-------------
From: Curtis Doty <Curtis location GreenKey.net>
 * excess whitespace after cfgmaker ECHO line was wrecking havoc

Changes 2.9.3
-------------
From: Andrew Farrior <afarrior location king.vc.cc.tx.us>
 + teach cfgmaker about catalyst port names
From: O'Shaughnessy Evans <oevans location acm.org>
 + cfgmaker will now add a SetEnv line to each router config block
 * improved cfgmaker docu spelling
 + indexmaker change --section=descr so that it doesn't include the basic                   
    interface description unless it doesn't have a Cisco description
    to use; adds/docs a new option, --show=none, which disables inclusion of               
    any graph in the index page
From: Kevin Benton <s1kevin location sotatech.net>
 + contrib gentcucci
From: Matija Grabnar <matija.grabnar location arnes.si>                                     
 + teach log2rrd to honour perhour and perminute options
From: Dan Harkless <mrtg location dilvish.speed.net>   
 + made cfgmakers --subdirs option way more flexible
From: Yo <dgb97 location yahoo.com>                                                         
 + tranlation into galician
From: Dimitrios Stergiou <dste location intranet.gr>     
 + contrib procmem ... cisco cpu monitoring
From: Jeff Liebermann <jeffl location comix.santa-cruz.ca.us>
 * fixed  location dddd[] structures in gb2312.pmd
From: John Begley <maslow location mediaone.net>
 * CEF subinterfaces are not 'graphable' (cfgmaker)
From: Tobi
 * forking code revisited again ... missed closing a handle
   which was wrecking havoc on log files
   on certain OSes. No idea how this could happen but it did ...
 * fix for complex target parser in conection with escaped characters
 * updated the reference doc description of absolute and gauge to be more concise
 * check is RunAsDeamon is set to yes
 + cfgmaker option --noreversedns
 + add options --user and --group to mrtg script to allow setting user and group
   when starting mrtg as a daemon from init.d (idea from Dan Harkless <mrtg location dilvish.speed.net> )
From: Francis VIVAT <francis.vivat location cetp.ipsl.fr>                 
 * add start command line to runasdaemon section of nt-guide
From: Chris Pepper <pepper location mail.reppep.com>
 * about 1000 spell fixes for the mrtg docu
From: Dan Harkless <mrtg location dilvish.speed.net>
 * spell fix for MRTG_lib.pm again ...

Changes 2.9.2
-------------
From: Tobi
 * revisited and fixed forking code. mrtg was not stable when run as daemon
   with forking enabled. Aftermath of the confcache problems in 2.9.0
 * cfgmaker was not working properly when multiple routers were specified on the commandline
From: Dan Harkless <mrtg location dilvish.speed.net>
 * cfgmaker fixes: spelling, quote arguments with space, make --subdirs work
 * MRTG_lib.pm include file error message had misspelling and output wrong file.
From:  donlong <donlong location seed.net.tw>
 * updated big5 translation

Changes 2.9.1
-------------
From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 * problem with confcache update marker
From: Dan Harkless <mrtg location dilvish.speed.net>
 * Various documentation spelling and version number fixes.
 * Change whatis.* doc files to mrtg.* to not conflict with system whatis.1.
From: Lars Christiansen <lcr location dk.uu.net>
 * get subif description on cisco hssi interfaces in cfgmaker

Changes 2.9.0
-------------

* The rrdtool integration allows for massively increased logging
  performance.

* Routers which change their interface numbers are no problem any more.
  MRTG can now reliably address interfaces by IP, MAC, Description,
  Name and Type. The cfgmaker tool has been rewritten from scratch and
  allows to generate configurations with any of the above mentioned
  interface addressing methods.

* Indexmaker has be rewritten from scratch, it is now much more
  flexible and fully documented.

* All the MRTG documentation has been reviewed and ported to perls
  "Plain Old Documentation (POD)" format. This allows to provide all
  documentation in text, HTML and man format. It is now all available
  on the MRTG web-site.

* Config file parsing has been optimized. This makes reading
  configuration files much faster. Especially large configuration files
  are faster by factors

* Under UNIX, mrtg can fork into several instances while querying
  routers.  This improves data acquisition performance dramatically,
  especially with slow networks.

* Graphs and webpages can be generated on the fly is mrtg is used with
  rrdtool logging. Several tools in the mrtg contrib section are
  available for this purpose.

* And there is more: MRTG has been translated into 29 languages, OS
  detection has been automated, did I mention performance, many of the
  contributed tools have been dated and a slew of new ones has been
  added, The config file reading code is now available in a documented
  library which simplifies the creation of other tools which need
  access to the mrtg cfg file.

Details:

From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - new version of 14all.cgi
----pre33-------------
From: Justin Shore <listuser location vinnie.ksu.ksu.edu>
 - End MRTG Block comment was going to STDOUT ...
----pre32-------------
From: Tobi
 - do not threshold check if cuin or cuout is undef
 - join continuation lines with newline
 - moved End MRTG Block coment to the right place
 - allow forks: 1 but ignore it ...

----pre31-------------
From: Tobi
 - indexmaker with no sorting was broken in pre30 ...
From: Curtis Doty <Curtis location GreenKey.net>
 - improved sorting for repeated titles in indexmaker
----pre30-------------
From: Tobi
 - removed exess close from forking code ... it seems that perl hates it when
   I try to close a FH of a dead pipe
From: Gereon Ruetten <gently location baer.rwth-aachen.de>
 - contrib:  script for using mrtg with iptables
From: Dimitar Pashev <mitko location banksoft-bg.com>
 - mrtg can now also run as daemon ... check reference.txt
From: Curtis Doty <Curtis location GreenKey.net>
 - added --descint  option to cfgmake
   describe interface instead of just 'Traffic Analysis for'
From: Tobi & Alex
 - added query test to cfgmaker (it now does a test query to see if the interface
   does acctually have traffic counters)
From: Peter <webmaster location appleclub.com.hk>
 - gb2312 translation
From: Jonathan Cohn <jccohn location lightningcast.net>
 - better equipment identification for cfgmaker
   ... cisco and nokia got mixed up du to a missing .
From: Patrik Andersin <cat location bbnetworks.net>
 - mrtg was not accepting withzeroes option (typo in cfg checker)
From: "Starkweather, Mike (CNS)" <mike.starkweather location anheuser-busch.com>
 - NT does know -x ... repaced it with -e in threshprog*
From: O'Shaughnessy Evans <oevans location acm.org>
 - allow capitals in SetEnv
 - cfgmeker added option --subdirs ... give subdir to each router
From: Tobi
 - kill and \r in cfg files created on DOS and used on unix
----pre29-------------

From: tobi
 - fixed cfgmaker ... problem with confcache content ...
 - cfgmaker .. autoquote commandline in cfgfile
 - cfgmaker ignore agregate interfaces (53) on cisco

----pre28-------------
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - upgraded to 14all.cgi 1.1.p5

From: O'Shaughnessy Evans <oevans location acm.org>
 - allow to use Description for sectioning in indexmaker

From: Adrian Turcu <adi location cfrcta.ro>
 - contributed mrtgrq ... quota monitoring script
 - contributed net-hosts for monitoring a set of hosts using fping

From: Robert Boyle <robert location tellurian.com>
 - updated version of PMLines which works with Portmaster 2 to 4

From: tobi
 - added query by ifType (I know this is sick)
 - when using forking the confcache updates were not propagated back to the calling process
 - properly detect situations where the Interface number can not be determined

----pre27-------------
From: John Lange <john.lange location darkcore.net>
 - update for ipchains script
From: Tobi
 - fix for indexmaker ... $$item problem
----pre26-------------
From: Brian Mudge <bmudge location nortelnetworks.com>
 - fixed showstoppers in mrtg and cfgmaker

----pre25-------------
From: Tobi
 - added xff parameter for log2rrd function in accordance with rrdtool 1.0.27
From: Michele Michelotto <michele.michelotto location pd.infn.it>
 - removed excess <cr> from locales
From: blube location floridadigital.net
 - make cfgmaker comment out DS3 controlers ... they do not count their traffic
From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - made PID file name generation robust to cfg files without extenssion
From: Mattias Lilliesköld <mattias.lillieskold location martinsson.se>
 - make cfgmaker recognize options[^]: bits
From: Thomas Abthorpe - Tby. * <tabthorpe location cgc.ca>
 - go for threshold checking if threshdir is defined
----pre24------------
From: Robert Boyle <robert location tellurian.com>
 - Contrib PM4lines, the Lucent Portmaster 4 monitor
From: Lucas Nussbaum <Lucas location ians.be>
 - create a pid file when mrtg gets executed in daemon mode
From: Thomas Abthorpe - Tby. * <tabthorpe location cgc.ca>
 - fix for configurable file extension in indexmaker
From: Juergen Baier <baier location ip-plus.net> and Jacques Supcik
 - fix for 'target by Ip' name matching code
From: Tobi
 - fixed router uptime ... was not asking on the right target ...
From: Steven.Shipway location adsweu.com
 - updated contrib/routers to version 1.0
 - contributed contrib/servers.cgi
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - fixes for 14all.cgi ...
 - more debbugging information in log mode about what happens when rrdtool and rateup run
----pre23------------
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - fixed threshold support for rrdtool mode
 - -w fixes for MRTG_lib.pm
 - relax check for going into threshold mode

From: Tobi
 - pre22 optimisation in target parser broke it ... fixed now
   complex targets get parsed properly
 - fixed indexmaker in connection with the directory option

----pre22------------
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - updated version of 14all.cgi
 - identify threshold checking configs properly
 - fixed snmp level 2 identification for simple targets
 - add default values for background and backgc

From: Benoit Artuso <benoit location proxad.net>
 - fix for confcache regeneration

From: Bjorn Nordbo <bn location nextra.com>
 - fixes for forker (trgnum was wrong ...)
 - fixes for missing 'directory' support in log2rrd

From: Tobi
 - use OS installer if one is available
 - lost a line from cfg file reads ... fixed
 - added OS detection to MRTG_lib so no more main:: stuff is necessary.
 - test for existence of work/log/html/image dir, try to reate if missing
 - Used SmallProf on cfgparser found a grep which was bogging everything
   down ... together with some other small optimizations this brought
   the config file reading in my test case (900 simple  targets) down
   from 30 seconds to 7 seconds ... SmallProf rules (or if you look at the
   total runtime (I am using fork 10) this went down from 43 to 21 seconds

----pre21------------

From: Lucas Nussbaum <lucas location ians.be>
 - contrib: ircstats2.pl a script used to monitor the user load on IRC networks.
   Contrary to ircstats by Matt Ramsey, it remains connected to the server.

From: Tobi
 - add mask to mkdir call it seems some perls can't deal with
   the simple form ...
 - fixed forking code ... I think I got the typeglob magic right now.  note,
   when experimenting with the number of forked collectors, more is not
   always better. Eg, If you shoot two collectors at a single router in
   parallel this may prove to be slower than having one collector at work.
   As a rule of thumb you might want to try a fork equivalent to the number
   of routers you are monitoring ... (my record with forking, RunAsDaemon
   and RRDtool is 800 interfaces in 13 seconds ...
 - added the Include: keyword to the config parser as discussed on the ML

----pre20------------
From: Matthew Schumacher <schu location schu.net>
 - upate to cpu info
From: Tobi
 - fixed start time for newly created rrds ... this must be $time-2 not $now
 - fixed quick check rules for maxbytes1 and maxbytes2
 - missing directory[xxx] entries will get autocreated
 - modified quickcheck rules ... instead of strings we use anonymous subs
   now ... this has the advantage of perl actually compiling the stuff and
   thus finding errors in the checks even when they are not exercised ...
 - ***EXPERIMENTAL*** added forking function. If you run mrtg
   on a system that can fork (UNIX for example) you can try the
   new 'Forks:' option in the config file. The result of this is
   that mrtg will fork into several instances prior to
   going out to ask the routers for snmp data. For situations with
   high latency as well as mrtg.cfgs with many different devices
   this will speed things up considerably. It will not make things faster
   if you query a single switch sitting around next door.
   As fahr as I know NT can not fork so I have disabled this for NT.

   If you measure some performance data with this approach please let me
   know how much faster you went ...

----pre19------------

From: Roy-Magne Mo <romo location interpost.no>
 - binaries must be installed with 755
From: Tobi
 - when eval fails in target we die
 - relaxed target parser to cope with oid names which have no dots at all and
   oids starting with a dot.

----pre18------------
From: Tobi
 - cfgmaker will disable cisco interfaces with description VLAN..
From:  Ferenc Toth <ftoth location infobal.com>
 - MRTG_lib.pm target parser for complex targets (&) was broken in pre16 .. (off by one error)

----pre17------------
From: Tobi
 - fixed directory option to generate proper img paths under NT (untested)
 - made cfgmaker output more useful looking
 - fixed sorting order in cfgmaker
 - added --no-down swith to cfgmaker for querying downed interfaces all the same
 - fixed operstatus tests in cfgmaker
 - fixed problem in indexmaker. it did not work properly with multiple files. SRC path was wrong
 - fixed potential problem with ensureSL where a final / was added to an empty string ...
 - added new interface reference type ifName introduced in mrtg and cfgmaker ifname references
   are introduced by the # character. Check the reference and the cfgmaker man pages
 - improved mrtg performance by not asking for uptime and sysname with every target when doing
   logformat rrdtool
 - fixed lost uptime and sys name querying for rateup logformat

From: Steven.Shipway location adsweu.com
 - updated contrib/routers to version 0.11

----pre16------------
Thomas Abthorpe - Tby. * <tabthorpe location cgc.ca>
 - fixed broken header introduced in pre15 :-)
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - reenabled threshold checking which got inadvertedly disabled
   in pre15
 - cosmetic fixes for MRTG_lib.pm
From: Tobi
 - we die always if we get errors from RRDs
 - moved read/write confcache functions into MRTG_lib

----pre15------------

From: Tobi
 - fixed problem with confcache where mrtg did not see that the confcache was
   already populated and thus repopulated it on every target ... this means that
   for all Descr / Ip and Eth targets we get a performance improvement of 1000%

 - fixed problem with calculation targets (adding results from two interfaces and such)
   this did not get detected properly ...

 - integrated automatic log to rrd convertor ... if you have configured
   logformat: rrdtool and and are running for the first time,
   your old .log file will be converted to the new rrd format of rrdtool.
   the .log files will not get removed. So that you can compare the old with
   the new graphs. Note that this is a VERY NEW feature and it may well not
   yet work exactly as planned ...

 - replaced the UseRRDtool cfg parameter with logformat: rrdtool. Check
   the doc/mrtg-rrd.txt file for details. (NOTE: 14all.cgi has not yet been
   modified to work with this new convention, but Rainer said he will do it in
   a few adays after his exames)

 - added -w switch to mrtg, cfgmaker and indexmaker ... found&fixed
   many little problems in the process

 - fixed problem with missing space in per and posttargers

 - Rearanged directory layout to follow more traditional
   lines. Binaries are in bin/ libraries in lib/mrtg2

 - adepted Makfile to also install in these directories

 - adapted documentation

 - fixed some issues with cfg reading introduced when splitting mrtg into MRTG_lib.pm

 - fixed error handling with RRDtool

From: William P. McGonigle <William.P.McGonigle location artoo.hitchcock.org>

 - if writeexpire has been defined, create one for the index.html file as well

From: Kit-pui Wong <kpwong location etnet.com.hk>
 - fixed alignement of indexmaker graph titles ...

From: Miroslaw.Maczka location bze.com.pl
 - a rateup for NT which produces pngs so finally no mode gifs for NT as well

From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - Documentation for MRTG_lib and some better argument checking for
   MRTG_lib

From: Curtis Doty <Curtis location GreenKey.net> & Tobi
 - use FindBin to determine location of modules. Revamped all the
   library finding code in mrtg
 - indexmaker fix for filter regexp and some output fixes

----pre14------------

From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - more flexible config parsing functionality added to
   MRTG_lib.pm in preparation for a better configurable
   14all.cgi due out soon.

From: Tobi
 - fixed NT path issues ... backslash is a bitch in re ... needed to
   put some \Q and \E in to fix things ... (I am amazed it did run at
   all befor this hmmm.

From: Curtis Doty <Curtis location GreenKey.net>
 - fixes some install errors in Makefile.in

From: Thomas Brian Granier <BrianG location zebec.net>
 - NT verion wanted to create "zip" instead for "gif" fixed

----pre13------------

From: Tobi
 - reworked directory[x]: and general path issues with
   mrtg ... maybe it works now ...

 - default graph format for NT is gif (until someone submits a
   rateup.exe which is compiled with a recent gd)

 - fixed bug in confcache code which prevented proper matching
   of non ifnum targets

 - modified parsing rules for EXEC targets, COMMUNITY
   and DESCRIPTION ...
   EXEC backticks can be used inside when escaped like this: \`
   COMMUNITY space and @ can be used like this \ location  and "\ "
   DESCRIPTION space and : can be used with "\ " and "\:"
   in all other combinations the \ has no special significance

----pre12------------

From: Tobi
 - made SNMPv2c queriing work ... the target parser did not properly
   see :::::2

----pre11------------
From: Tobi
 - fixed target nameing in cfgmaker
 - fixed 'no workdir' error in mrtg
 - fixed populateconfcache for setups with communities other than 'public'

----pre10------------
From: Tobi
 - fixed cfgmaker man page to use " for --global delimiters
   as NT seems to have no clue on '.
 - added hint on escaping ! to the indexmaker manual
 - added mrtg version to documentation pages

----pre9------------

From: Tobi
 - fixed RunAsDaemon Code ... target array should not get deleted
   between runs.
 - fixed mrtg target parser for If number 0 case ...

----pre8------------
From: Curtis Doty <Curtis location GreenKey.net>      
 - fixes for Makefile install routine

From: Simon Barnes <barnes location gatwick.Geco-Prakla.slb.com>
 - fix to test for validty of results from data returned
   by 'external' targets.It was inverted.

From: Tobi
 - added missing semi colon to indexmaker
 - added requirement for perl 5.005 to indexmaker and cfgmaker
 - added part of the PodParser module so that things work
   with perl 5.005

From: Alex
 - spell fixes for unix-guide.pod, forum.pod, contrib.pod

----pre7------------
From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - contrib / version 1.0p16 of 14all.cgi

From: Benoit Artuso <benoit location proxad.net>
 - images did not get generated in the correct place with the 'directory' option

From: Tobi
 - converted all documentation to pod format and added several new
   chapters ...

 - created new mrtg homepage which links all available documentation online

 - created new installation guides for unix and nt

 - complete overhaul of the target parser (NOTE: it is NOT
   a horrible Hack any more ... look at the code (tobi is proud)

 - along with the target parser I also replaced all the snmpget logic.

 - calling Interfaces by ifNumber, Ethernet Address, IP Number
   or Description are all neatly integrated in the code. No more
   Horrible Hacks. Along with data polling, the Interface nubmers
   get double checked. If a reconfiguration occures, mrtg automatically
   gets the new configuration from the router.

 - MRTG does *NOT* notice config changes on Interface Numbers anymore.
   This means if you have devices which change interface numbering
   do not call the interfaces into the mrtg.cfg by number but rather
   by Description or by Ip.

 - added new debug facility to mrtg. Different debug levels can now be called
   by name. Check the beginning of the script.

 - when using rrdtool, mrtg now also deals with *UNKNOWN* and non integer
   values.

 - extracted some functionality of mrtg into an external module called
   MRTG_lib.pm. This module is now used by cfgmaker and indexmaker. For
   indexmaker this means that it uses the same cfg parsing engine as mrtg
   proper.

 - over all about 30% of mrtg got replaced by brand new and rather clean
   code.   

 - complete rewrite of cfgmaker ... try cfgmaker --help for instructions
   cfgmaker can now produce config files with interface identification by
   Number, Ip, Description and Ethernet Address

 - complete rewrite of indexmaker ... the old code was broken beyond reason.
   options are different in the new indexmaker. Use indexmaker --help for help.

 - added RRDs detection to configure script (--with-RRDs can be used to
   set a path explicitly

----pre6------------
From: Tobi
 - added automatic OS detection ... no more editing mrtg
 - better isolation of graphics format ... ${main::GRAPHFMT}
 - made imagedir logdir and htmldir work
 - fixed infinite loop for workdir configs
 - added $! to most open calls for better error reporting
 - reviewed and updated install instructions in README

From: Ilja Pavkovic <illsen location gumblfarz.de>
 - update fuer deutsches locale
----pre5------------
From: Tobi
 - removed debug output from mrtg
----pre4------------
From: Yovko Lambrev <yovko location plov.omega.bg>
 - fixed bulgarian translation
From: Rainer and Tobi
 - added docu for PageFoot to config.pod
From: Tobi
 - extension config did not work ... now it does
From: ve location hardcore.lt
 - update to lithuanian locale
From: Tobi
 - made new options imagedir logdir and htmldir work
From: Simon Leinen <simon location limmat.switch.ch>
 - some SNMPv2c additions to SNMP_util.pm
From: Tobi
 - added SetEnv[xyz]: option to mrtg.cfg for passing information on to
   external scripts.
From: John Dunning/NS/WSC <jodunni1 location wsc.edu>
 - added -d option to indexmaker wich makes index.html files go into
   the directory with the data files for a target
From: Matija Grabnar <matija.grabnar location arnes.si>
 - added RRDtool / 14all.cgi awareness to indexmaker
From: CmdrData <CmdrData location ex-pressnet.com>
 - contrib nt_n_cisco some tools for running mrtg with ms-sql and cisco gear
From: Graziano Sommariva <Graziano.Sommariva location elsag.it>
 - contrib cfgmaker_dlci
From: Rainer Bawidamann <Rainer.Bawidamann location rz.uni-ulm.de>
 - made theshold configs working in connections with UseRRDtool: yes
 - updated 14all.cgi in contrib to 1.0p13
From: John Lange <john.lange location darkcore.net>
 - contrib: ipchains accounting script with mrtg
From: Justin Shore <macdaddy location ieee.org>
 - added comments into generated webpage for easier parsing
From: Hui Zhang <zhanghui2 location asiainfo.com>
 - added chinese locale gb
From: Thomas Lehnig <thomas location valinor.escape.de>
 - add new config option 'factor' for scaling the values
   printed below the graph
From: Colin Morey <colin.morey location emaponline.com>
 - allow to split images, logfiles, webpages into different directories
   introduces HtmlDir ImageDir LogDir .
From: Chris Knipe <cgknipe location mweb.co.za>
 - contrib: monitor -- NT/Access/ASP based network monitoring system using mrtg technology.
From: Oleg Krotoff <krot location tnsplus.kz>
 - contrib: mrtg-archiver-script
From: Ladislav Mihok <laco location mrokh.shmu.sk>
 - slovak translation for mrtg
From: Martin Rřsjorde <martin.rosjorde location vestfold.eltele.no>
 - improved norwegian translation
From: Michael Med <michael.med location rrz-wien.raiffeisen.at>
 - make complex TZ settings work with rateup in solaris. By copying
   the localtime data to private memory.
From: Walery Kokarev <w.kokarev location link-ul.ru>
 - Added withzeroes option for people who want zero sample considered in their
   average transfer rate.
From: Ů¤Âęąű <gamago location sina.com>
 - simplified chinese locale
From: Patrick Koppen <koppen location unix-ag.uni-kl.de>
 - make -r work in indexmaker
From: Nick Hilliard <nick location iol.ie>
 - fix for title case in indexmaker (this should take care of the pagetop problem)
From: Tobi and Albert Chin-A-Young <china location thewrittenword.com>
 - added install target to Makefile default prefix is /usr/local/mrtg-2
From: Jodok Sutterluety <jodok location sutty.at>
 - added extension option for people who want their pages end in something else than .html
From: Zaphod Beeblebrox <zaphod location goatrance.com>
 - bulgarian locale
From: "John H. Robinson, IV" <jhriv location ucsd.edu>
 - made cfgmaker print interface speed with apropriate units if we think in
   bits
From: Miroslaw.Maczka location bze.com.pl
 - contrib nt-service: make mrtg a service under NT
From: Nathan Wiger <nathan.wiger location west.sun.com>
 - make sure no name gets used twice
 - all errors from cfgmaker should go to STDERR
From: x <tomm02 location yahoo.com>
 - contrib snmpping.pl see if a device speaks snmp
From: Johannes Demel <demel location zid.tuwien.ac.at>
 - fixed minimal hearbeat to be in sync with Interval parameter
   when using RRDtool
From: Simon Leinen <simon location limmat.switch.ch>
 - new version of SNMP Session which can do SNMPv2c
   this allows to poll the ifHC??Octets counters (64Bit) if
   your router supports them ... No more wrapping in this life
   or half life anyway. If you specify y:public location router1:::::2
   this will poll the HC counters. This will only work if
   your router supports it ...
From: Richard Kwong <richard.kwong location cwo.com.au>
 - fix for ytics in rateup
From: Tobi and "Purvis, William" <William.Purvis location compaq.com>
 - added nomib2 option to supress 'sysUptime', 'sysName'
   queriing .... some devices do not support this.
From: Matthew Schumacher <schu location 7x.com>
 - update for contrib/cpuinfo
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - improved rrdtool integration ...
From: Tobi
 - added default for interval in case it does not get set
From: Anton Voronin <anton location urc.ac.ru>
 - additional syntax for Target:
   Target[ezwf]: \My-Interface2:public location wellfleet-fddi.ethz.ch
   use the interface description
From: Jozsef Szilagyi <szjozsef location texnet.ro>
 - improved romainan translation
From: Alon Goldberg <pyro location boss.elapsed.net>
 - bugfixes for contrib/diskmon/getdisk.pl
From: Steven.Shipway location adsweu.com
 - contrib routers: CGI frontend to mrtg/RRDtool
   check example on http://ukpavu99.adsweu.com/cgi-bin/routers.cgi
From: ve <ve location hardcore.lt>
 - pmd file for Lithuanian language
From: Miroslaw.Maczka location bze.com.pl
 - contrib Informix Performance monitoring
From: Roddy Strachan <roddy location satlink.com.au>
 - contrib Access-list Monitoring via MRTG
From: Clas Mayer <cmayer location lulea.amu.se>
 - swedish translation
From: Simos Xenitellis <S.Xenitellis location rhbnc.ac.uk>
 - improved greek translation
From: Christian Rost <cr location rocon.de>
 - spell fixes for german.pmd
From: seweryn location anatema.torun.pdi.net
 - spell fixes for polish translation
From: Tobi
 - shame on me ... all these nice translations and I forgot to update the MANIFEST ...
   now they are all in ...

Changes 2.8.12
--------------
From: Tobi + Hoorelbeke Rik <rik.hoorelbeke location online.be>
 - make -M and -r work in indexmaker
From: Levente Nagy <levinet location euroweb.hu>
 - hungarian translation
From: Peter Gervai <grin location tolna.net>
 - NoSpaceChar option. Supresses SPACE normally inserted between local value and PRE
   or APPEND value.
From: Francois Wolmarans <fwo location obsidian.co.za>
 - new features for cfgmaker --iponly, --options, --workdir
From: Tobi Oetiker
 - make RunAsDaemon work ...
 - Daemon mode now forks into background after cfgcheck
 - Remove locks after sig INT and TERM
 - make indexmaker ignore default values
 - added ThreshDesc config option. Its value is assigned to the env variable
   THRESH_DESC before and of the Thresh-Action scripts are called.

From: "[big5] ¶ŔŞF¶©" <donlong location mail.pouchen.com.tw> and Tate <tate location joy-tech.com.tw>
 - bugfix for big5 locale
From: knut.groneng location merkantildata.no
 - bugfix for norwegian.pmd


Changes 2.8.11 (2000/01/17)
--------------
From: Lucas <Lucas location Kewl.Org>
 - it is RunAsDaemon and not RunAsDeamon

Changes 2.8.10 (2000/01/16)
--------------
From: Rainer.Bawidamann location informatik.uni-ulm.de
 - update for rrdtool integration 14all.cgi to 0.16
From: Morten S. Nielsen <msn location ipt.dtu.dk>
 - updated danish translation
From: Francois Wolmarans <fwo location obsidian.co.za>
 - have cfgmaker put specific comments into the mrtg.cfg file
   regarding the reason for droping a certain interface ..
From: Krister Karlsson <krister.karlsson location enator.se>
 - Added RunAsDeamon mode. Start mrtg only once. No Cron necessary.
From: Ronald Florence <ron location 18james.com>
 - linux ip-filter integration in contrib
From: Iulian Radu <iulian_r location starnets.ro>
 - version 2.2 of mrtgmk in contrib
From: LLuís Gras <lluis location seccat.com>
 - catalan locales
From: John Line <webadm location info.cam.ac.uk>
 - rateup.c fix for kMG override bug
From: John Line <webadm location info.cam.ac.uk>
 - allow to set ShortLegend to ''
From: Tobi
 - better parsing of PageTop with intexmakers -P option
From: Ruben Cheng <rcheng location saira.postgrado.uc.edu.ve>
 - fix for spanish translation (uptime had some probmlems)
From: Markley P. Dykeman <mdykeman location micron.net>
 - contrib: switchmaker produces mrtg cfg files for Cisco Catylst 5XXX
From: Tobi
 - made sure -lm comes last when linking ...
From: Tobi + Ben <ben location hotwired.com>
 - converted remaining gifs to png
From: Tobi + Mike Lawrie <mlawrie location apies.frd.ac.za>                                                                   
 - make sure AbsMax is not smaller than MaxBytes
From: Halldor.Hognason location islandssimi.is                                                  
 - translation to icelandic
From: Fuminori Uematsu <uematsu location kgz.com>
 - added japanese translations for ISO-2022-JP and EUC-JP
From: ozgurcd location koc.net
 - added turkish translation

Changes 2.8.9
-------------
From: Rainer.Bawidamann location informatik.uni-ulm.de
 - update for rrdtool integration 14all.cgi
From: Morten S. Nielsen <msn location ipt.dtu.dk>
 - Added more modular translation system
From: Ilja Pavkovic <illsen location gumblfarz.de>
 - Added German Translation
From: "Tate <­«ĄÍ>" <tate location joy-tech.com.tw>
 - Chinese Translation
From: John-Mark Gurney <gurney_j location efn.org>
 - cfgmaker_ip ... keep first address and not last ..
From: Assakhof Bin Ab. Satar <assakhof location mimos.my>
 - Malayan translation
From: Tobi
 - restored mibhelp to its old glory ..
From: Jon Rifkin <rifkin location uconn.edu>
 - added ability to index interfaces by physical address analog to
   the existing IP stuff ... there is now also a cfgmaker_phys
From: Lukasz Jokiel <Lukasz.Jokiel location klonex.com.pl>                                 
 - polish translation
From: Hideyuki Suzuki <hideyuki location sat.t.u-tokyo.ac.jp>                                               
 - graphing fix for rateup ...
From: Matthew Schumacher <schu location 7x.com>                                                             
 - cpuinfo contrib
From: Paul E. Erkkila <pee location gblx.net>                                                               
 - contrib cisco config tftp
From: Iulian Radu <iulian_r location starnets.ro>                                                           
 - updates and bugfixes for mrtgmk v2.0
From: David Boone <David.Boone location premier-systems.net>
 - fix for -F/-f in indexmaker
 - fix for view type in indexmaker
From: Matthias Cramer <cramer location dolphins.c>
 - cisco accounting contrib
From: Karl Friesen <krf location southwind.net>                                          
 - added -lm to LIBS in configure.in
From: Morten S. Nielsen <msn location ipt.dtu.dk>                                        
 - patching system for languages ... check translate directory
From: "Kloberg Mac (LAM)" <mac.kloberg location lam.liebherr.com>
 - NSI (Network Status Imager for MRTG) contrib
From: Rawlin Blake <blake location nevada.edu>                                           
 - updates for mrtg-archiver
Changes 2.8.8
-------------
From: Tobi
 - fixed problems with RRDs integration ...

Changes 2.8.7
-------------
From: Rainer Bawidamann <Rainer.Bawidamann location informatik.uni-ulm.de>
 - contrib: RRDtool integration -> contrib/14all
From: Xenitellis S <S.Xenitellis location rhbnc.ac.uk>
 - greek locales
From: Andrea Rossi <rouge location shiny.it>
 - italian locales
From: Martin Goebel <mago location farm.de>
 - better html for indexmaker ...
From: "Stieers, Ken" <KStieers location DainRauscher.com>
 - added a new switch to indexmaker ( [-v d|w|m|y] ) which allows you to
   select which graphs you get.
From: Daniel Haun <dhaun location snark.cx>
 - indexmaker can now take - as a filename to allow input from stdin
 - cfgmaker_ip works with IOS 10.0 now (CRLF <=> LF in sysDescr)
From: Tobi
 - allow targets with name of Option entries ...
From: Marcelo Roccasalva <marcelo location mendoza.gov.ar>
 - contributed spanish locale
From: Tobi
 - added LD_RUN_PATH to make file and configure in support ofr shared
   libraries ...
From: Luiz Felipe R E <lf location encarnacao.com>
 - fixed gifpath for NT
 - added brazilian portuguese locales
From: Barry van Dijk <barry location dijk.com>
 - added Dutch locales
From: calle olsen <calle location volvo.se>
 - updated stat.pl in contrib
From: tobi
 - added -lm do default LDFLAGS
From: Daisuke Aoyama <jack location st.rim.or.jp>
 - fixes for generated HTML
From: Dmitry S. Sivachenko <dima location Chg.RU>
 - added russian translation

Changes 2.8.6
-------------
From: Philippe.Simonet location swisscom.com
 - contributed rateup.exe for NT users

Changes 2.8.5
-------------
From: Tobi
 - even better config script

Changes 2.8.4
-------------
From: Iulian Radu <iulian_r location starnets.ro>
 - new version of mrtgmk contributed (2.1)

From: Tobi
 - fixed indexmaker

 - udated configure to better check for gd presence ...

 - added Option unknaszero which turns logging of *unknown* data to
   logging zero instead of repeating the last value seen.

   Log unknown data as zero instead of the default behaviour of repeating
   the last value seen. Be careful with this, often a flat line in the graph
   is much more obvious than a line at 0.

From: Fabrice Prigent <fabrice.prigent location univ-tlse1.fr>
      & Stéphane Marzloff <secrer location le-bar.fdn.fr>
 - french locales

Changes 2.8.3
-------------
From: Tobi
 - fixed MIB reading integration

Changes 2.8.2
-------------
From: Philippe.Simonet location swisscom.com
 - added updated rateup.exe for NT ...
 - fixed NT *.zip distro ...

Changes 2.8.1
-------------
From: Tobi
 - fixed URL for GD library in documentation ..

Changes 2.8.0
-------------
From: Tobi
 - fixed autoconf system to work with new gd version
From: Miguel Vitorino <mvitorino location automail.pt>
 - added -o filename option to indexmaker
From: Antonio Querubin <tony location lava.net>
 - fixed indexmaker to work with -m and -P option in parallel
From: Rodrigue Assard <Rodrigue.ASSARD location mat.ensmp.fr>
 - added ytics and yticsfactor options to mrtg/rateup
From: Iulian Radu <iulian_r location starnets.ro>
 - contributed mrtgmk, a mrtg.cfg file generator ...
From: Yozo Toda <yozo location aohakobe.ipc.chiba-u.ac.jp> and
 and  Bernard Quatermass <bernard location quatermass.co.uk>
 and  Tobi
 - support for gd-1.6.1 ... Depending on the available version of libgd
   mrtg will be configured for generation png or gif images
From: Mike Mitchell <mcm location unx.sas.com>
 - MIB Parsing for mrtg ... the mrtg.cfg file can now countain something
   like this:

    LoadMIBs:   /usr/lib/mib/cool.mib,/etc/snmp/BOX.mib

   MIB-II and FrameRelay MIB are preloaded ... For improved efficiency
   a OID cache is maintained in the WorkDir oid-mib-cache.txt

From: Morten Nielsen <msn location ipt.dtu.dk>
 - Support for different locales in mrtg added ... At the moment the only
   supported Languages are English and Danish if you want to translate
   things to your language, edit the locales_mrtg file apropriately.
   In the mrtg.cfg file you can select your language with the global
   Language: <language> option
From: Cristian Caramida <brick location bbs.ro>
 - Contributed mrtg-ipacc script for using Linux IP accounting kernel rules
   to feed mrtg

Changes 2.7.6
-------------
From: Henry Steinhauer <H1STEINH location hewitt.com>
 - contrib cfgmaker for ATM Bay MIB
From: Fred Korz <fred.korz location smarts.com>
 - fixed some typos in config.pod and manual.html

Changes 2.7.5
-------------
From: Kari.Hiitola location sonera.fi
 - make maxbytes = 0 work ...
From: Iulian Radu <iulian_r location starnets.ro>
 - contrib mrtgmk
From: Tomas Pospisek <tpo location spin.ch>
 - update for get-multiserial contrib
From: "Gellatly, Laurie (x8864)" <laurie.gellatly location vodafone.com.au>
 - contrib: hp openview integration
From: Jef Considine <jconsidine location infolibria.com>
 - fixed the relative percent y-coordinates in rateup when using bits
From: Tim Cimarusti <cimarust location mercernet.com>
 - ciscoindex contribution
From: "J. Nick Koston" <bdraco location the.system.is.halted.net>
 - allow @ in community names ...
From: Steven Micallef <smic location wire.net.au>
 - addded diskmon contrib

From: Tobi
 - fixed multiline sysdescr handling in indexmaker
 - added nt-guide back into the archive ...
 - fixed the Signal 127 with Exit Value 16777215 problem

From: Justin McCann <justin location karlnet.com>
 - moved a last malloc to calloc in rateup ..

From: Butch Kemper <kemper location tstar.net>
 - updated PM3Lines.pl

From: Calle Olsen <calle location volvo.se>
 - added stat.pl (DNS monitor)

Changes 2.7.4
-------------
From: Alexandre Steinberg <steinberg location marconi.base.com.br>
 - rateup.c made to compile with VC++ 6.0
 - new rateup.exe which has no timezone problems added to zip
   archive.

From: Thomas Muggli - NSM <mugglit location cscoe.ac.com>
 - added threshold monitoring functionality

Changes 2.7.3
-------------
From: Dima Sivachenko <dima location Chg.RU>
 - more squid OIDs for SNMP_util.pm
From: Vlado Potisk <vlado_potisk location tempest.sk>
 - reproducable evaluation order by sorting targets ...
From: Morten S. Nielsen <msn location ipt.dtu.dk>
 - fixes for Squid OIDs in SNMP_utils.pm
From: "Tony-Farr (Canberra)" <Tony.Farr location austrade.gov.au>
 - contributed Whodo, a set of Perl scripts to analyse IP accounting data
   from a cisco. to be found in the contrib direcotry.
From: Andreas Papst <Andreas.Papst location univie.ac.at>
 - fix for y legend in scaling mode with dorelpercent enabled
Changes 2.7.2
-------------
From: Brad <brad location openbsd.org>
 - Fix for malloc.h warning when compiling on *BSD
From: Tobi
 - Ignore \n at the end of ifDescrs. This was fatal for Reconfig checking
From: Ken Stieers <KStieers location ontrack.com>
 - Added -G and -g as arguments to indexmaker

Changes 2.7.1
-------------
From: Kevin Sartorelli <kevin location sartorelli.gen.nz>
 - SNMP_util.pm cacheCurrentSwapSize should end in 14
From: Andres Kroonmaa <andre location ml.ee>
 - added option transparent to make the background of generated gifs
   transparent ...
 - more updates to indexmaker
 - massive enhancement to cfgmaker to go with ipget patch for mrtg
   this is experimental code. it is called cfgmaker_ip.
 - ipget integrated into mrtg. you can now specify an ip address
   instead of an port number ...
From: Horak Daniel <horak location mmp.plzen-city.cz>
 - updated ip-get patch
From: "Mark D. Nagel" <nagel location intelenet.net>
 - icondir awarenes for indexmaker
From: Alexandre BAUMEISTER <alex location finance-net.com>
 - fixed -s /-S options in indexmaker
From: Ralf Weber <fl1ger location de.colt.net>
 - fixed compatibility problem with SNMP_Session ... undef != -1 !!!

Changes 2.7.0
-------------
From: Steve Pierce, Director of Fun @ HDL
 - new nt install guide ...
From: Simon Leinen abd Mike Mitchell <mcm location wnt.sas.com>
 - Update to SNMP_Session 0.69
 - ability to use @ in community string ...
From: Eric Murat <Eric.Murat-Alten location renault.com>
  little error in subst code fixed ...

From: Rory Clancy <Rory.Clancy location analog.com>
  <META HTTP-EQUIV="Pragma" CONTENT="no-cache">

From: andre location ml.ee Thu Feb 25 21:13:01 1999
 * NEW indexmaker ...
 - accepts multiple config files, (also wildcards)
 - options allowed per config-file (options between filenames)
 - now handles global Directory[^] tag
 - optional 2-column layout
 - unsorted target sequencing, optionally numbered
 - option to specify bacground color
 - option to specify overview graphs sizes
 - few options to increase/decrease bells an whistles

From: Anri Kopystyansky <anri location polynet.lviv.ua>
   * correct squid OIDs for cacheHttpInKb cacheHttpOutKb cacheICPpktsSent
     cacheICPpktsRecv

From: Simon Leinen
   * new version of SNMP_Session and friends ...

Changes 2.6.5
-------------
From: Norman Aronsen <tib location jccomp.com>
   * added space after #! in perl scripts this is more portable
From: "riocat(^..^)~" <riocat location ceres.dti.ne.jp>
   * Japanese translation of mrtg docu added ...
From: Robert Allmeroth <robert location hilan.de>
   * relaxed SNMP_Session.pm s requirements for SNMP response consistancy
     so that error-index gets disregarded when error-status is 0
From: "Tony-Farr (Canberra)" <Tony.Farr location austrade.gov.au>
   * contributed script that extracts summary figures from the MRTG log files.
     Because it uses Excel, it is only useful on Windows.
From: Eric Billeter <ebilleter location cableone.net>
   * contrubuted some scripts he modified to monitor the modem utilization
     of my USR Total control racks.
From: Alberto Pasquale <pasquale location pianeta.it>
   * optional handling of two different MaxBytes settings: MaxBytes1/MaxBytes2  

Changes 2.6.4
-------------
From: Dimitar Kazakov
   * Updated mrtg-ipget patch for SNMP_util.pm compatibility

From: Tobi
   * readhist now uses unsigned longint when reading in the log file
     this might speed up things slightly ...
   * added warning, that dorelpercent requires 5 colours ...

Changes 2.6.3
-------------
From: Tobi
   added joey millers contribs (jm) to contrib tree
   made website more mirror friendly
   updated nt-guide thanks to Steve Price
   fixed squid OIDs in SNMP_util.pm ... thanks Michael Riedel   
   properly integrated rateup binary for NT ... just get the mrtg zip
     archive ...
   improved cfgmaker thanks to  Joerg Schumacher ... fixed mapping problems ...

Changes 2.6.2
-------------
From: Tobi
   fixed quotes in indexmaker
   fixed configure.in --with-gd-*= was not working ...
   fixed version number fixer for distribution im Makefile.in
From: Blair Zajac
   fixed html im indexmaker and mrtg

Changes 2.6.1
-------------
From: Tobi
   fixed stupid bug in connection with bits option ... the numbers
   below the graph were not calculated correctly ..

Changes 2.6.0
-------------

From: Tobi
   cleaned up distribution
   added configure script
   changed cfgmaker to use ipaddress as name for targets

From: Simon Leinen  <simon location limmat.switch.ch>
   integration of the SNMP_util and the latest SNMP_session
   interestingly enough this can make things much faster on occasion ...
   new version of cfgmaker which uses gettable ...

From: oliver.haid location tilak.or.at
   mrtg-conf.pod fixes, #a0a0a0 and integer option
   rateup.c added better scanning of legend argument

From: Andreas Papst <Andreas.Papst location univie.ac.at>
   dorelpercent kMG kilo
   improvements for perminute perhour
   some OIDs for SQUID 2.0.RELEASE

From: Matija Grabnar <Matija.Grabnar location arnes.si>
   I implemented a patch that displays the per-hour rate instead of the per-second
   rate. It is triggered by including "hourly" in the options line.
   The patch has worked satisfactorily on our site (used when measuring cache
   access and news server article counts)

   I find it better than simply multiplying the sample values, because it takes
   into account the actual time that passed between the samples.

Changes 2.5.4c
--------------
removed <> in the end function for perl 5.005 compatibility

Changes 2.5.4b
--------------
Documentation Update ... all the info about simons changes for 2.5.4
were missing ...

Changes 2.5.4a
--------------
fixed fatal comma in cfgmaker ..

Changes 2.5.4
-------------

From: Russell Carleton <roccor location netscape.net>
   almost 100 new interface types for cfgmaker ...

From: "Tony-Farr (Canberra)" <Tony.Farr location austrade.gov.au>
   better matching for cisco version number in cfgmaker

From: Ricardo Bravo <ricardob location comsat.net.ar>
   improved matching of regexp indexmaker

From: yours truely
   made external commands driver cut whitespace from the the front
   and back of external commands output
   fixed longstanding bug in diff function ... 0 - 10 did not work

From: Henning P . Schmiedehausen <hps location tanstaafl.de>
   Correct behaviour if the child process has already terminated
   before mrtg goes to wait for it ...

From: Daniel Trinkle <trinkle location cs.purdue.edu>
   Error message if the cfg file can not be opened ...

>From Simon Leinen <simon location limmat.switch.ch> better configurability of
SNMP timeouts ...

>From Jean-Luc RICHIER (Jean-Luc.Richier location Imag.Fr  richier location imag.fr)
1/ If there is a ' in an external target description (within `),
   mrtg dies with eval problems.  (I needed ' to protect spaces).
   This comes from a substitution in the target, which tries to convert
   the target in a perl string, quoted with '. Therefore a ' in the target
   causes a badly quoted string.
2/ The second problem is a lock problem : if mrtg fails (for example due to
   the ' problem above), the two lock files CFG_l et CFG_l_$$ are kept,
   which forbid to restart mrtg.
   I think that at least the lock file CFG_l_$$ should always be destroyed.
   If this is done, the second lock will only have 1 link, so it is
   discarded.


Changes 2.5.3
-------------
* more consistant handling of pre and postfix settings in cfg files
  and lots of fixes to the manual ...
  thanks to Mark Martinec <Mark.Martinec location nsc.ijs.si>
* correct handling of ifDescrs which contain an = sign ...
* better sanitizing of calculated target values
* fixed overflow bug with maxx in rateup
* BER.pm up to 0.57 SNMP_Session.pm up to 0.58
* fixed writeexpires ...

Changes 2.5.2
--------------
* removed NT cron from readme.html ... just too many problems with it ...
* make sure no two mrtgs are running at the same time. Locking code for
  UNIX by Dave Rand, for NT by Tobi (I don't know about NT ...:-) )
  testing for the NT version was done by Henry Steinhauer <H1STEINH location hewitt.com>
  thanks !
* updated to SNMP_Session and BER.pm to their latest versions.
* updated get-active contrib From: Wee-Meng LEE <leewm location hpsgmx18.sgp.hp.com>
* cpumon contrib by Matthew Ramsey <mjr location blackened.com>
* cfgmaker patch from Mike Diehn mdiehn location mindspring.net
  to make it get Cisco PVC descriptions
* Updated mrtg-dynip to 0.41b
* mrtg.cfg-dist is now mrtg-conf.html thanks to Matija Grabnar <Matija.Grabnar location arnes.si>
* typo in error messages when external gatherer returns invalid data.

Changes 2.5.1
-------------

* Percentages in HTML pages was 8 time to high with the bits option

Changes 2.5
-----------

* we want perl 5.003 now. older versions have problems with
  large numbers ...

* better cisco scanning added to cfgmaker ... Carlos Canau   

* actually remove whitespace at the end of the line ...

* BER.pm and SNMPSession.pm with version numbers ...

* rewrite of the mailstats script
  from Petter Reinholdtsen <pere location minerva.link.no>

* do only draw the maxbytes line if it is within the actual graph.

* NT portability fixes for rateup.c

* contrib from Emanuele Leonardi: Script to archive the daily stat-gifs
  to a separate directory every night ...

* fix for Timezone handling ...

* another attempt to fix overflows ... and strange behavior of sprintf ...

* fixed handling of SNMP errors

* Updated SNMP_Session.pm to 0.51 (Better Error Reporting)

* made cfgmaker ignore cisco E1 controllers, as their if-descriptions
  seems not to be reported properly by IOS ....
  patch from Josh Bailey (mailto:joshb location xtra.co.nz)

* Added README.logfile-format by Butch Kemper

* update mrtg-pingprobe thanks peter

* added atmmaker by Mark Trettin <mkt location lucent.com> to the
  contrib section. this is a cfgmaker variant which generates
  cfgs for the FORE ASX

* its suppress and not suppress. Changed this and added backward compatibility.

* From: Niels <niels location holding.pi.net>: added Option[] Integer which
  suppresses the  decimal part the summary line below the graphs ...

* added --vendor switch to cfgmaker. This enables and disables the
  vendor specific queries ...

* added contrib from Carlos Canau <canau location dawn.EUnet.pt>
  It allows one to make a graph of analog/ISDN lines on a
  Livingston Portmaster 3.   (PMLines)

* fixed a longstanding bug where rateup was skewing at log entries not
  aligned with the normal sampling interval. This happened when ever
  the NEXT macro was going from one sampling interval onto another one
  ... thanks to  Lane Patterson of GlobalCenter ISI <lane location isi.net>,
  Erwin Authried <eauth location softsys.co.at> and Ari Lewitter <ajl location NewsAlert.com>

* further improved the accuracy for large installations. Mrtg does now
  get a timestamp down with every reading taken from a router. If
  we are running a simple target, this timestamp is passed along to
  rateup with the t option

* ircstats contrib by Matt Ramsey added ...

* fixed 'current time' passing from mrtg to rateup ...

* much improved handling of 'first run'

* output for cfgmaker is now sorted alphabeticaly .. (Andres Kroonmaa)

* added mrtg-dynip contrib from John Heenan, providing support for
  environments with dynamic IP addersses ...

* Added Contrib to mibhelp.txt

* check the output of external gatherers. Are we really being fed a number?

* Added PageFoot[] configurable ...

Changes 2.4.1
-------------
* fixed external command bug


Changes 2.4
-----------

* fixed IconDir ... Carlos Canau <canau location dawn.EUnet.pt>

* mrtg.cfg-dist debugged and rewritten ...  Paul FIscher <paul location shire.btg.com>

* mod_expire tip from Stephane Bortzmeyer <bortzmeyer location cache.cnrs.fr>
  added to mrtg.cfg-dist

* mrtg: large values are not handled by int any more but rather by
  sprintf "%.0f"

* mailstat fixes by Petter Reinholdtsen <pere location minerva.link.no>

* added nopercent option as suggested by Frank van Wensveen

* added contrib by Philippe.Simonet location SWISSTELECOM.com
  a c-program to create gifs showing the traffic distribution over time
  real neat ...  Thanks ...

* changed chops in mrtg to chomp calls just in case ...

* fixed 'external' command parsing in target lines ...


Changes 2.3
-----------

Added IconDir configurable, for people who want to keep the mrtg
logo in a central location. As suggested by James FitzGibbon <james location nexis.net>

Made the period var a double in rateup.c as suggested by Dave

Added patch from Paul <root location nevertheless.redline.ru> to cfgmaker
now it will try to figure the speed of an interface ....

Stooped mrtg from aborting on non existing HOST names

Warn on Duplicate CFG entries.

Customizable week number thingy from Simon Leinen

rateup fix for FreeBSD: FreeBSD does not need malloc.h
included. From: Ulf Zimmermann <ulf location Alameda.net>

Fix for time chitter by Dave ...

new pingprobe from Peter W. Osel

relaxed parsing of keywords. ther can be a space before the
colon .... as sugested by Samath


>From mcm location unx.sas.com Tue Jun  3 07:43:38 1997

Cheanged rateup.c so that it will start scaling the graphs when the
datarate is higher than MaxBytes, if the AbsMax value is set. Even when it
is operation in unscaled mode ...
I also changed 'indexmaker' to allow me to pass in a title, and
to support the 'Directory' option in the configuration file.

From: Jay Soffian <jay location lw.net> Wed, 04 Jun 1997 15:34:01 -0400

Added new configurables XScale[], YScale[] to really enlarge the graphs and not
just make their pixels larger ...

Added configurable Step[] to allow for shorter base periods different from
5 Minutes ... But beware, this is NOT supported ... and its likely
that you will run into problems ...

Updated to latest version of SNMP_Session.pm This will work fine with
perl5.002 and above. BUT not with perl 5.001 !!! so if you are still using
an old version of perl, use SNMP_Session.pm-for-perl5.001


2.2
---

Added Contribution from Anthony Rumble. For gathering stats for apache
webservers and squid proxies

From: T. Pospisek <tpo location spin.ch>
SHELL scripts to get active tty(-dial-in modem-) lines localy and remotely.
I'm using them with a cyclades board but they can be adapted at wish to
different tasks.

made graphs in indexmaker generated pages clickable ... leewm location sgp.hp.com

added contributet script for gatherig portmaster stats

added mrtg-blast contrib from Balthasar T. Indermuehle

made mrtg observe order of routers in cfg file .... as suggested by
Mick Ghazey <mick location lowdown.com>  

Added GetSNMPLinesUP to contrib ... from Carlos Canau <canau location dawn.EUnet.pt>
this is for monitoring Modembanks ...

Added timezone configurable to set a timezone per router. Details in
mrtg.cfg-dist as suggested by Jun (John) Wu

Added MaxBytes check ....

Fixed portability problem of Makefile under IRIX

Added sendmail stats contrib from Rachel Polanskis


2.1
---

Added 100BaseVG iftyp to cfgmaker

Fixed rounding Bug in rateup.c which caused it to scale graphs with small
values incorrectly ...

Added rdlog2 by Phillip Simonet. This tool transforms a xfig network
map into a clickable gif with colorcoded representation of the
current load of your network links. The information for the colorcoding
is taken from the mrtg log files.

From: "Peter W. Osel" <pwo location hl.siemens.de>
A perl script to get roundtrip delays to hosts by sending a ping
to them. Added to contrib.

Allowed any character except @ and \s to be used in a community string ...

Fixed two instances where variables were declared twice (my($var))
within the same scope. Late perl5.003 versions do not like that ...
and it was wrong anyway. This happens both in SNMP_Session.pm
and mrtg

When using the Directory option in connection with [^] a stray space gets
added to the path. This is now removed with s/\s//g ... spaces in path names
are stupid anyway.

2.0.1
-----
Fixed ascendget script