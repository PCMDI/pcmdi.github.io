---
layout: default
title: Mean Climate
---
###### [Results][results] > [CMIP mean state and variability][mean_and_variability_index_page] > Mean Climate
---

# Mean Climate
<br/>
Mean state results from the PCMDI Metrics Package (PMP) are used to produce "quick-look" summary diagrams for the CMIP multi-model ensemble. The focus is on the "Historical" (coupled) and "AMIP" (atmospheric only) simulations which are well-suited for comparing with observations. We update these summaries regularly as new simulations are contributed to CMIP6, quality-control and presentation are improved, and observational datasets are updated.  We provide two methods to interactively explore these quick-look results, one as <b> absolute errors </b> and another as <b> relative errors</b>:

<br/>

## Interactive Parallel Coordinate Plot
<br/>
- Interactive Parallel Coordinate Plots (IPCPs) are used to dynamically visualize the mean climate statistics generated with the PMP. In an IPCP, each vertical axis represents a different scalar measure gauging some aspect of model fidelity. The results displayed in the IPCP are <b>absolute error measures</b>, i.e., they are not normalized as in the portrait plots (below).  Under the default configuration, results from each model are displayed as symbols. <b><i>To facilitate comparison of a subset of models, the user can highlight individual models by selecting a symbol on the plot or from the legend. A common application is to select two versions of the same (or different) model to enable their performance differences to be contrasted against the backdrop of results from the multi-model ensemble (symbols).</i></b>  The current release allows the user to display CMIP5 and CMIP6 results as for different statistics and regions.

  - [**CMIP6 historical simulations**][parallel_cmip6]
  - [**CMIP5 historical simulations**][parallel_cmip5]

<br/>


## Interactive Portrait Plot
<br/>
- Interactive Portrait Plots (IPP) show results that are normalized by the median RMS error across all models (rows), as described in [Gleckler et al. (2008)][gleckler2008].  This normalization enables a common color scale to be used for all statistics and highlights the <b>relative strengths and weakness of different models</b>.  With this normalization an error of -0.5 indicates a model’s error is 50% smaller than the typical (median) error across all models, whereas an error of 0.5 is an error 50% larger than the typical error in the multi-model ensemble.   <b><i>This diagram can be used to navigate to additional results.  Hovering your mouse over a square or triangle will reveal the diagnostic plot from which the metrics were generated.  Additionally, hovering over the variables on the x-axis displays a [Taylor diagram][taylor2001]</i></b>.   After hovering on either type of plot, the user can click a second time to get a full sized image.

  - [**CMIP6 historical simulations**][portrait_cmip6_hist]
  - [**CMIP5 historical simulations**][portrait_cmip5_hist]
  - [**CMIP6 AMIP simulations**][portrait_cmip6_amip]
  - [**CMIP5 AMIP simulations**][portrait_cmip5_amip]

  - **Additional decompositions for CMIP6 Historical**
    - [Global space-time (Gleckler et al. 2008): rms_xyt][portrait_cmip6_hist_global_rms_xyt]
    - [Global annual mean: rms_xy][portrait_cmip6_hist_global_rms_xy]
    - [Northern Hemisphere Extratropics 4 Seasons (NHEX): rms_xy][portrait_cmip6_hist_nhex_rms_xy]
    - [Southern Hemisphere Extratropics 4 Seasons (SHEX): rms_xy][portrait_cmip6_hist_shex_rms_xy]
    - [Tropics 4 Seasons: rms_xy][portrait_cmip6_hist_tropics_rms_xy]

<br/>


## Reference Observational Datasets
<br/>

- [**Summary of the "default" observationally-based reference data used in the above plots**][obs_info]

<br/>

---

## References
<br/>

Gleckler, P. J., K. E. Taylor, and C. Doutriaux, 2008: Performance metrics for model evaluation. J. Geophys. Res., 113, D06104, [doi: 10.1029/2007JD008972][gleckler2008].

Taylor, K. E., 2001: Summarizing multiple aspects of model performance in a single diagram. J. Geophys. Res., 106, 7183–7192, [doi: 10.1029/2000JD900719][taylor2001].


[portrait_cmip6_hist]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/global/rms_xy_season/clickable_portrait.html
[portrait_cmip5_hist]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip5/historical/v20200506/clickable_portrait.html
[portrait_cmip6_amip]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/amip/v20200506/clickable_portrait.html
[portrait_cmip5_amip]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip5/amip/v20200506/clickable_portrait.html

[portrait_cmip6_hist_global_rms_xyt]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/global/rms_xyt/clickable_portrait.html
[portrait_cmip6_hist_global_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/global/rms_xy/clickable_portrait.html
[portrait_cmip6_hist_nhex_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/NHEX/rms_xy/clickable_portrait.html
[portrait_cmip6_hist_shex_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/SHEX/rms_xy/clickable_portrait.html
[portrait_cmip6_hist_tropics_rms_xy]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/mean_clim/cmip6/historical/v20201008/TROPICS/rms_xy/clickable_portrait.html

[parallel_cmip6]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/mean_climate/parallel_coordinate/v20201008/cover_cmip6.html
[parallel_cmip5]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/mean_climate/parallel_coordinate/v20201008/cover_cmip5.html

[gleckler2008]: https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2007JD008972
[taylor2001]: https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2000JD900719

[obs_info]: https://raw.githubusercontent.com/PCMDI/PCMDIobs-cmor-tables/master/catalogue/pcmdiobs2_clims_byVar_catalogue_v20200615.json

[results]:{{site.baseurl}}/results
[mean_and_variability_index_page]: {{site.baseurl}}/results/physical.html
