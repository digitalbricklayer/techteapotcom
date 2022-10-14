---
title: "Accessing raw data in Intellipool Network Monitor"
date: "2007-06-19T14:34:05+00:00"
categories: ["Network Monitoring"]
tags: []
aliases: [/accessing-raw-data-in-intellipool-network-monitor/]
---

A number of you have asked for the ability to access the raw stats from your temperature monitor. So, I thought we'd better write it up for future reference.

Whilst you've asked about outputting temperature logs, the same procedure works for anything else held by Intellipool.

**Click on Settings|Reports**

**In the Customized reports section click New customized report**

Type in a name for the new report. For this example I've used the name, Raw Values Report.

**Click Save**

**Click on the name, Raw Values Report**

**Click on Items, Add graph**

In the current version of INM you need to add a graph as well as a table. There is no option to add a table alone.

**On Period click the dropdown and select a time period**

**On Data type select Environment: Temperature measurement**

**Click Save**

**In Items, Type, Click on Graph**

**In Data inputs click on Add input**

A list of Monitors and probes appears.

**Select one or more monitors and probes**

To make multiple selections hold down the Ctrl key.

**Click Advanced properties**

This opens a further series of options

**In Data tables type a value in minutes, hours or days**

Use the dropdown to specify the units. This specifies the time between each value in the table.

**Click Save**

**To make a report**

**Click on Settings, Reports**

Click on the book symbol to the right of your new report.

The report will be generated, a graph followed by a table of values.

You can export the values into a CSV file too. Simply select the Report you wish to export, then click the Export button. You can then select the file you want to export to and the field separator.
