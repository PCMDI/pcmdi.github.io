---
layout: default
title: CMIP6 Participation Guidance for Data Managers
---

<style type="text/css">
    ol { list-style-type: lower-alpha; }
</style>

# CMIP6 Participation for Data Managers
##### [Link back to guide homepage][guide]

## 1. ESGF stack installation & upgrade
    
This section describes the procedure a data node administrator have to follow to install or to update an ESGF data node.

1. [Documentation](https://github.com/ESGF/esgf-installer/wiki)
2. How to (ipython notebook)

## 2. Configuring data/metadata publication on the data node

This section describes the prerequisite steps that need to be carefully follow to configure CMIP6 data publication on the data node side.

1. [Prepare esg.ini file](https://esgf.github.io/esg-publisher/configuration.html#the-default-config-file-esg-ini)
2. [How to](https://github.com/ESGF/esg-publisher/blob/master/notebooks/cmip6-config.ipynb)
3. [Fetch project .ini files](http://esgf.github.io/esgf-prepare/fetchini.html) (optional)
4. [Get ES-DOC credentials for CDF2CIM](https://docs.google.com/document/d/1NkBl9Uk6qImb86d4SmDEEHt6me8huxU7UcTZMldxoVI/edit#)
5. [How to](https://github.com/agstephens/esdoc-cdf2cim/blob/master/notebooks/cdf2cim-for-cmip6-data-managers.ipynb)
6. [Check for the completion of data citation information](http://cmip6cite.wdc-climate.de/#Information-for-ESGF-Data-Node-Managers)

## 3. Configuring data publication on the index node (Tiers 1 site only)

This section describes the prerequisite steps that need to be carefully follow to configure CMIP6 data publication on the index node side.

1. [Prepare user and permissions for publication](https://esgf.github.io/esg-publisher/configuration.html#prepare-user-and-permissions-for-publication)
2. [Setup data access control](https://www.earthsystemcog.org/projects/cog/esgf_cog_data_access_control_setup)
3. [How to](https://github.com/ESGF/esg-publisher/blob/master/notebooks/cmip6-config.ipynb)

## 4. Configuring ESGF data usage metrics through the esgf-dashboard

This section describes how to configure the metrics collection on the data node.

1. [Documentation](https://docs.google.com/document/d/1_ra2swkpdxaQuatcYTc6P8bx5HLnsH7lidgEwAVbEXE/edit#bookmark=kix.bfy9sk70gr7a)
2. [Configuration](https://docs.google.com/document/d/1_ra2swkpdxaQuatcYTc6P8bx5HLnsH7lidgEwAVbEXE/edit#bookmark=kix.st7dz7nolrrw)

## 5. Configuring CoG (Tiers 1 site only)

This section describes how to configure the CoG front end so that the CMIP6 CoG pages and the associated search works as expected.

1. [How to log onto CoG as Node administrator](https://www.earthsystemcog.org/projects/cog/esgf_cog_node_administrator_login)
2. [How to set up the Node “home” project](https://www.earthsystemcog.org/projects/cog/esgf_cog_home_project_setup)
3. [Example of Node home page](https://www.earthsystemcog.org/projects/cog/doc/home_project_example)
4. [How to configure the search for a CoG project](https://www.earthsystemcog.org/projects/cog/esgf_cog_data_search_configuration)
5. [How to configure your CoG to federate with other CoGs](https://www.earthsystemcog.org/projects/cog/doc/node_federation)
6. [How to customize the CoG header and footer](https://www.earthsystemcog.org/projects/cog/header_footer)
7. [How to post a header on top of CoG pages for a special announcement](https://www.earthsystemcog.org/projects/cog/doc/notification_header)

## 6. Validation with ESGF test suite

This section describes the usage of the ESGF test suite that will validate that a data or index node is working as expected. This test-suite should be run after the installation and configuration phase has been completed.

1. [Documentation](https://github.com/ESGF/esgf-test-suite)
2. How to (ipython notebook)

## 7. Configuring data access on the data node

This section describes prerequisite steps needed to apply the appropriate policies to the data access.

1. [Documentation](https://www.earthsystemcog.org/projects/cog/esgf_cog_data_access_control_setup)
2. [How to](https://github.com/ESGF/esg-publisher/blob/master/notebooks/cmip6-config.ipynb)

## 8. (Optional) Checking and fixing CMIP time coordinate

This section describes a tools that permits the data provider to check the consistency of time axis coordinates across several files. Having this quality control well ahead of your data publication step can save you a lot of time.

1. [Install nctime](http://prodiguer.github.io/nctime/installation.html)
2. (Optional) [Fetch project .ini files](http://esgf.github.io/esgf-prepare/fetchini.html)
3. [Check time axis squareness](http://prodiguer.github.io/nctime/axis.html)
4. [Check time coverage continuity](http://prodiguer.github.io/nctime/overlap.html)
5. [CMIP6 Example](https://github.com/Prodiguer/nctime/blob/master/docs/howto.ipynb)

## 9. (Optional) Running PrePARE standalone

This section describes how to configure the PrePARE quality control tool independently from the ESGF publisher. Having this quality control well ahead of your data publication step can save you a lot of time.

1. [Install PrePARE](https://cmor.llnl.gov/mydoc_cmor3_conda/)
2. [Fetch CMIP6 CMOR tables](http://esgf.github.io/esgf-prepare/fetchtables.html)
3. [Check CMIP6 files against CMOR tables and WCRP CV](https://github.com/glevava/cmor/blob/PrePARE_glevava/LibCV/PrePARE/notebooks/PrePARE-howto-ipsl.ipynb)

## 10. Preparing directory structure and files organization to fulfill CMIP6 

This section describes the usage of the esgprep tool. This tool will take of your CMIP data directory structure and will greatly ease dataset version management.

1. [Install esgprep](http://esgf.github.io/esgf-prepare/installation.html)
2. (Optional) [Fetch project .ini files](http://esgf.github.io/esgf-prepare/fetchini.html)
3. [List the datasets related to incoming files](http://esgf.github.io/esgf-prepare/drs.html#list-the-datasets-related-to-the-incoming-files)
4. (Optional) [Display the expected directory tree](http://esgf.github.io/esgf-prepare/drs.html#visualize-the-excepted-drs-tree)
5. (Optional) [List Unix commands to apply](http://esgf.github.io/esgf-prepare/drs.html#list-unix-command-to-apply)
6. [Upgrade your DRS tree](http://esgf.github.io/esgf-prepare/drs.html#run-the-drs-upgrade)

## 11. Publishing a CMIP6 dataset for the first time

This section describe steps required to publish the first version of a new CMIP6 dataset. After those steps your CMIP6 dataset will be findable and accessible from the ESGF portal.

1. [Check for the completion of data citation information](http://cmip6cite.wdc-climate.de/#Information-for-ESGF-Data-Node-Managers)
2. (Optional) [Fetch project .ini files](http://esgf.github.io/esgf-prepare/fetchini.html)
3. [Generate mapfiles](http://esgf.github.io/esgf-prepare/mapfiles.html)
4. [Check the [config:cmip6] section of your esg.ini file](http://esgf.github.io/esg-publisher/configuration.html#the-default-config-file-esg-ini)
5. [Generate certificate for publication](http://esgf.github.io/esg-publisher/configuration.html#myproxy-logon)
6. [Publish to local PostgreSQL database](http://esgf.github.io/esg-publisher/usage.html#publish-to-local-postgres-database)
7. [Publish to local THREDDS server](http://esgf.github.io/esg-publisher/usage.html#publish-to-local-thredds-server)
8. [Publish to the index node](http://esgf.github.io/esg-publisher/usage.html#publish-to-index-node)
9. [How to](https://github.com/ESGF/esg-publisher/blob/master/notebooks/cmip6-publishing.ipynb)

## 12. Describe datasets issues and errata using the errata service

This section describes how data providers can describe issues affecting datasets they have published to ESGF for CMIP6.

1. [Log in to the Errata Service](https://es-doc.github.io/esdoc-errata-client/login.html)
2. [Create an issue](https://es-doc.github.io/esdoc-errata-client/create.html)
3. [Update an issue](https://es-doc.github.io/esdoc-errata-client/update.html)
4. [Close an issue](https://es-doc.github.io/esdoc-errata-client/close.html)
5. [The errata client CLI](https://es-doc.github.io/esdoc-errata-client/client.html)

## 13. Unpublish data (before new version is ready)

This section describes the step you need to follow to withdraw a CMIP6 dataset from ESGF.

1. (Mandatory) [Follow errata workflow](https://docs.google.com/document/d/1y6Nd0Bea6VC6iTguFwHZr2uMM56VSpaqaXtQxCX5t-U/edit#heading=h.bu09kcyyw69m)
2. [Unpublish a dataset](http://esgf.github.io/esg-publisher/usage.html#unpublication)
3. [How to](https://github.com/ESGF/esg-publisher/blob/master/notebooks/data-retract.ipynb)

## 14. Publishing a new version of a CMIP6 dataset

This section describes the step you need to take to publish a new version of a CMIP6 dataset on ESGF. Old version will still be accessible but the latest version will appear  first by default.

1. (Mandatory) [Create an errata explaining the reason of this new version](https://docs.google.com/document/d/1y6Nd0Bea6VC6iTguFwHZr2uMM56VSpaqaXtQxCX5t-U/edit#heading=h.fdv7vt46bwx5)
2. [List the new dataset version related to corrected files](http://esgf.github.io/esgf-prepare/drs.html#list-the-datasets-related-to-the-incoming-files)
3. [Upgrade your DRS tree from latest version](http://esgf.github.io/esgf-prepare/drs.html#run-the-drs-upgrade-from-the-latest-version)
4. [Generate new mapfiles](http://esgf.github.io/esgf-prepare/mapfiles.html)
5. [Follow publication workflow a usual](https://docs.google.com/document/d/1y6Nd0Bea6VC6iTguFwHZr2uMM56VSpaqaXtQxCX5t-U/edit#heading=h.jsb9tnkrcf9s)


###### Document version: 31 January 2019

[guide]: index.html