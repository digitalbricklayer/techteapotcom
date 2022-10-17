---
title: "Continuous delivery every single day"
date: "2012-08-14T10:41:40+00:00"
lastMod: "2020-10-13"
categories: [General]
tags: [teamcity]
aliases: [/continuous-delivery-every-single-day/]
---

It has taken 20 years as a professional programmer to get to this point, but I have finally taken the final step to continuous delivery.

We've been practicing continuous integration for well over a year now. It seemed a logical step to deploy the software automatically. When a process is done manually you tend to make a lot of mistakes. I did anyway. I'd run the database upgrade script before the new one had been installed and of course I would take a long time performing the upgrade. The machine is able to do the upgrade in a matter of a few seconds, I used to take several heart thumping minutes to do the same job.

{{< figure src="xsensior-2.3-teamcity.png" alt="Xsensior 2.3 in TeamCity" title="Xsensior 2.3 build status in TeamCity" >}}

Continuous integration involves building and running tests on each change. Each time we change the software, TeamCity pulls the software from the repo and builds it, then runs the unit tests. If either the build fails or any of the tests fail, then TeamCity lets the culprit know via email so they can fix it.

Every night at 10pm TeamCity takes all of the changes from the day and runs all of the tests, the unit tests again and the integration tests.

The unit tests are fast running single aim tests with very few dependencies and the integration tests exercise pretty much the whole stack end-to-end. Typically, you are going to have quite a lot more unit tests than integration tests.

If the nightly build is successful, TeamCity then kicks off a deployment to our dev server.

Until fairly recently, automated deployment was quite a painful business in the .NET world. Microsoft [have a solution for deploying ASP.Net websites](http://www.iis.net/download/WebDeploy) but we found it to be unsatisfactory for our requirements. We use [Octopus Deploy](http://octopusdeploy.com/) for managing the deployment process.

Octopus Deploy provides a nice web based console to help you visualize and manage the release process. We maintain a release pipeline of dev, stage and production but the specific workflow is quite flexible. The TeamCity nightly build process pushes the newly built software into the dev server. The developers are then able to test the software on dev and when we believe a feature is working we push it to the stage server. That's when the wider company can get involved in testing the feature. When satisfied that the feature is working on stage, we then push the release into production.

{{< figure src="octopus-deploy-radiator.png" alt="octopus deploy radiator" title="Octopus Deploy radiator" >}}

Apart from the initial TeamCity push to dev, the process is administered manually. You tell Octopus to push the software to stage and then production. But, the actual deployment process is automatic. And crucially, the software deployed further down the pipeline is exactly the same software you were testing earlier in the process.

What are the benefits of continuous delivery?

- *Fewer failed deployments* -- if you manually deploy, you will make mistakes;
- *Greater code coverage* -- even without automating tests you are ensuring that each part of your product is being tested. Of course, it is best to automate a lot of the testing but there are always going to be parts of the software that are tricky to get to. Auto deployment can help you test these parts. For instance, the Xsensior Live database layer code does not yet have any integration tests, but because we auto deploy I know that the database update script is being executed at least twice prior to it being run against the production database. So, I have a reasonable amount of confidence that the upgrade will work as expected.

The last thing you want as a software developer, is for your customer to do your testing for you. Continuous delivery helps you exercise your product before your customers. Never a bad thing.
