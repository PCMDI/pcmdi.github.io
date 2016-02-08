---
layout: CMIP5
title: CMIP5 Guide
---

# CMIP5 Essential Information 

### 23 November 2011

<br>

## CMIP5 Experiment Design Overview:


The primary reference for experiment design is:

*Taylor, K.E., R.J. Stouffer, G.A. Meehl: An Overview of CMIP5 and the experiment design.” Bull. Amer. Meteor. Soc., 93, 485-498, [doi:10.1175/BAMS-D-11-00094.1](http://dx.doi.org/doi:10.1175/BAMS-D-11-00094.1), 2012.*
{: .indent}


An overview of various aspects of CMIP5 is provided by:

*WCRP Coupled Model Intercomparison Project – Phase 5: Special Issue of the [CLIVAR Exchanges Newsletter, No. 56](http://www.clivar.org/publications/exchanges/Exchanges_56.pdf), Vol. 15, No. 2*
{: .indent}


A fuller description (“lots of details”) of the experiments can be found in:

[A Summary of the CMIP5 Experiment Design]({{site.baseurl}}/projects/cmip5/Taylor_CMIP5_design.pdf)
{: .indent}


The objectives and strategy for the CMIP5 decadal predictions simulations is summarized in:

*Meehl, Gerald A., and Coauthors: Decadal Prediction. Bull. Amer. Meteor. Soc., 90, 1467–1485, [doi:10.1175/2009BAMS2778.1](http://dx.doi.org/doi:10.1175/2009BAMS2778.1), 2009.*
{: .indent}

For further background and information, consult the following web page:

[Experiment Design](http://cmip-pcmdi.llnl.gov/cmip5/experiment_design.html)
{: .indent}



**“Official” Experiment Names. [cmip5_data_reference_Appendix1-1.doc](http://cmip-pcmdi.llnl.gov/cmip5/experiment_design.html) ([pdf format]({{site.baseurl}}/projects/cmip5/cmip5_data_reference_Appendix1-1.pdf)) (New 2013-03-28)**


## CMIP5 Forcing Information:

For simulations of the future, the primary references for the forcing (emissions/concentrations/land-use change can be found in a Special Issue of Climatic Change, which is described at:

[Representative Concentration Pathways (RCP’s)]({{site.baseurl}}/projects/cmip5/RCP_journal_special.docx) ([pdf form]({{site.baseurl}}/projects/cmip5/RCP_journal_special.pdf)) RCP_special_journal
{: .indent}



For simulations of the historical period, references for the forcing (emissions/concentrations/land-use change) can be found in the citation section of the IIASA website:

<http://tntcat.iiasa.ac.at/RcpDb/dsd?Action=htmlpage&page=welcome#citation>
{: .indent}



Additional datasets and references used in CMIP5 are described on the CMIP5 website at:

<http://cmip-pcmdi.llnl.gov/cmip5/forcing.html>
{: .indent}


For the "historicalMisc" simulations, modeling groups were asked to include only a subset of the forcing contributions. See the [historical_Misc_forcing.pdf]({{site.baseurl}}/projects/cmip5/historical_Misc_forcing.pdf) document for for the list of simulations forced by various combinations of anthropogenic or natural agents. The document was updated **2 Jan 2014** to include inadvertently omitted data from CCSM4 and new CESM1-CAM5 simulations"). For all CMIP5 simulations, a list of “forcings” that are active in each run is stored in each output file (in a global attributed called “forcing”) and the key to the abbreviations used in that list is available here:

List of abbreviations used to describe forcing [Appendix 1.2 of DRS document]({{site.baseurl}}/projects/cmip5/cmip5_data_reference_Appendix1-2.doc) ([pdf form]({{site.baseurl}}/projects/cmip5/cmip5_data_reference_Appendix1-2.pdf))
{: .indent}


Additional information relevant to the development of the forcing datasets, as well as their interpretation, can be found at:

[IPCC's DDC](http://www.ipcc-data.org/index.html)
{: .indent}


## CMIP5 Model Output:

The list of variables requested as part of CMIP5 is available in 2 formats:

[standard_output.pdf]({{site.baseurl}}/projects/cmip5/standard_output.pdf)
{: .indent}

[standard_output.xls]({{site.baseurl}}/projects/cmip/standard_output.xls)
{: .indent}

The output is stored in netCDF files and includes extensive metadata allowing automated processing.  The metadata requirements of CMIP5 are described in:

[CMIP5_output_metadata_requirements.pdf]({{site.baseurl}}/projects/cmip5/CMIP5_output_metadata_requirements.pdf)
{: .indent}

A key to some of the controlled vocabulary applied to CMIP5 model output, which enables one to decipher the information contained in filenames and in some of the metadata is described in:

[cmip5_data_reference_syntax.pdf]({{site.baseurl}}/projects/cmip5/cmip5_data_reference_syntax.pdf)
{: .indent}

All users of CMIP5 model output should be sure to properly cite and acknowledge the data: 

[Citation/Acknowledgment]({{site.baseurl}}/projects/cmip5/citation.html)
{: .indent}


“Official” Names of CMIP5 Models and Modeling Groups [CMIP5_modeling_groups]({{site.baseurl}}/projects/cmip5/cmip5_data_reference_syntax.pdf) ([pdf format]({{site.baseurl}}/projects/cmip5/CMIP5_modeling_groups.pdf)).

## CMIP5 Model Output Archive:

The process for registering and downloading CMIP5 model output is summarized in the

[Getting Started Document]({{site.baseurl}}/projects/cmip5/data_getting_started.html)
{: .indent}

An overview of currently available model output can be found at:

[Current Availability of Output]({{site.baseurl}}/projects/cmip5/availability.html)
{: .indent}

The CMIP5 model output is served by the following ESGF Data Portals:

PCMDI: <http://pcmdi9.llnl.gov/>
{: .indent}

BADC: <http://esgf-index1.ceda.ac.uk>
{: .indent}

DKRZ: <http://esgf-data.dkrz.de>
{: .indent}

NCI: <http://esg2.nci.org.au>
{: .indent}

## CMIP5 Model and Experiment Documentation:


Model and experiment documentation is available through the the same ESG portals serving the model output (described immediately above).


The documentation can also be accessed directly using a new ["comparator" tool](http://prod.static.esdoc.webfactional.com/js_client/demo/prod/comparator.html). To view documentation for a single model click on "view" next to the model name in the left hand column. You may also create a "table" comparing model properties using this tool.


The ES-DOC collaborative effort is responsible for this new and useful capability. Other tools developed by ES-DOC can be accessed from their [website](http://es-doc.org/).

## Observational Datasets of Special Interest to CMIP5:


Special efforts are being made by a few research groups to provide observationally-based data in a structure and format that facilitates immediate comparison with CMIP5 model output.  Observational datasets that are written in netCDF format and follow the CMIP5 output requirements (modified slightly to apply to observations) are referred to as “Obs4MIPs”.  The Obs4MIPs data is accessible through the same data portals as CMIP5 model output.  For more information go to [Obs4MIPs wiki page](http://obs4mips.llnl.gov:8080/wiki/).

There are, of course, many additional datasets of interest to CMIP5 researchers.  Some of these are described and can be access via the following website:

ClimateDataGuide: <http://climatedataguide.ucar.edu/>

Downscaled Data Based on CMIP5:

The CORDEX project is a WCRP-coordinated exercise to regionally downscale climate model projection data.  The initial focus of this project is to downscale CMIP5 model output from the following CMIP5 simulations: historical, RCP4.5, RCP8.5, AMIP, and decadal prediction runs.  Further information is available at:

<http://wcrp.ipsl.jussieu.fr/SF_RCD_CORDEX.html>


Links to Projects and Sites with Close Ties to CMIP5:

[CFMIP](http://cfmip.metoffice.com/) (Cloud Feedback Model Intercomparison Project)

[CORDEX](http://wcrp.ipsl.jussieu.fr/SF_RCD_CORDEX.html) (COordinated Regional climate Downscaling EXperiment)

[GeoMIP](http://climate.envsci.rutgers.edu/GeoMIP/) (Geoengineering Model Intercomparison Project)

[PMIP](http://pmip3.lsce.ipsl.fr/) (Paleoclimate Modelling Intercomparison Project)

[TAMIP](http://www.metoffice.gov.uk/hadobs/tamip/) (Transpose-AMIP)

[TGICA & IPCC's DDC](http://www.ipcc-data.org/ddc_about.html) (Task Group on data and scenario support for Impact and Climate Analysis and the IPCC's Data Distribution Centre)

[ESGF](http://esgf.org/) (Earth System Grid Federation)

[METAFOR](http://metaforclimate.eu/) (Metadata For Climate Models)

[Earth System Curator](http://www.earthsystemcurator.org/index.shtml)

[WGCM](http://www.wcrp-climate.org/wgcm/) (Working Group on Coupled Modelling)

[Obs4MIPs](http://obs4mips.llnl.gov:8080/wiki/) (Observations for Model Intercomparison Projects)

[COWCLIP](http://www.jcomm.info/COWCLIP) (Coordinated Ocean Wave CLImate Projections)




