---
layout: default
title: CMIP6 Participation Guidance for Data Managers
---

# CMIP6 Participation for Data Managers
##### [Link back to guide homepage][guide]

###### Document version: 13 September 2017

### ESGF node installation

Refer to the installer wiki for information.  We support RHEL 6 and CentOS 6 or 7.
https://github.com/ESGF/esgf-installer/wiki

### Data preparation

DRS tool (if data needs organization) and mapfile preparation.  See:

http://esgf.github.io/esgf-prepare/

### ESGF Publication

http://esgf.github.io/esg-publisher/

General CMIP6 configuration, ie. the esg.cmip6.ini file is pre-populated based on centralized CV information and fetched to the node during installation, thus, the Data Managers are not required to make changes (see one exception below).  If when preparing your data if your institution model is missing, please:

1.  Re-run esgfetchini. If still missing,
2.  Contact esgf-pwt@llnl.gov and we will update the file on github.  

If your data node does not run LAS, you will need to change the "las_configure" setting to "false".

Configure your PID and cdf2cim information in esg.ini [config:cmip6] section. For PID configuration you'll need to add "shared secret" passwords for the RabbitMQ settings (see the publisher manual).  Contact Renata mccoy20@llnl.gov or Tony hoang1@llnl.gov for an account on the confluence server.  Please mention you institution.

https://acme-climate.atlassian.net/wiki/spaces/ESGF/pages/369983978/RabbitMQ+server+config

### Errata Service
 (coming soon)

**Data Availability:** Node administrators need to insert a “policy” to make CMIP6 data available to all users. This can be accomplished by adding the following line to the esgf_policies_common.xml file (TBD: distributed in v2.6.9 ?)

`    <policy resource=".*CMIP6.*" attribute_type="ANY" attribute_value="" action="Read"/>`



[guide]: index.html
