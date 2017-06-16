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
 have to create one). The currently registered institutions are listed in a [“json” file][jsonFile]
 and can be displayed in [table form][tableForm], and so are the currently registered
 models: [“json” file][jsonFile] and [table][tableForm]

* Register contact information for person(s) responsible for entering and maintaining
 CMIP6 model output citation information in the citation GUI (Documentation of GUI).
 This information will be used by web-based services being developed and maintained
 at DKRZ to ensure that data produced by your center is properly cited. Data users
 will be able to access citation information following the URL stored as a global
 attribute (further_info_url) in each of your netCDF files and also following links
 to each dataset displayed by the ESGF search service

* Provide the following to Martina Stockhause (stockhause@dkrz.de) so that an account
 can be set up:
  - Person: name, email, ORCID (if available), affiliation and
  - Specification of the data, for which this person is responsible, using the
    source_id and institution_id that you have registered at the WCRP-CMIP github
    site (see first bullet above)

* If you are not yet included in the CMIP6-MODELGROUPS-SCI mail list, register your
 scientific contact with CMIP Panel Chair, Veronika Eyring (veronika.eyring@dlr.de)

* Indicate your intention to participate in “endorsed MIPs” by signing up for the
 endorsed-MIP mailing lists of interest (click on each MIP of interest in the list)
 and also registering the information in the activity_participation field of your
 source_id (see first bullet above)

* Perform required DECK, historical, and selected endorsed-MIP experiments, using
 the required, standard forcing datasets

* Save all requested model output

* Provide all required model documentation

* Prepare and make available model output according to CMIP6 specifications (see
  sections [5](#model-output-requirements), [6](#software-for-preparing/checking-output),
  and [7](#archiving/publishing-output) below)

* Correct published data when errors are discovered... [information forthcoming - this will be linked to ES-DOCS errata services]


## Experiment design
blah

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
[requirements]: modelers.html#Requirements
[wcrpGithubSite]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/.github/RegistrationGuidance.md{:target="_blank"}
[jsonFile]: https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_institution_id.json{:target="_blank"}
[tableForm]: http://rawgit.com/WCRP-CMIP/CMIP6_CVs/master/src/CMIP6_institution_id.html{:target="_blank"}