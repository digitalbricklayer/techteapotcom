---
title: "Top 5 UPS power alarming options"
date: "2007-05-10T15:08:39+00:00"
aliases: [/top-5-ups-power-alarming-options/]
---

Monitoring the Uninterruptible Power Supply (UPS) is a constant preoccupation of many people who manage a server room. If the conversations we have with customers are anything to go by anyway. :smile: Here's a quick guide. We can, of course, help out with a number of the options...the rest can only be done by your UPS supplier.

## 1: SNMP Trap

The classical way, with network enabled UPS, is to use SNMP traps. The UPS notices that its power supply has gone, it generates a SNMP trap and sends it to wherever you have configured it to send it.

Traps can be a pain to translate into an alarm action. It isn't difficult to have your trap software create an email, or maybe a SMS message. But, if you are asleep, you aren't going to know about either of those until the morning. It isn't very useful having a nice pile of emails in your inbox telling you things have failed when you already know because all of your machines are down.

## 2: Free Contact

Many UPS have a free contact from which you can detect the status of input power on the UPS. All you need is a device to detect changes in the free contact state and alarm appropriately.

A number of options are available for detecting the alarm, from PCI cards, dedicated network enabled relay devices, environmental monitoring systems and the like.

The up side with using the free contact interface is that it will usually be fail safe. So, if anything goes wrong with the UPS you will be alerted to it.

## 3: Input Power

One monitoring option is to remove the UPS from the equation completely. Simply monitor the power going into the UPS. A number of systems are available, usually involving a clamp around the power cord. The clamp sends the information to a detecting device that can be configured to alarm.

The major benefits of input power monitoring are that, in addition to detecting power loss, you can monitor the quality of your power as well as your power consumption.

Systems for monitoring single and three phase supplies are available.

## 4: RS-232

Many UPS have a RS-232 interface from which status information can be read. There is no reason why, with the addition of some appropriate software, you couldn't put together an alarming system. If your UPS is fairly recent you may be able to purchase the software from your UPS manufacturer.

## 5: Built-in

Ideally, in order to avoid the alarm system power problems, the UPS itself should be providing the alarming. Many UPS can provide an audible alarm and/or flashing lights, but that isn't very useful when you are away from the office.

UPS with integral voice dialler seem to be thin on the ground. Know of a model/manufacturer? Please let me know and I will reference it here.

## Conclusion

All of the options have their strengths. If you can, go the built in route (#5). You will avoid the headaches associated with powering the alarm system.

All of the other options (#1 through #4) have the same weakness, whatever system is performing the alarming must be powered when the UPS power goes down. So, make sure the alarm equipment is either battery powered or is powered via the UPS.

\#3 has the added benefit that you get power quality as well as power consumption monitoring thrown in for free.
