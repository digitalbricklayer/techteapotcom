---
title: Research Still Required
---

1. MRTG in context - what else was around in 1995?
2. Output - what output does MRTG create?
3. Revision history up until v2
4. What ecosystem grew up around MRTG? Competitors, add-ons etc

## Research

See [Rutgers MRTG installation](https://people.cs.rutgers.edu/~terminals/mrtg/mrtg-2.5.4c/) for a *real world* installation and data. There is some history [here](https://people.cs.rutgers.edu/~terminals/mrtg/mrtg-2.5.4c/readme.html#HIST).

### MRTG in Context

See [SLAC Network Monitoring Tools directory](https://www.slac.stanford.edu/xorg/nmtf/nmtf-tools.html). First entry in the entire directory is for MRTG in the first year that appears for the directory.

### Output

MRTG creates six files:

- `<name>.html` -- HTML file with images detailed below embedded
- `<name>.last` -- simple file with just a couple of entries denoting the last readings taken from the device in and out
- `<name>.log` -- contains all of the data taken from the device
- `<name>-day.gif` -- graph showing last day's data
- `<name>-week.gif` -- graph showing last week's data
- `<name>-year.gif` -- graph showing last year's data

### Revision history until v2.0

1.0 (28/4/1995)
---

First version

Generate 3 graphs 24 hours, 7 days and 365 days of router traffic retrieved via SNMP (cmu-snmp)

Log data in output file

Simple command line program written in Perl generates a web page for each input config file

Command line program is run every 5 minutes by scheduling it via cron

1.1 (20/5/1995)
---

Small fixes to code and generated HTML

Under Netscape, generated pages reload automatically

1.6 (29/6/1995)
---

Support Tricklet & getone SNMP packages

Configurable SNMP community string

Graphs all equally wide. Now 31 hours in daily and 8 days in the weekly

Support for multiple stats in the same graph

First release with multiple contributors: Johannes Demel & Mike Convey

### MRTG ecosystem

- MRTG v1.6 support *Tricklet* and *getone* SNMP packages
- `cfgmake` and `indexmaker` introduced somewhere down the line
