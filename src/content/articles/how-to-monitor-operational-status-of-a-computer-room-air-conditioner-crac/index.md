---
title: "How to Monitor the Operational Status of a Computer Room Air Conditioner (CRAC)"
description: "A breakdown of the status factors to measure and record for each Computer Room Air Conditioner (CRAC) unit in your computer room, data centre or server room."
date: 2022-02-15
thumbnail: "/images/server-rack_tn.png"
---

A breakdown of the status factors to measure and record for each Computer Room Air Conditioner (CRAC) unit in your computer room, data centre or server room. The paper also gives a justification for why you should record each status factor and what you should do with the information once you've recorded it.

<!--more-->

## Unit Operating Status

Plainly the most important operational status for a Computer Room Air Conditioner (CRAC) is whether the unit is switched on or off and in an operational state.

The operating status of most air conditioning units can be ascertained by monitoring the operational status dry contact point. An air conditioning unit without an operational dry contact point is unlikely to be meant for use within the computer room environment. Many air conditioning units have a number of dry contact points so you may need to consult your CRAC unit's manual to ascertain which dry contact port you need to monitor.

A number of manufacturers have added SNMP support to some of their air conditioners. SNMP is a boon for monitoring many metrics giving you an easy way to track those metrics over time.

## Supply Fan Status

In order to understand the load being placed onto your air conditioner it is useful to record supply fan status. If you run a number of CRAC units in a primary, back-up and tertiary configuration it would be useful to know when the back-up and tertiary air conditioning units are operational. Ideally you should monitor the fan speed as well if it is variable.

If you are unable to record the status of the supply fan directly because your CRAC unit doesn't support fan status, a useful proxy would be the air speed next to the supply fan. Plainly, fans are there to move air so a high air speed next to the fan would indicate that the fan is in operation. Air speed probes are readily available for use with environment monitors.

{{< figure src="images/Air_Speed_Probe.gif#center" alt="Location of status point to measure speed of inlet air to server room air conditioner" caption="Figure 1: Air speed probe placed in the outlet of a Computer Room Air Conditioner" >}}

## Temperature &amp; Humidity

Both the supply air and return air temperature and humidity should be measured to ensure the values at both locations are within expected ranges. Return air should be significantly hotter than supply air temperature. If the return air temperature is too cold it would suggest that air may not be passing through your equipment in the computer room. Air that is short circuiting your cold aisle/hot aisle configuration wastes energy, there is no point in cooling air that does not flow through your equipment. In addition, air that is able to short circuit back to the air conditioner is likely to place extra loads onto your back-up and tertiary air conditioners as they will have a larger load to contend with.

{{< figure src="images/Short_Circulating_Air.gif#center" alt="Air short circuiting the air conditioner in a server room" caption="Figure 2: Cold Air Short Circuiting Back to the Air Conditioner Air Inlet" >}}

If you find supply air is short circuiting you need to identify precisely where the air is able to escape directly back to the air conditioner. You can then plug any direct air flow routes back to the air conditioner. When you have plugged the escape routes, the returned air temperature should increase to the ambient temperature in your hot aisles.

## Recording Status Points

The simplest way to measure and store the status point data is to use an environment monitor. Many environment monitors can be placed into your rack environment. Not only will environment monitors record your critical status points, they will also alarm you when the readings go outside their recommended operating range. Of course, it is up to you to specify the operating range.

## References

[Thermal Guidelines for Data Processing Environments](https://www.ashrae.org/technical-resources/bookstore/datacom-series#thermalguidelines) Fifth Edition ASHRAE Datacom Series
