---
title: Research Still Required
---

1. MRTG in context - what else was around in 1995?
2. Output - what output did MRTG create?
3. Revision history up until v2
4. What ecosystem grew up around MRTG? Competitors, add-ons etc

## Research

### MRTG in Context

See [SLAC Network Monitoring Tools directory](https://www.slac.stanford.edu/xorg/nmtf/nmtf-tools.html). First entry in the entire directory is for MRTG in the first year that appears for the directory.

### Output

MRTG creates six files.
- `<name>.html` -- HTML file with images detailed below embedded 
- `<name>.last` -- simple file with just a couple of entries denoting the last readings taken from the device in and out
- `<name>.log` -- contains all of the data taken from the device
- `<name>-day.gif` -- graph showing last day's data
- `<name>-week.gif` -- graph showing last week's data
- `<name>-year.gif` -- graph showing last year's data
