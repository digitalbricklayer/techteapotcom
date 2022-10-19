---
title: "High Density Data Center Monitoring Verification and Auditing"
description: "High density verification testing can be required when equipment is newly installed or moved from some other location in the server room."
date: 2022-02-18
thumbnail: "img/placeholder.png"
draft: true
---

High density verification testing can be required when equipment is newly installed or moved from some other location in the server room. The objective of these tests is to ensure that the temperature and relative humidity flowing into the servers is within the acceptable range.

<!--more-->

Typically, a verification test would be carried out over a short period of time whilst the effects of the installation are monitored and recorded. After the testing is done, you can check the data to see if any remediation work is necessary.

Normal day to day monitoring does not require the kind of high density monitoring explored in this post.

The ASHRAE publication Thermal Guidelines for Data Processing Environments, Fifth Edition 2021, part of ASHRAE's datacom series of publications, contains specific advice and recommendations for data equipment environmental monitoring. If you want more in-depth information about equipment installation verification testing, I strongly recommend you buy the publication.

## Measurement Locations

Measure the temperature and humidity in the centre of the equipment 50mm in front of the air inlet. See Figure 1: Full Rack Monitor Points for how to monitor a full height rack. The locations of the measuring points will depend on the size of the rack to be measured. The locations chosen must be in front of the server air inlets. For racks with doors it is normal to operate them with the doors closed so you should take the measurements with the doors shut. All measurements should be taken on the air intake side.

If you have a rack of 20 devices in a single vertical stack measure at the top centre, the middle centre and the bottom centre.

<<Full rack mount points image>>
caption: Figure 1: Full Rack Monitor Points

## Test Results

All readings should fall within the acceptable limits for the equipment in the rack. See [Recommend Server Room Temperature]({{< ref "/articles/recommended-server-room-temperature/index.md" >}}) for details of the acceptable environmental ranges for all of the different types of equipment. If any readings fall outside the acceptable range then further investigation should be undertaken to find the cause of the problem.

## Summary

The installation verification test is a short test to be carried out when new equipment is installed or existing equipment moved where there is some doubt about whether the equipment will receive an air flow within the acceptable environmental range.

