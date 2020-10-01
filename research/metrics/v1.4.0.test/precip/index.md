---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Benchmarking Precipitation
---

# Benchmarking Precipitation

Welcome to the results site for benchmarking simulated precipitation in Earth System Models (ESMs)! This effort has been inspired by the outcomes of a July 2019 DOE workshop (Pendergrass, et al., 2019).  That workshop was motivated by discussions that have taken place in recent years in various working groups of the WCRP including the Working Group on Numerical Experimentation (WGNE) and Working Group on Coupled Models (WGCM).  This site was initially made public 2020/10/10 and will be regularly updated as our efforts advance, so check back here soon to see progress.      

<center>
<img style="border:0px" src="{{site.baseurl}}/research/metrics/v1.4.0.test/precip/PR_benchmarking_FIG4.png"
alt="PMP EOS article">
</center>


## Mean State

- [**Taylor diagram of spatial distribution** (CMIP6)][TD_MS-1]


## Seasonal Cycle

- [**Line graph of domain averaged seasonal cycle with monthly mean** (CMIP6)][Line_SC-1]
- [**Bar chart of RMS and RMSC for the seasonal cycle** (CMIP6)][Bar_SC-1]

## Variability Across Timescales (Sub-daily, Daily, Monthly, 3-Monthly, Yearly, and 3-Yearly)

### Standard deviation at differnt timescales

- [**Bar chart of domain averaged STD across timescales** (CMIP5)][Bar_VAC-1]
- [**Bar chart of domain averaged STD across timescales** (CMIP6)][Bar_VAC-2]
- [**Portrait chart of domain averaged STD across timescales** (CMIP5)][Port_VAC-1]
- [**Portrait chart of domain averaged STD across timescales** (CMIP6)][Port_VAC-2]


### Diurnal cycle - phase and amplitude

- [**Line graph of domain averaged diurnal cycle with 3-hourly mean** (CMIP6)][bar]
- [**Bar chart of RMS and RMSC for the diurnal cycle** (CMIP6)][bar]
- [**Bar chart of RMS and RMSC for the diurnal cycle** (CMIP6) (Specific sites used in Fig. 13 of Tang et al. 2020)][bar]



## Intensity/Frequency Distribution

### Unevenness

- [**Bar chart of domain averaged Unevenness** (CMIP5)][bar]



## Extremes


## Drought



---

## References
<br/>


Covey, C, PJ Gleckler, C Doutriaux, DN Williams, A Dai, J Fasullo, K Trenberth, and  A Berg. 2016. ”Metrics for the diurnal cycle of precipitation: Toward routine benchmarks for climate models.”  Journal of Climate 29(12): 4461–4471,  https://doi.org/10.1175/JCLI-D-15-0664.1

Covey, C, C Doutriaux, PJ Gleckler, KE Taylor, KE Trenberth, and Y Zhang. 2018. “High-frequency intermittency in observed and model-simulated precipitation.” Geophysical Research Letters 45(22), https://doi.org/10.1029/2018GL078926

Pendergrass, A.G. and D.L. Hartmann, 2014: Two modes of change of the 
distribution of rain. Journal of Climate, 27, 8357-8371. 
doi:10.1175/JCLI-D-14-00182.1.

Pendergrass, AG, and C Deser. 2017. “Climatological characteristics of typical daily precipitation.” Journal of Climate 30(15): 5985–6003, https://doi.org/10.1175/JCLI-D-16-0684.1

Pendergrass, A. P. J. Gleckler, L. Ruby Leung, and C. Jakob, 2020: Benchmarking simulated precipitation in Earth System Models. BAMS, doi: 10.1175/BAMS-D-19-0318.1.

Perkins, SE, AJ Pitman, NJ Holbrook, and J McAneney. 2007. “Evaluation of the AR4 Climate Models' Simulated Daily Maximum Precipitation over Australia Using Probability Density Functions.” Journal of Climate 20(17): 4356–4376, https://doi.org/10.1175/JCLI4253.1

Tang, S., P. Gleckler, S. Xie, J. Lee, C. Covey, C. Zhang, and M. Ahn, 2020: Evaluating Diurnal and Semi-Diurnal Cycle of Precipitation in CMIP6 Models Using Satellite- and Ground-Based Observations. Submitted to J. Climate.

M Wehner, P Gleckler, J Lee, 2020: Characterization of long period return values of extreme daily temperature and precipitation in the CMIP6 models: Part 1, model evaluation.  Weather and Climate Extremes, 100283

Wehner, M., P. Gleckler, J. Lee: Characterization of long period return values of extreme daily precipitation and temperature in the CMIP6 models. Weather and Climate Extremes, submitted.



[ahn2017]: https://doi.org/10.1007/s00382-017-3558-4
[clivarmjo2009]: https://doi.org/10.1175/2008JCLI2731.1
[kim2009]: https://doi.org/10.1175/2009JCLI3063.1
[Madden1971]: https://doi.org/10.1175/1520-0469(1971)028<0702:DOADOI>2.0.CO;2
[Madden1972]: https://doi.org/10.1175/1520-0469(1972)029<1109:DOGSCC>2.0.CO;2
[Madden1994]: https://doi.org/10.1175/1520-0493(1994)122<0814:OOTDTO>2.0.CO;2

[TD_MS-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/mean_state/TD.pr.clim.ann.cmip6.historical.regrid2.2p5x2p5.png
[Line_SC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/seasonal_cycle/pr_annual.cycle_all.loc.mod_interactive.html
[Bar_SC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/seasonal_cycle/pr_annual.cycle_rms.bar_all.loc.mod_interactive.html

[Bar_VAC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/pr_STD.amean_interactive_regrid.180x90_cmip5.html
[Bar_VAC-2]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/pr_STD.amean_interactive_regrid.180x90_cmip6.html
[Port_VAC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/pr_STD.amean_portrait_interactive_regrid.180x90_cmip5.html
[Port_VAC-2]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/pr_STD.amean_portrait_interactive_regrid.180x90_cmip6.html

[bar]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/diurnal/pr_diurnal.cycle_rms.bar_all.loc.mod_interactive.html


[Metrics]:{{site.baseurl}}/research/metrics/
