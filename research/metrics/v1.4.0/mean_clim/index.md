---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Mean Climate
---

# Mean Climate
<br/>
Mean state results from the PCMDI Metrics Package (PMP) are used to produce "quick-look" summary diagrams for the CMIP multi-model ensemble. The focus is on the "Historical" (coupled) and "AMIP" (atmospheric only) simulations which are well-suited for comparing with observations. We update these summaries regularly as new simulations are contributed to CMIP6, quality-control and presentation are improved, and observational datasets are updated.  We provide two methods to interactively explore these 'quick-look' results, one as relative errors and another as absolute errors:

<br/>

## Interactive Portrait Plot (IPP)
<br/>
- Interactive Portrait Plots (IPP) show results that are normalized by the median RMS error across all models (rows), as described in Gleckler et al. (2008).  This normalization enables a common color scale to be used for all statistics and highlights the relative strengths and weakness of different models.  With this normalization an error of -0.5 indicates a model’s error is 50% smaller than the typical (median) error across all models, whereas an error of 0.5 is an error 50% larger than the typical error in the multi-model ensemble.   **This diagram can be used to navigate to additional results.  Hovering your mouse over a square or triangle will reveal the diagnostic plot from which the metrics were generated.  Additionally, hovering over the variables on the x-axis displays a [Taylor diagram](https://en.wikipedia.org/wiki/Taylor_diagram)**.   After hovering on either type of plot, the user can click a second time to get a full sized image.   

- ### PCMDI’s Interactive Portrait Plots
  - [**CMIP5 historical simulations**][portrait_cmip5_hist] (updated 6 May 2020)
  - [**CMIP6 historical simulations**][portrait_cmip6_hist] (updated 18 June 2020)
  - [**CMIP5 AMIP simulations**][portrait_cmip5_amip] (updated 6 May 2020)
  - [**CMIP6 AMIP simulations**][portrait_cmip6_amip] (updated 6 May 2020)

- ### (NEW) Additional Interactive Portrait Plots
  - **CMIP6 Historical**
    - Global space-time (Gleckler et al., 2008): [rms_xyt][portrait_cmip6_hist_global_rms_xyt]
    - Global annual mean: [rms_xy][portrait_cmip6_hist_global_rms_xy]
    - Northern Hemisphere Extratropics 4 Seasons (NHEX): [rms_xy][portrait_cmip6_hist_nhex_rms_xy]
    - Southern Hemisphere Extratropics 4 Seasons (SHEX): [rms_xy][portrait_cmip6_hist_shex_rms_xy]
    - Tropics 4 Seasons: [rms_xy][portrait_cmip6_hist_tropics_rms_xy]

<br/>

## Interactive Parallel Coordinate Plot (experimental)
<br/>
- An interactive Parallel Coordinate Plot (IPCP) is used to dynamically visualize the mean climate statistics generated with the PMP. In an IPCP, each vertical axis represents a different scalar measure gauging some aspect of model fidelity. The results displayed in the IPCP are absolute error measures, i.e., they are not normalized as in the IPP.  Under the default configuration, results from each model are displayed as symbols. **The user can highlight a given model by selecting a symbol on the plot or from the table below the plot. By selecting the symbols representing two versions of the same model, the version differences can be contrasted against the backdrop of results from the multi-model ensemble (symbols).**  The current release allows the user to display CMIP5 and CMIP6 results as: a) All variables for a given season, or b) All seasons for a given variable.

- ### [**Go to PCMDI’s IPCP results for CMIP5 and CMIP6 historical simulations**][parallel_cmip5_6]

<br/>

## Reference Observational Datasets
<br/>

- ### [Summary of the "default" observationally-based reference data used in the above plots][obs_info]

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

[obs_info]: https://raw.githubusercontent.com/PCMDI/PCMDIobs-cmor-tables/master/catalogue/pcmdiobs2_clims_byVar_catalogue_v20200615.json
