---
layout: default
title: PCMDI - PNAS_2021
---

# Synthetic MSU Data Used in "Natural variability contributes to model-satellite differences in tropical tropospheric warming"

## CESM LENS

CESM1 large ensemble data is available [here][CESM1] in NetCDF format. The Po-Chedley et al. (2021) study made use of the `tf1` field (which is referred to as TMT in the paper). This data represents mid-tropospheric temperature (with stratospheric contamination removed) and is available on latitude/longitude grids. Other fields from CESM1 are available from [NCAR][NCAR].

## CMIP6 Historical Data

We provide historical time series of tropical and global average mid-tropospheric temperature (including a correction for stratospheric contamination) [here][historical]. Each NetCDF file represents one model realization (the model name and realization are in the filename in a format similar to files provided by ESGF). The `ttt20` and `ttt90` variable in each file represents the tropical (20S-20N) and global (90S-90N) average time series and is comparable to the `tf1` variabile from CESM LENS. Other CMIP6 fields are available from ESGF.

## CMIP6 Atmosphere-only (AMIP) data

We provide atmosphere-only simulation time series of tropical (20S-20N) average mid-tropospheric temperature (including a correction for stratospheric contamination) [here][amip]. As with the historical data, each NetCDF file represents one model realization (the model name and realization are in the filename in a format similar to files provided by ESGF) and includes the `ttt20` variable in each file.

## CMIP6 Extended Runs

The historical simulations are extended beyond 2014 with climate scenarios referred to shared socioeconomic pathways (SSPs). We provide tropical (20S-20N) average mid-tropospheric temperature (including a correction for stratospheric contamination) time series for the historical simulation "spliced" with the SSP370 and SSP585 experiments [here][scenarios]. As with the historical data, the variable in these NetCDF files is `ttt20`. The model, realization, and spliced experiments (e.g., `historical-ssp370`) are included in each netCDF filename. 

## E3SM Simulations

The tropical (20S-20N) average mid-tropospheric temperature (including a correction for stratospheric contamination) time series from E3SM AMIP simulations (performed with different SST datasets) are available [here][e3sm]. The SST dataset used as a boundary condition (COBE2, ERSST5, HadISST, and PCMDI) and realization is specified in the filename. 

[CESM1]:{{site.baseurl}}/research/DandA/PNAS_2019/Large_Ensembles/CESM1/index.html
[NCAR]:https://www.cesm.ucar.edu/projects/community-projects/LENS/
[historical]:{{site.baseurl}}/research/DandA/PNAS_2021/cmip6_historical/index.html
[amip]:{{site.baseurl}}/research/DandA/PNAS_2021/cmip6_amip/index.html
[scenarios]:{{site.baseurl}}/research/DandA/PNAS_2021/scenarios/index.html
[e3sm]:{{site.baseurl}}/research/DandA/PNAS_2021/e3sm/index.html