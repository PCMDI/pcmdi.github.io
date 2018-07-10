---
layout: default
title: CMIP6 Participation Guidance for Data Managers
---

# CMIP6 Participation for Data Managers
##### [Link back to guide homepage][guide]

###### Document version: 13 September 2017

ESGF node installation

Refer to the installer wiki for information.  We support RHEL and CentOS  6 or 7.
https://github.com/ESGF/esgf-installer/wiki

Data preparation

DRS tool (if data needs organization) and mapfile preparation.  See

http://esgf.github.io/esgf-prepare/

ESGF Publication

http://esgf.github.io/esg-publisher/

General CMIP6 configuration, ie. the esg.cmip6.ini file is prepared, thus publisher are not required to make any changes.  If when preparing your data if your institution model is missing, please contact esgf-pwt@llnl.gov and we will update the file on github.  

If your data node does not run LAS, you will need to change the "las_configure" setting to "false".

Configure your PID and cdf2cim information in esg.ini [config:cmip6] section. 

Contact mccoy20 or hoang1@llnl.gov for an account on the confluence server.  Please mention you institution.

https://acme-climate.atlassian.net/wiki/spaces/ESGF/pages/369983978/RabbitMQ+server+config


[guide]: index.html
