---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > [Benchmarking Precipitation][precip] > Extreme
---

# Extreme 

Using a non-stationary Generalized Extreme Value statistical method, we calculate selected extreme daily temperature and precipitation indices and their 20 year return values from the CMIP5 and CMIP6 historically forced climate models. We evaluate model performance of these indices and their return values in replicating similar quantities calculated from gridded land based daily observations. We find that at their standard resolutions, there are no meaningful differences between the two generations of models in their quality of simulated extreme daily temperature and precipitation.

Below: Taylor diagram measuring model performance of simulating annual Rx1day and its 20 year return value. The radial axis is normalized standard deviation while the angular axis is the centered pattern correlation. The reference data set is REGEN (black square). The concentric circles show the models’ centered RMSE. CMIP5 models are shown in red. CMIP6 models are shown in blue. Multi-model averages are denoted as “cmip5” and “cmip6” in the legend.

## Rx1day

<img src="taylor_diagram_cmip5and6_historical_Rx1day_annual.png" alt="Rx1day">

## Return Value

<img src="taylor_diagram_cmip5and6_historical_Rx1day_annual_return_value.png" alt="Return Value">

<br/>



---

## References
<br/>

Wehner, M., P Gleckler, J Lee, 2020: Characterization of long period return values of extreme daily temperature and precipitation in the CMIP6 models: Part 1, model evaluation.  Weather and Climate Extremes, 100283, https://doi.org/10.1016/j.wace.2020.100283

Wehner, M., P. Gleckler, J. Lee: Characterization of long period return values of extreme daily precipitation and temperature in the CMIP6 models. Weather and Climate Extremes, submitted.


[TD_MS-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/mean_state/TD.pr.clim.ann.cmip6.historical.regrid2.2p5x2p5.png

[Line_SC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/seasonal_cycle/pr_annual.cycle_all.loc.mod_interactive.html
[Bar_SC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/seasonal_cycle/pr_annual.cycle_rms.bar_all.loc.mod_interactive.html

[Bar_VAC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/STD_across_timescales/pr_STD.amean_interactive_regrid.180x90_cmip5.html
[Bar_VAC-2]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/STD_across_timescales/pr_STD.amean_interactive_regrid.180x90_cmip6.html
[Port_VAC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/STD_across_timescales/pr_STD.amean_portrait_interactive_regrid.180x90_cmip5.html
[Port_VAC-2]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/STD_across_timescales/pr_STD.amean_portrait_interactive_regrid.180x90_cmip6.html

[Line_DC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/diurnal_cycle/pr_diurnal.cycle_all.loc.mod_interactive.html
[Bar_DC-1]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/variability_across_timescales/diurnal_cycle/pr_diurnal.cycle_rms.bar_all.loc.mod_interactive.html
[Bar_DC-2]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/precip/diurnal/pr_diurnal.cycle_rms.bar_all.loc.mod_interactive.html


[Metrics]:{{site.baseurl}}/research/metrics
[precip]:{{site.baseurl}}/research/metrics/precip
