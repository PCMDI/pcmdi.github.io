---
layout: default
title: Projects
group: "navigation"
---

#Model Intercomparison

####[AMIP - Atmospheric Model Intercomparison Project][AMIP]
AMIP is a standard experimental protocol for global atmospheric general circulation models (AGCMs). It provides a community-based infrastructure in support of climate model diagnosis, validation, intercomparison, documentation and data access.  This framework enables a diverse community of scientists to analyze AGCMs in a systematic fashion, a process which serves to facilitate model improvement.  Virtually the entire [international climate modeling community][icmc] has participated in this project since its inception in 1990.

####[CMIP - Coupled Model Intercomparison Project][CMIP]
The Coupled Model Intercomparison Project (CMIP) studies output from coupled ocean-atmosphere general circulation models that also include interactive sea ice.  These models allow the simulated climate to adjust to changes in climate forcing, such as increasing atmospheric carbon dioxide.  CMIP began in 1995 by collecting output from model "control runs" in which climate forcing is held constant.  Later versions of CMIP have collected output from an idealized scenario of global warming, with atmospheric CO2 increasing at the rate of 1% per year until it doubles at about Year 70.  CMIP output is available for study by approved diagnostic sub-projects.  The WCRP CMIP3 multi-model dataset archived at PCMDI, included realistic scenarios for both past and present climate forcing.  The research based on this dataset has provided much of the new material underlying the IPCC 4th Assessment Report (AR4). The ongoing [WCRP CMIP5][CMIP5] experiment will be the bases for the upcoming IPCC AR5 scheduled for 2013.

####[SMIP - Seasonal Prediction Model Intercomparison Project][SMIP]
The Seasonal Prediction Model Intercomparison Project, developed by the CLIVAR Working Group on Seasonal to Interannual Prediction, is a two-phase experiment to evaluate seasonal predictability using ensembles of simulations with general circulation models. Phase 1, SMIP2, is an examination of one and two season potential predictability. For these experiments observed sea-surface temperatures (SST's) are prescribed as a surface boundary condition. Phase 2, SMIP2/HPF, is an examination of actual predictiability, with the boundary conditions containing no a priori observed information in the seasonal forecast. The SST and sea-ice can be determined from either a two-tiered forecast, or the seasonal forecast may be performed with a coupled ocean-atmosphere model. Participants are welcome to participate in either or both SMIP2 and SMIP2/HFP.

####[APE - Aqua-Planet Experiment Project][APE]
The Aqua-Planet Experiment Project (APE) compares idealised climates simulated by global atmospheric circulation models (AGCMs) which are being used and developed for numerical weather prediction and climate research. Each AGCM is used to simulate the climate on a water covered world using several idealised distributions of sea surface temperature. This simplified environment will focus attention on the distribution and variability of convection in the tropics and of the storm-tracks in mid-latitudes. The experiment aims to provide a benchmark of current model behaviour and, more importantly, to stimulate research to understand the causes of inter-model differences, arising from different subgrid-scale parameterization suites, different dynamical cores, and different methods of coupling the two.

####[PMIP - Paleoclimate Modelling Intercomparison Project][PMIP]
This project is now being hosted by the Laboratorie des Sciences du Climat et l'Environnement (LSCE) and is in its second phase ([PMIP 2][PMIP2]). The purpose is to study the role of climate feedbacks arising for the different climate subsystems (atmosphere, ocean, land surface, sea ice, and land ice) and evaluate the capability of state-of-the-art climiate models to reproduce climate states that are radically different from those of today. Results from both coupled ocean-atmosphere models and ocean-atmosphere-vegetation models are being considered in PMIP 2, whereas only slab-ocean models coupled to the atmosphere were considered in [PMIP 1][PMIP1]. PMIP 2 continues to stimulate development and improvement of paleo-environmental data sets. As in PMIP 1, analysis focuses on both model-model and model-data comparisons.

[Related Intercomparison Projects][related]

----

#Model Testbed


####[CAPT: The Cloud-Associated Parameterizations Testbed][CAPT]
CAPT is a joint project of the Atmospheric System Research ([ASR][ASR]) and the Regional and Global Climate Modeling (RGCM) Programs of the U.S. Department of Energy's Office of Science/Biological and Energy Research ([BER][BER]).  (Prior to February 2010, CAPT was known as the CCPP-ARM Parameterization Testbed.) We are using analyses of global weather from numerical weather prediction (NWP) centers,  in conjunction with field observations such as those provided by [Atmospheric Radiation Measurement Climate Research Facility][ARM], to evaluate parameterizations of sub-gridscale processes in global climate models.  Simply stated, we run realistically initialized climate models in forecast mode to determine their initial drift from the NWP analyse and/or from the available field data, thereby gaining insights on model parameterization deficiencies. 

----

#Detection / Attribution

###Synthetic Microwave Sounding Unit (MSU) temperatures

####1. New Synthetic MSU Data (2011)

We now employ a new method to calculate synthetic Microwave Sounding Unit (MSU) atmospheric temperatures from climate model simulation output. This method was developed by Dr. Carl Mears at Remote Sensing Systems (RSS) in Santa Rosa, California. The method relies on local weighting functions, whose values are dependent on the surface pressure and surface type at each model grid-point. The method is fully described in:

> Mears, C.A., B.D. Santer, C.S. Doutriaux, and F.J. Wentz, 2011: Calculating synthetic microwave sounder brightness temperatures from discrete-level data. Journal of Atmospheric and Oceanic Technology (in review).
{: class="quote"}

This new method has been applied to simulation output from phase 3 of the Coupled Model Intercomparison Project (CMIP-3). The synthetic MSU lower tropospheric temperatures calculated from CMIP-3 output are analyzed in:

> Santer, B.D., C. Mears, C. Doutriaux, P. Caldwell, P.J. Gleckler, T.M.L. Wigley, S. Solomon, N.P. Gillett, D. Ivanova, T.R. Karl, J.R. Lanzante, G.A. Meehl, P.A. Stott, K.E. Taylor, P.W. Thorne, M.F. Wehner, and F.J. Wentz, 2011: Separating signal and noise in atmospheric temperature changes: The importance of timescale. Journal of Geophysical Research (Atmospheres) doi:[10.1029/2011JD016263][DOI1], in press (available online in the JGR "Papers in press" section).
{: class="quote"}

To download the synthetic MSU temperature data used in Santer et al. (2011), and to see more information regarding the calculation of these temperatures, go to [New Synthetic MSU Data 2011][synth2011]

####2. Raw Synthetic MSU Data (2008) 

Synthetic MSU temperatures from 49 simulations of 20th century climate change were calculated as described in:

> Santer, B.D., et al., 2008: Consistency of modeled and observed temperature trends in the tropical troposphere. International Journal of Climatology, 28, 1703-1722, doi:[10.1002/joc.1756][DOI2].
{: class="quote"}

To download the data used in the above article and read about the details on the derivation see 
[Synthetic MSU Data][synth]

[AMIP]:projects/amip.html
[icmc]:http://www-pcmdi.llnl.gov/projects/amip/STATUS/incoming.html
[CMIP]:http://www-pcmdi.llnl.gov/projects/cmip/index.php
[CMIP5]:http://pcmdi-cmip.llnl.gov/cmip5/index.html
[SMIP]:http://www-pcmdi.llnl.gov/projects/smip/smip2.php
[APE]:http://www-pcmdi.llnl.gov/projects/amip/ape/index.html
[PMIP]:http://www-lsce.cea.fr/pmip2/
[PMIP1]:http://www-lsce.cea.fr/pmip/
[PMIP2]:http://www-lsce.cea.fr/pmip2/
[related]:http://www.clivar.org/organization/wgcm/cmip.php
[CAPT]:http://www-pcmdi.llnl.gov/projects/capt/index.php
[ASR]:http://asr.science.energy.gov/
[BER]:http://www.science.doe.gov/Program_Offices/BER.htm
[ARM]:http://www.arm.gov/
[DOI1]:http://dx.doi.org/doi:10.1029/2011JD016263
[DOI2]:http://dx.doi.org/10.1002/joc.1756
[synth]:http://www-pcmdi.llnl.gov/projects/msu/index.php
[synth2011]:http://www-pcmdi.llnl.gov/projects/msu2011/index.php