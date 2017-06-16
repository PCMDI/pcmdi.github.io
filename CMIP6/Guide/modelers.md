---
layout: default
title: CMIP6 Participation for modelers
---

# CMIP6 Participation for modelers
##### [Link back to Guide homepage][guide]
##### Karl E. Taylor, Paul J. Durack, Michael Lautenschlager and Martina Stockhause

Document overview:
1. [Requirements and expectations](#requirements-and-expectations)
1. [Experiment design](#experiment-design)
1. [Forcing data sets](#forcing-data-sets)
1. [Model output fields](#model-output-fields)
1. [Model output requirements](#model-output-requirements)
1. [Software for preparing/checking output](#software-for-preparing/checking-output)
1. [Archiving/publishing output](#archiving/publishing-output)
1. [Documentation process](#documentation-process)
1. [CMIP6 organization and governance](#cmip6-organization-and-governance)

## Requirements and expectations
Those groups who plan to participate in CMIP6 should (in roughly this order, although
model documentation should be provided as early as possible):

* Indicate your intention to participate by registering your institution and model
 following the instructions on the [WCRP-CMIP github site][wcrpGithubSite].
 ***You will not be able to publish your model output (on ESGF) without first registering
 your institution and model.*** (To do this, anyone without a github account will
 have to create one). The currently registered institutions are listed in a [“json” file][jsonInstFile]
 and can be displayed in [table form][tableInstForm], and so are the currently registered
 models: [“json” file][jsonSourceFile] and [table][tableSourceForm]

* Register contact information for person(s) responsible for entering and maintaining
 CMIP6 model output citation information in the [citation GUI][dkrzCitationGUI]
 [(Documentation of GUI)][dkrzCitationGUIDoc]. This information will be used by
 web-based services being developed and maintained at [DKRZ][DKRZ] to ensure that
 data produced by your center is properly cited. Data users will be able to access
 citation information following the URL stored as a global attribute (further_info_url)
 in each of your netCDF files and also following links to each dataset displayed
 by the ESGF search service

* Provide the following to Martina Stockhause (stockhause@dkrz.de) so that an account
 can be set up:
  - Person: name, email, ORCID (if available), affiliation and
  - Specification of the data, for which this person is responsible, using the
   source_id and institution_id that you have registered at the [WCRP-CMIP github site][WCRPGithubSite]
   (see first bullet above)


* If you are not yet included in the CMIP6-MODELGROUPS-SCI mail list, register your
 scientific contact with CMIP Panel Chair, Veronika Eyring (veronika.eyring@dlr.de)

* Indicate your intention to participate in “endorsed MIPs” by signing up for the
 [endorsed-MIP mailing lists][EndorsedMipMailingList] of interest (click on each
 MIP of interest in the list) and also registering the information in the activity_participation
 field of your source_id (see first bullet above)

* Perform required [DECK, historical, and selected endorsed-MIP experiments](#experiment-design),
 using the required, [standard forcing datasets](#forcing-data-sets)

* Save all [requested model output](#model-output-fields)

* Provide all [required model documentation](#model-output-requirements)

* Prepare and make available model output according to CMIP6 specifications (see
 sections [5](#model-output-requirements), [6](#software-for-preparing/checking-output),
 and [7](#archiving/publishing-output) below)

* Correct published data when errors are discovered... [information forthcoming -
 this will be linked to ES-DOCS errata services]


## Experiment design
The CMIP6 protocol and experiments are described in a [special issue][GMDSpecialIssue]
of Geoscientific Model Development with an overview of the overall design and scientific
strategy provided in the lead article of that issue by [Eyring et al. (2016)][EyringEtAl16]
 
* Each model participating in CMIP6 must contribute results from the four DECK
 experiments (piControl, AMIP, abrupt4xCO2, and 1pctCO2) and the historical simulation.
 See [Eyring et al. (2016)][EyringEtAl16] where the experiment protocol is documented.
 These experiments are considered to define the ongoing (slowly evolving) “CMIP Activity”
 and are directly overseen by the [CMIP Panel][CMIPPanel]
 
* In addition to the DECK and historical simulations, each modeling group may choose
 to contribute to any [CMIP6 endorsed MIPs][CMIP6EndorsedMips] of interest, but
 for each MIP component, results must be provided from the full subset of “tier 1” experiments. See the
 [GMD Special CMIP6 Issue][GMDSpecialIssue] for descriptions of each MIP and its
 experiment specifications. The [endorsed MIPs][CMIP6EndorsedMips] are managed 
 by independent committees and are identified as separate “CMIP6 Activities”, but
 their coordination and their endorsement as part of CMIP6 is the responsibility
 of the [CMIP Panel][CMIPPanel]. The process by which MIP activities become endorsed
 is described [here][CMIP6EndorsedMips] and the criteria for endorsement are listed
 in Table 1 of [Eyring et al. (2016)][EyringEtAl16]. The official names of the 
 currently endorsed CMIP6 MIPs are recorded in a [“json” file][activityIdJson]
 
* When called for by the experiment protocol, [standard forcing data sets](#model-output-fields)
 must be used.
 
* Further documentation about CMIP6 experiments will be available shortly from 
 ES-DOC, and the reference controlled vocabularies used to define and identify
 these experiments are available in a [“json” file][experimentIdJson] and can be
 displayed in [table form][experimentIdhtml]

## Forcing data sets
blah

## Model output fields
blah

## Model output requirements
blah

## Software for preparing/checking output
blah

## Archiving/publishing output
blah

## Documentation process
blah

## CMIP6 organization and governance
blah

###### Document version: 6.0.0 (15 June 2017)

[guide]: index.html
[wcrpGithubSite]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/.github/RegistrationGuidance.md{:target="_blank"}
[jsonInstFile]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_institution_id.json{:target="_blank"}
[tableInstForm]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_institution_id.html{:target="_blank"}
[jsonSourceFile]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_source_id.json{:target="_blank"}
[tableSourceForm]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_source_id.html{:target="_blank"}
[dkrzCitationGUI]: http://cera-www.dkrz.de/citeXA{:target="_blank"}
[dkrzCitationGUIDoc]: http://cera-www.dkrz.de/docs/pdf/CMIP6_Citation_Userguide.pdf{:target="_blank"}
[DKRZ]: https://www.dkrz.de/{:target="_blank"}
[WCRPGithubSite]: https://github.com/WCRP-CMIP/CMIP6_CVs{:target="_blank"}
[EndorsedMipMailingList]: https://www.wcrp-climate.org/modelling-wgcm-mip-catalogue/modelling-wgcm-cmip6-endorsed-mips{:target="_blank"}
[GMDSpecialIssue]: http://www.geosci-model-dev.net/special_issue590.html{:target="_blank"}
[EyringEtAl16]: http://doi.org/10.5194/gmd-9-1937-2016{:target="_blank"}
[CMIPPanel]: https://www.wcrp-climate.org/wgcm-cmip/cmip-panel{:target="_blank"}
[CMIP6EndorsedMips]: https://www.wcrp-climate.org/modelling-wgcm-mip-catalogue/modelling-wgcm-cmip6-endorsed-mips{:target="_blank"}
[activityIdJson]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_activity_id.json{:target="_blank"}
[experimentIdJson]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_experiment_id.json{:target="_blank"}
[experimentIdhtml]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_experiment_id.html{:target="_blank"}