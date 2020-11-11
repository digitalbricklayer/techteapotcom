---
title: "Accessing raw data in Intellipool Network Monitor"
date: "2007-06-19T14:34:05+00:00"
categories: ["Network Monitoring"]
tags: []
aliases: [/accessing-raw-data-in-intellipool-network-monitor/]
---

A number of you have asked for the ability to access the raw stats from your temperature monitor. So, I thought we'd better write it up for future reference.

Whilst you've asked about outputting temperature logs, the same procedure works for anything else held by Intellipool.

<strong>Click on Settings|Reports</strong>

<strong>In the Customized reports section click New customized report</strong>

Type in a name for the new report. For this example I've used the name, Raw Values Report.

<strong>Click Save</strong>

<strong>Click on the name, Raw Values Report</strong>

<strong>Click on Items, Add graph</strong>

In the current version of INM you need to add a graph as well as a table. There is no option to add a table alone.

<strong>On Period click the dropdown and select a time period</strong>

<strong>On Data type select Environment: Temperature measurement</strong>

<strong>Click Save</strong>

<strong>In Items, Type, Click on Graph</strong>

<strong>In Data inputs click on Add input</strong>

A list of Monitors and probes appears.

<strong>Select one or more monitors and probes</strong>

To make multiple selections hold down the Ctrl key.

<strong>Click Advanced properties</strong>

This opens a further series of options

<strong>In Data tables type a value in minutes, hours or days</strong>

Use the dropdown to specify the units. This specifies the time between each value in the table.

<strong>Click Save</strong>

<strong>To make a report</strong>

<strong>Click on Settings, Reports</strong>

Click on the book symbol to the right of your new report.

The report will be generated, a graph followed by a table of values.

You can export the values into a CSV file too. Simply select the Report you wish to export, then click the Export button. You can then select the file you want to export to and the field separator.
