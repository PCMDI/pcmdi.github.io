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

The CMIP6 publishing configuration, ie. the esg.cmip6.ini file is automatically generated and downloaded from github.com (using `esgfetchini`).  While preparing your data, if you discover that your source_id is missing, please contact esgf-pwt@llnl.gov and we will update the file on github.  

If your data node does not run LAS, you will need to change the "las_configure" setting to "false".

Configure your PID and cdf2cim information in esg.ini [config:cmip6] section. 

Contact Renata mccoy20@llnl.gov or Tony hoang1@llnl.gov for an account on the confluence server.  Please mention you institution.

https://acme-climate.atlassian.net/wiki/spaces/ESGF/pages/369983978/RabbitMQ+server+config


[guide]: index.html
