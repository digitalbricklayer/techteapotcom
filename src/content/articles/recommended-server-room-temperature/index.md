---
title: "Recommended Server Room Temperature"
description: "An exploration of the recommended temperature for server rooms. Figuring out the right temperature for your server room can be complicated, you don't want to run your server room too hot and suffer increased server failure, but you don't want to run it too cold and potentially over cool your servers."
date: 2022-02-15
thumbnail: "/images/thermometer.jpg"
toc: true
draft: true
---

An exploration of the recommended server room temperature. Figuring out the right temperature for your server room can be tricky, you don't want to run your server room too hot and suffer increased component failure, but you don't want to run it too cold and potentially waste money.

<!--more-->

Just what is the right temperature for your server room? Over the last twenty years, there has been a recognition that the IT industry must play its part in increasing server room [Power Usage Effectiveness](https://en.wikipedia.org/wiki/Power_usage_effectiveness) or PUE as defined by [ISO/IEC 30134-2:2016](https://www.iso.org/standard/63451.html) and [EN 50600-4-2:2016](https://www.en-standard.eu/csn-en-50600-4-2-information-technology-data-centre-facilities-and-infrastructures-part-4-2-power-usage-effectiveness/) standards. One of the ways the IT industry can increase PUE is by reducing the power consumption caused by regulating the environment in server rooms.

There is no simple universally applicable recommended temperature for your server room. A number of factors determine the correct environmental range for your facility. The guidelines suggested here are taken from the ASHRAE publication [Thermal Guidelines for Data Processing Environments Fifth Edition](https://www.ashrae.org/technical-resources/bookstore/datacom-series#thermalguidelines) published in 2021. If you wish to have a deeper understanding of the issues behind the environmental recommendations published here, I strongly recommend you purchase the Thermal Guidelines for Data Processing Environments and other publications in the ASHRAE datacom series.

All the environmental ranges published in this article assume conditions at sea level.

## Equipment Environmental Classes

One of the factors that determine the recommended temperature in your facility is the class or classes of equipment you have installed. Not all equipment has the same set of thermal requirements.

Class A1 is typically a data centre with tightly controlled environmental parameters and mission critical operations. The types of products designed for this environment are enterprise servers and storage products.

Class A2/A3/A4 is typically an IT space with some control over environmental parameters. The types of products designed for these environments are volume servers, storage products, personal computers and workstations. Among the three classes, A2 has the narrowest environmental range and A4 has the broadest.

Class H1 is an area within the server room that is cooled to a lower temperature to house high-density air-cooled servers.

## Air Quality vs Relative Humidity

The recommended environmental range is the range of environmental factors that a facility should be designed to meet under normal conditions. The recommended range was chosen by ASHRAE TC9.9 committee and documented in Thermal Guidelines for Data Processing Environments based upon a number of factors including the reliability of IT equipment, the increased server power consumption at higher temperatures, increased acoustic impacts of higher temperatures and providing a buffer caused by cooling failures.

The allowable environmental range is the envelope where IP equipment manufacturers test their equipment to verify operation.

Prolonged operation of IT equipment outside of the recommended range can result in a reduction in reliability especially if the equipment is exposed to working at the extremes of the allowable envelope for long periods.

## Recommended Environmental Ranges

### Powered On Environment Ranges

<table class="product-gotomydevicesdotcom-comparison">
<thead>
<tr>
<th scope="col">Class</th>
<th scope="col">Temperature Range (&deg;C / &deg;F)</th>
<th scope="col">Relative Humidity Range</th>
</tr>
</thead>
<tbody>
<tr class="section-header">
<th colspan="3"><strong>Recommended</strong></th>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>H1</em></td>
<td data-th="Temperature Range">18 - 22&deg;C / 64 - 72&deg;F</td>
<td data-th="Relative Humidity Range">70% or 50%<sup><a href="#rh-polution-explanation">[1]</a></sup></td>
</tr>
<tr>
<td data-th="Class" class="product-label"><em>A1 to A4</em></t>
<td data-th="Temperature Range">18 - 27&deg;C / 64 - 81&deg;F</td>
<td data-th="Relative Humidity Range">70% or 50%<sup><a href="#rh-polution-explanation">[1]</a></sup></td>
</tr>
<tr class="section-header">
<th colspan="3"><strong>Allowable</strong></th>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>H1</em></td>
<td data-th="Temperature Range">5 - 25&deg;C / 41 - 77&deg;F</td>
<td data-th="Relative Humidity Range">8% - 80%</td>
</tr>
<tr>
<td data-th="Class" class="product-label"><em>A1</em></td>
<td data-th="Temperature Range">15 - 32&deg;C / 59 - 90&deg;F</td>
<td data-th="Relative Humidity Range">8% - 80%</td>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>A2</em></td>
<td data-th="Temperature Range">10 - 35&deg;C / 50 - 95&deg;F</td>
<td data-th="Relative Humidity Range">8% - 80%</td>
</tr>
<tr>
<td data-th="Class" class="product-label"><em>A3</em></td>
<td data-th="Temperature Range">5 - 40&deg;C / 41 - 104&deg;F</td>
<td data-th="Relative Humidity Range">8% - 85%</td>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>A4</em></td>
<td data-th="Temperature Range">5 - 45&deg;C / 41 - 113&deg;F</td>
<td data-th="Relative Humidity Range">8% - 90%</td>
</tr>
</tbody>
</table>

<p id="rh-polution-explanation"><sup>[1]</sup>If your server room is located in an area with low pollution levels, then you can operate up to 70% RH. If your server room is located in an area with high pollution, then you should run your server room at less than 50% rh.</p>

### Powered Off Environment Ranges

<table class="product-gotomydevicesdotcom-comparison">
<thead>
<tr>
<th scope="col">Class</th>
<th scope="col">Temperature Range (&deg;C / &deg;F)</th>
<th scope="col">Relative Humidity Range</th>
</tr>
</thead>
<tbody>
<tr class="section-header">
<th colspan="3"><strong>Recommended</strong></th>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>H1</em></td>
<td data-th="Temperature Range">-</td>
<td data-th="Relative Humidity Range">-</td>
</tr>
<tr>
<td data-th="Class" class="product-label"><em>A1 to A4</em></t>
<td data-th="Temperature Range">-</td>
<td data-th="Relative Humidity Range">-</td>
</tr>
<tr class="section-header">
<th colspan="3"><strong>Allowable</strong></th>
</tr>
<tr class="stripe">
<td data-th="Class" class="product-label"><em>H1</em></td>
<td data-th="Temperature Range">5 - 45&deg;C / 41 - 113&deg;F</td>
<td data-th="Relative Humidity Range">8% - 80%</td>
</tr>
<tr>
<td data-th="Class" class="product-label"><em>A1 to A4</em></td>
<td data-th="Temperature Range">15 - 32&deg;C / 59 - 90&deg;F</td>
<td data-th="Relative Humidity Range">8% - 80%</td>
</tr>
</tbody>
</table>

## Issues with Higher Temperatures

Saving power costs is not a simple matter where server rooms are concerned. Simply increasing the operational temperature of your server room has several side effects that may well counterbalance the benefits of reducing cooling power consumption.

### Power Consumption vs Temperature

Power consumption saved by increasing the temperature in your server room may well increase the power consumption of your equipment through increased fan usage and decreased efficiency of electrical components.

### Reliability vs Temperature

A number of studies have shown that increasing the temperature of IT equipment can be detrimental to the reliability of that equipment. Whilst the effect is minimal towards the lower part of the allowable environmental range, towards the upper band the long-term effect on server reliability can be significant.

### Noise vs Temperature

An increase in temperature may well increase the noise produced by your IT equipment largely caused by increased fan speed. The increase in noise will make the server room a more hostile place to work. The increase in noise may necessitate the wearing of ear mufflers and may require staff to limit the duration of work within the facility.

## Temperature Monitoring

There isn't much point in aiming to run your server room within a given environmental range if you don't monitor it to ensure that you are. A number of environment monitors are able to monitor a number of environmental parameters and alert you when things go wrong. At the very least you need something to monitor temperature and relative humidity at different locations in your server room. You need the measurement process to be automated and reliable as it is too easy for manual processes to be forgotten. The device must support alerts, via a number of different methods like email as well as out of band alerts via SMS. You should be able to set the system up and then be alerted when something goes wrong.
