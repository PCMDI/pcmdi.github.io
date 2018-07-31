---
layout: default
title: CMIP6 Participation Guidance for Data Users
---

# CMIP6 Participation Guidance for Data Users
##### [Link back to guide homepage][guide]
##### Karl E. Taylor, Paul J. Durack, Sasha Ames, Martina Stockhause, ...

Document overview:
1. [Experiment design](#1-experiment-design)
1. [Model output specifications](#2-model-output-specifications)
1. [Accessing model output](#3-accessing-model-output)
1. [Terms of use and citation requirements](#4-terms-of-use-and-citation-requirements)
1. [Model and experiment documentation](#5-model-and-experiment-documentation)
1. [Reporting suspected errors](#6-reporting-suspected-errors)
1. [Registering published work based on CMIP6](#7-registering-published-work-based-on-CMIP6)
1. [CMIP6 organization and governance](#8-CMIP6-organization-and-governance)

## 1. Experiment design
The CMIP6 protocol and experiments are described in a [special issue][GMDSpecialIssue] of Geoscientific Model Development with an overview of the design and scientific strategy provided in the lead article of that issue by [Eyring et al. (2016)][EyringEtAl16]

Each model participating in CMIP6 will contribute results from the four DECK experiments (piControl, AMIP, abrupt4xCO2, and 1pctCO2) and the CMIP6 historical simulation. These experiments are the only ones  directly overseen by the the [CMIP Panel][CMIPPanel], and together these constitute the ongoing (slowly evolving) “CMIP Activity”.  They are described in [Eyring et al. (2016)][EyringEtAl16]

In addition to the DECK and historical simulations, each modeling group may choose to contribute to any of the [CMIP6 endorsed MIPs][CMIP6EndorsedMips].  See the [GMD Special CMIP6 Issue][GMDSpecialIssue] for descriptions of each MIP and its experiment specifications. The official names of the currently endorsed CMIP6 MIP activities are recorded in a [“json” file][activityIdJson].

When called for by the experiment protocol, [standard forcing data sets][input4mipsHome] have been used. Any deviation from the standard forcing are supposed to be clearly [documented](#5-model-and-experiment-documentation).

Further documentation about CMIP6 experiments will be available from [ES-DOC][es-docsCmip6], and the reference controlled vocabularies used to define and identify these experiments are available in a [“json” file][experimentIdJson] and are also rendered in [table form][experimentIdhtml].

## 2. Model output specifications
The [CMIP6 Data Request][cmip6DataRequestCog] defines the variables requested from each experiment and specifies the time intervals for which they are supposed to be reported. One option for perusing the lists of variables that should be available from at least some experiments is to display the [excel spreadsheet][variableListXls].

CMIP6 model output includes metadata and is structured similar to CMIP5 output, but changes have been made to accommodate the more complex structure of CMIP6 and its data request. Some changes have been made to make it easier for users to find the data they need and to enable new services to be established providing, for example, model and experiment documentation and citation information.

As in CMIP5, all CMIP6 output has been written to netCDF files with one variable stored per file. The data have been “cmorized” (i.e., written in conformance with the [CF-conventions][cfConventionsPage] and all the CMIP standards).  The CMIP6 data requirements are defined and discussed in the following documents:

* [Definition of CMIP6 netCDF global attributes][cmip6GlobalAttGoogleDoc]
* [Reference “controlled vocabularies” (CV’s) for CMIP6][cmip6Cvs]
* [Specifications][cmip6GlobalAttGoogleDoc] for file names, directory structures,
 and CMIP6 Data Reference Syntax (DRS)
* Specifications for output file content, structure, and metadata are available in [draft google doc](https://goo.gl/neswPr).
* [Guidance on grid requirements][cmip6GridGoogleDoc]
* [Information on pressure levels][cmip6PressureLevelsPdf] requested
* [Guidance on time-averaging][cmip6TimeAveragesCog] (with masking)

Note that in the above, controlled vocabularies (CV’s) play a key role in ensuring uniformity in the description of data sets across all models. For all but variable-specific information, [reference CV’s][cmip6Cvs] are being maintained by PCMDI.  These CV’s are relied on in constructing file names and directory structures, and they enable faceted searches of the CMIP6 archive as called for in the [search requirements document][esgfSearchRequirementsGoogleDoc].

As indicated in the [guidance specifications for output grids][cmip6GridGoogleDoc], weights will be provided to regrid all output to a few standard grids (e.g., 1x1 degree). All regridding information (weights, lats, lons, etc.) will be stored consistent with a standard format approved by the WIP. 

## 3. Accessing model output
CMIP6 model output is available through a distributed data archive developed and operated by the [Earth System Grid Federation (ESGF)][ESGFHome].   [Balaji et al. (2018)][BalajiGMD] provide an overview of the design of additional infrastructure and the configuring of ESGF in supporting CMIP6.   The data are hosted on a collection of nodes located at modeling centers or data centers across the world.  The data can be accessed through any of the CMIP6 CoG web interfaces, which enable users to search across the entire distributed archive as if it were all centrally located.  

Here are the currently active CMIP6 CoG sites (all data can be accessed via either one of these):
* [https://esgf-node.llnl.gov/projects/cmip6/](https://esgf-node.llnl.gov/projects/cmip6/)
* [https://esgf-node.ipsl.upmc.fr/projects/cmip6-ipsl/](https://esgf-node.ipsl.upmc.fr/projects/cmip6-ipsl/)
  
To get to the search interface click on “More search options” under the large red text near the center of the page.  
There are additional options for searching through the web interface (see “More Search Options” near the top right of the page) and there is also an API that can be used to perform searches.   [Tutorials][ESGFTutorial] are available by following the link labeled [“Technical Support”] [ESGFTechSupport] near the top right of the page.  Expert users may also want to use the [ESGF Search RESTful API][ESGFSearchapi].

[Globus][globusHome] is available for downloading some datasets and will provide much better performance for large data volumes.   With the Globus Download option, ESGF will prepare a python script for batch downloads, or you can monitor transfers for a “Web Download”.  You can download an entire “data cart” in one step if all datasets in the cart are served by Globus.   The Globus option requires you to establish a user account on ESGF (see “create account” at top right of CoG pages).  Note also that a second logon with a Globus-enabled credential is required (nb.: Google ids in addition to many institutions are accepted).  

## 4. Terms of use and citation requirements
To enable modeling groups and others who support CMIP6 to demonstrate its impact (and secure ongoing funding), you are required to cite and acknowledge those who have made CMIP6 possible. You also must abide by any licensing restrictions, which are recorded in each file as a  global attribute (named “license”). 

<span style="color:red">Please carefully read and adhere to</span> the [CMIP6 Terms of Use][termsOfUse].  

CMIP6 model output datasets and forcing datasets should, according to the terms of use, be cited by any publication that make use of them (see [Data Citation Guidelines][dataCitationGuide]). Further information on the data citation concept for CMIP6 is available at [cmip6cite.wdc-climate.de][cmip6cite] and described in [Stockhause and Lautenschlager (2017)][Stockhause2017].  

Brief data citation information can be displayed  by clicking on “Show citation” next to datasets listed by the CMIP6 CoG search interface and then navigating to the “landing page”.  It is important to include the version (latest dataset version or if not available the latest data download date) in the data citation of the evolving CMIP6 data.

## 5. Model and experiment documentation
The [controlled vocabularies][cmip6Cvs] contain basic information about the [models][sourceIdHtml], [institutions][institutionIdHtml], and [experiments][experimentIdhtml] in CMIP6.  The CMIP6 results will be fully documented and made accessible via the ES-DOC viewer and comparator interface ([https://search.es-doc.org](https://search.es-doc.org)). Each CMIP6 model output file includes a global attribute called “further_info_url” which will link to a signpost web page providing simulation/ensemble information, model configuration details, current contact details, data citation details etc. This link is also selectable next to each dataset returned by the CMIP6 CoG search interface.  ES-DOC will include documentation of:

* **[Experiments][es-docsExperiments]**: The ES-DOC project has already recorded documentation of the CMIP6 experiments including lists of forcings, model configuration, numerical requirements, information about building the ensembles, links to citations and contact information of the principal investigators as well as text descriptions and information about the rationale behind each experiment
* **[Models][es-docsModels]**: Models will be described on a realm-by-realm basis (i.e. atmosphere, ocean, sea ice, etc.) as well as the top level (coupled model configuration). ES-DOC provides a variety of tools (script-based, text-based, and form-based) for gathering this information from modeling groups, allowing for personal/institutional preference in the way in which documents are created
* **[Experimental conformance][es-docsEnsemblesConformance]**: Each simulation should conform to a number of specific requirements established by the MIP leaders. For example, an experiment may have the requirement that all simulations must start and end on particular dates. The full set of experimental requirements for each experiment can be viewed at [https://search.es-doc.org](https://search.es-doc.org). Sometimes there could be more than one way to meet the requirements, so modeling groups will record information about how each simulation conforms to the specifications
* **[Individual members of an ensemble][es-docsEnsemblesSimulations]**:. Some ensemble documentation is harvested by ES-DOC from published netCDF files, but additional information will be available in ES-DOC. In each model output file the “ripf” identifier is used to uniquely distinguish each member of an ensemble, but the differences between members may not always be clearly (or correctly) recorded in the “variant_info” global attribute. ES-DOC will therefore serve as the reference source for understanding differences between ensemble members. As described in more detail elsewhere ([Definition of CMIP6 netCDF global attributes][cmip6GlobalAttGoogleDoc] and [ES-DOC for CMIP6][es-docsCmip6]), there are 4 indices defining an ensemble member: “r” for realization, “i” for initialization, “p” for physics, and “f” for forcing. Modeling groups will record in ES-DOC the key to interpreting the differences between simulations identified by different indices. In particular for each forcing index, the list of forcing data sets applied in the simulation will be recorded
* **[Computer hardware performance][es-docsPerformance]**: Information will also be provided by ES-DOC on the hardware used in running simulations (e.g. the number of cores) and also metrics describing the performance of each simulation on its machine (e.g. the number of simulated years per real day, etc.)

## 6. Reporting suspected errors
Guidance will be forthcoming.

## 7. Registering published work based on CMIP6
Please register on the [CMIP6 publication database][CMIP6pubs] any articles you publish that make use of CMIP6 output.  Further guidance will be forthcoming.

## 8. CMIP6 organization and governance
The [CMIP Panel][CMIPPanel], which is a standing subcommittee of the WCRP’s [Working Group on Climate Modeling][wgcmSite] provides overall guidance and oversight of CMIP activities. Notably it determines which MIPs will participate in each phase of CMIP using the established selection criteria listed in Table 1 of [Eyring et al. (2016)][EyringEtAl16]. On [its webpages][wgcmCmip6] the CMIP Panel provides additional information that may be of interest to CMIP6 participants, but only the CMIP6 Guide (this document) provides definitive documentation of CMIP6 technical requirements.

The [endorsed MIPs][CMIP6EndorsedMips] are managed by independent committees, but acceptance of endorsement obligates them to follow CMIP’s technical requirements. Thus across all MIPs, the modeling groups can prepare their model output following a common procedure.

The CMIP Panel has delegated responsibility for most of the technical requirements of CMIP to the [WGCM Infrastructure Panel (WIP)][wipCog]. The mission, rationale and Terms of Reference for the panel can be found [here][wipMission]. The WIP has drafted a number of position papers summarizing CMIP6 requirements and specifications. Among these is the [CMIP6 reference specifications for global attributes, filenames, directory structure and Data Reference Syntax (DRS)][cmip6GlobalAttGoogleDoc]. The WIP has also set up a [CMIP Data Node Operations Team (CDNOT)][cdnotGoogleDoc] to interface with data node managers responsible for serving CMIP6 data. This team provides a direct link from the panels establishing data node requirements to those implementing the requirements. 

Information is under preparation describing the governance of the following:

* ESGF & CoG & major replication data centers
* [CF-conventions][cfConventionsPage]
* [ES-DOC][es-docsCmip6]
* [Data citation][CMIP6Citation]
* Long-term archival (LTA) and data quality assurance (QA)
* Evaluation activities
* [input4MIPs][input4mipsCog]
* [obs4MIPs][obs4mipsCog]

###### Document version: 31 July 2018

[guide]: index.html
[institutionIdHtml]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_institution_id.html
[sourceIdHtml]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_source_id.html
[cmip6Cvs]: https://github.com/WCRP-CMIP/CMIP6_CVs
[GMDSpecialIssue]: http://www.geosci-model-dev.net/special_issue590.html
[EyringEtAl16]: http://doi.org/10.5194/gmd-9-1937-2016
[CMIPPanel]: https://www.wcrp-climate.org/wgcm-cmip/cmip-panel
[CMIP6EndorsedMips]: https://www.wcrp-climate.org/modelling-wgcm-mip-catalogue/modelling-wgcm-cmip6-endorsed-mips
[activityIdJson]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_activity_id.json
[experimentIdJson]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_experiment_id.json
[experimentIdhtml]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_experiment_id.html
[input4mipsCog]: https://esgf-node.llnl.gov/search/input4MIPs
[cmip6DataRequestCog]: https://www.earthsystemcog.org/projects/wip/CMIP6DataRequest
[cfConventionsPage]: http://cfconventions.org/
[cmip6GlobalAttGoogleDoc]: http://goo.gl/v1drZl
[cmip6GridGoogleDoc]: http://goo.gl/1oA7bO
[cmip6PressureLevelsPdf]: https://www.earthsystemcog.org/site_media/projects/wip/CMIP6_pressure_levels.pdf
[cmip6TimeAveragesCog]: https://www.earthsystemcog.org/projects/wip/time_averages
[esgfSearchRequirementsGoogleDoc]: https://docs.google.com/document/d/1jNBw2am28Hxux_YuCL_mYMi18EEGkJSGrtNntOs3PJo
[es-docsExperiments]: https://es-doc.org/cmip6-experiments
[es-docsModels]: https://es-doc.org/cmip6-models
[es-docsEnsemblesConformance]: https://es-doc.org/cmip6-ensembles-conformance
[es-docsEnsemblesSimulations]: https://es-doc.org/cmip6-ensembles-simulations
[es-docsPerformance]: https://es-doc.org/cmip6-performance
[es-docsCmip6]: https://es-doc.org/cmip6
[wgcmSite]: https://www.wcrp-climate.org/wgcm-overview
[wgcmCmip6]: https://www.wcrp-climate.org/wgcm-cmip/wgcm-cmip6
[wipCog]: https://www.earthsystemcog.org/projects/wip
[wipMission]: https://www.earthsystemcog.org/projects/wip/aboutus/
[cdnotGoogleDoc]: https://docs.google.com/document/d/1oRWqxtWWEfsucTVhk0G3bMqHC0BL4dJwADrOG8Ukj-g
[obs4mipsCog]: https://www.earthsystemcog.org/projects/obs4mips/
[CMIP6Citation]: http://cmip6cite.wdc-climate.de
[variableListXls]: http://proj.badc.rl.ac.uk/svn/exarch/CMIP6dreq/tags/latest/dreqPy/docs/CMIP6_MIP_tables.xlsx
[input4mipsHome]: https://esgf-node.llnl.gov/projects/input4mips/
[ESGFHome]: https://esgf.llnl.gov/
[BalajiGMD]: https://www.geosci-model-dev-discuss.net/gmd-2018-52/
[ESGFTutorial]: http://www.earthsystemcog.org/projects/cog/tutorials_web
[ESGFTechSupport]: https://www.earthsystemcog.org/projects/cog/contactus/
[ESGFSearchapi]: https://earthsystemcog.org/projects/cog/esgf_search_restful_api
[cmip6cite]: https://redmine.dkrz.de/projects/cmip6-lta-and-data-citation/wiki
[globusHome]: https://globus.org/
[CMIP6pubs]: https://cmip-publications.llnl.gov/view/CMIP6/
[termsOfUse]: https://pcmdi.llnl.gov/CMIP6/TermsOfUse
[dataCitationGuide]: http://bit.ly/2gBCuqM
[Stockhause2017]: https://doi.org/10.5334/dsj-2017-030
