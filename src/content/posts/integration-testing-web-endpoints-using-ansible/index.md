---
title: "Integration testing web endpoints using Ansible"
date: "2021-11-05"
categories:
  - Network Management
tags:
  - Ansible
summary: "An outline of the potential strategies for adding integration tests to your Ansible configuration scripts."
draft: true
---

An outline of the potential strategies for adding integration tests to your Ansible configuration scripts. I've taken a simple scenario of a very nginx based 
web server and then implemented testing of the web endpoint prior to deployment.

## Why test?

One of the main things I've learned through automating system deployment is that you need to be sure that the system is in a workable state at the end of the process. Ansible does a pretty good job at picking up errors but I always have the nagging feeling that Ansible may not have failed any of the process of deployment but that doesn't always guarantee that the system is working properly.

The imperative to know your system is in a working state is only amplified if you are using continuous deployment. Only your deployment system is going to decide whether your new system is fit for deployment.

Relying solely on the Ansible built-in checks is unlikely to be sufficient to ensure that you don't deploy to production a broken system.

Text goes here...

https://www.unixarena.com/2019/05/passing-variable-from-one-playbook-to-another-playbook-ansible.html/

https://serverfault.com/questions/962040/sharing-ansible-variable-between-plays

https://docs.ansible.com/ansible/latest/collections/ansible/builtin/set_stats_module.html
