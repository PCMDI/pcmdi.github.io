---
layout: default
title:  CMIP6 Citation and Acknowledgement
---

# CMIP6: Proper citation and acknowledgement

In order to document CMIP6’s impact and enable ongoing support of CMIP, you are obliged to properly acknowledge CMIP6 and the participating modeling groups. To that end, you must

* Adhere to any licensing restrictions stated in the “license” global attribute found in the netCDF file headers of each CMIP6 output file. (Note that the restrictions differ depending on the model; see below for further information.)
* Cite, as appropriate, one or more of the CMIP6 experiment design articles found in the [GMD special issue](http://www.geosci-model-dev.net/special_issue590.html)
* Cite CMIP6 model output used in your study as required by the CMIP6 [Data Citation Guidelines](http://bit.ly/2gBCuqM)
* Acknowledge the modeling groups, major supporters of CMIP6, and the WCRP with language similar to: “We thank the climate modeling groups for producing and making available their model output, the [Earth System Grid Federation (ESGF)](http://esgf.llnl.gov/) for archiving the data and providing access, and the multiple funding agencies who supported CMIP6 and ESGF. We acknowledge the World Climate Research Programme, which, through its Working Group on Coupled Modelling, promoted and provided guidance for CMIP6.”
* Include in publications a table listing the models and institutions that provided model output for research use. In this table and as appropriate in figure legends, use the CMIP6 “official” model names viewable as an [html rendering](https://wcrp-cmip.github.io/CMIP6_CVs/docs/CMIP6_source_id.html) of the [CMIP6 source_id controlled vocabulary](https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_source_id.json) and an [html rendering](https://wcrp-cmip.github.io/CMIP6_CVs/docs/CMIP6_institution_id.html) of institution names recorded in the [CMIP6 institution_id controlled vocabulary](https://github.com/WCRP-CMIP/CMIP6_CVs/blob/master/CMIP6_institution_id.json)
* Register any journal articles based on CMIP6 results on the [CMIP6 Publications webpage](https://cmip-publications.llnl.gov/view/CMIP6/). Once a DOI has been assigned by the journal, registering a paper is easy and will make IPCC authors as well as other researchers aware of your work. More importantly it will serve to document the scientific impact of CMIP6, which is of vital importance for securing future funding to support both the modeling groups and software infrastructure of CMIP.

The licensing agreements governing CMIP6 data depend on the model but generally conform to a standard template (nb.: the following is just an example and does not apply to all model output):

```
“CMIP6 model data produced by <Specific Modeling Centre Name> is licensed under a Creative Commons Attribution “[NonCommercial] Share Alike” 4.0 International License (http://creativecommons.org/licenses/by/4.0/). Use of the data should be acknowledged following guidelines found at https://pcmdi.llnl.gov/home/CMIP6/CitationRequirements6-0.html.  Further information about this data, including some limitations, can be found via the further_info_url (recorded as a global attribute in this file). The data producers and data providers make no warranty, either express or implied, including, but not limited to, warranties of merchantability and fitness for a particular purpose. All liabilities arising from the supply of the information (including any liability arising in negligence) are excluded to the fullest extent permitted by law.”
```

In the above statement, the “NonCommercial Share Alike” option is discouraged by the WCRP and many, but not all, institutions plan to release data under the less restrictive “Share Alike” license.
   
### General Warning:

The CMIP6 archive contains the output of scientific simulations of the past and potential future that are subject to multiple sources of error, ranging from errors in data handling, to errors in the representation of the real world in either the model, or the experimental setup for which the model was used. Different parts of the CMIP6 archive may be subject to differing levels of such errors, and users should be alert to these issues, and their potential consequences (and to the limitations of liability expressed in the data license).

###### Document version: 6.0 (21st December 2016)
