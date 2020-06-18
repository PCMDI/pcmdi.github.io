---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Mean Climate
---

# Mean Climate
<br/>
The mean state results from the PCMDI Metrics Package (PMP) are used to produce summary diagrams for the CMIP muliti-model ensemble.   We provide two methods to interactively explore these results:

<br/>

## Interactive Portrait Plot
<br/>
- An interactive Portrait Plot shows results similar to those in the IPCP, but for each statistic, the results are normalized by the seasonal median error of results across all models (i.e., in a given column/triangle).  With errors expressed as relative to the typical (median error) in the mulit-model ensemble (see Gleckler et al., 2008), a common color scale can be used for all statistics.  For example, an error of -0.5 indicates a model’s error is 50% smaller than the typical error whereas an error of 0.5 is an error 50% larger than the typical error in the multi-model ensemble.   **This diagram can be used to navigate to additional results.  Hovering your mouse over a square or triangle will reveal the diagnostic plot from which the metrics were generated.  Additionally, hovering over the variables on the x-axis displays a [Taylor diagram](https://en.wikipedia.org/wiki/Taylor_diagram)**.   After hovering on either type of plot, the user can click a second time to get a full sized image.   

- ### PCMDI’s Interactive Portrait Plots (Click links below):
  - [**CMIP5 historical simulations**][portrait_cmip5_hist]
  - [**CMIP6 historical simulations**][portrait_cmip6_hist]
  - [**CMIP5 AMIP simulations**][portrait_cmip5_amip]
  - [**CMIP6 AMIP simulations**][portrait_cmip6_amip]

- ### (NEW) Additional Interactive Portrait Plots (Click links below):
  - **CMIP6 Historical**
    - Global: [rms_xyt][portrait_cmip6_hist_global_rms_xyt], [rms_xy][portrait_cmip6_hist_global_rms_xy]
    - Northern Hemisphere Extratropics (NHEX): [rms_xy][portrait_cmip6_hist_nhex_rms_xy]
    - Southern Hemisphere Extratropics (SHEX): [rms_xy][portrait_cmip6_hist_shex_rms_xy]
    - Tropics: [rms_xy][portrait_cmip6_hist_tropics_rms_xy]

<br/>

## Interactive Parallel Coordinate Plot
<br/>
- An interactive Parallel Coordinate Plot (IPCP) is used to dynamically visualize the mean climate statistics generated with the PMP. In an IPCP, each vertical axis represents a different scalar measure gauging some aspect of model fidelity. The results displayed in the IPCP are absolute error measures, i.e., they are not normalized.  Under the default configuration, results from each model are displayed as symbols. **The user can highlight a given model by selecting a symbol on the plot or from the table below the plot. By selecting the symbols representing two versions of the same model, the version differences can be contrasted against the backdrop of results from the multi-model ensemble (symbols).**  The current release allows the user to display CMIP5 and CMIP6 results as: a) All variables for a given season, or b) All seasons for a given variable.

- ### [**Go to PCMDI’s IPCP results for CMIP5 and CMIP6 historical simulations**][parallel_cmip5_6]

<br/>

## Reference Observational Datasets
<br/>

- ### [Summary of the observationally-based reference data used in the above plots][obs_info]

<br/>

---

## Reference
<br/>

  > Gleckler, P. J., K. E. Taylor, and C. Doutriaux, 2008: Performance metrics for model evaluation. J. Geophys. Res., 113, D06104, [doi: 10.1029/2007JD008972][gleckler2008].
  
  > Taylor, K. E., 2001: Summarizing multiple aspects of model performance in a single diagram. J. Geophys. Res., 106, 7183–7192, [doi: 10.1029/2000JD900719][taylor2001].


[portrait_cmip5_hist]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip5/historical/v20200506/clickable_portrait.html
[portrait_cmip6_hist]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200506/clickable_portrait.html
[portrait_cmip5_amip]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip5/amip/v20200506/clickable_portrait.html
[portrait_cmip6_amip]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/amip/v20200506/clickable_portrait.html

[portrait_cmip6_hist_global_rms_xyt]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200617/global/rms_xyt/clickable_portrait.html 
[portrait_cmip6_hist_global_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200617/global/rms_xy/clickable_portrait.html 
[portrait_cmip6_hist_nhex_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200617/NHEX/rms_xy/clickable_portrait.html
[portrait_cmip6_hist_shex_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200617/SHEX/rms_xy/clickable_portrait.html
[portrait_cmip6_hist_tropics_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20200617/TROPICS/rms_xy/clickable_portrait.html

[parallel_cmip5_6]: https://pcmdi-parallel-coordinates.herokuapp.com/

[gleckler2008]: https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2007JD008972
[taylor2001]: https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2000JD900719

[Metrics]:{{site.baseurl}}/research/metrics/index.html

[obs_info]: {{site.baseurl}}/research/metrics/mean_clim/pcmdiobs2_clims_byVar_catalogue_v20200421.json

