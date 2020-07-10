---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > El Niño-Southern Oscillation (ENSO)
---

# El Niño-Southern Oscillation (ENSO)
<br/>
The El Niño-Southern Oscillation (ENSO) is the dominant mode of interannual variability in the tropical Pacific and has far-reaching impacts on climate around the world. It is therefore key to ensure the correct simulation of ENSO in state-of-the-art climate models. A community-wide synthesis of metrics to evaluate the performance, teleconnections and processes of ENSO in coupled GCMs is now underway, led by the ENSO Metrics Working Group of the [International CLIVAR Pacific Panel][clivar_pacific]. 
<br/>
<br/>

The corresponding objective comparisons of simulations against observations shown here result from a collaboration between scientists at [Institut Pierre Simon Laplace (IPSL)][ipsl] and [PCMDI][pcmdi]. This effort strives to improve and expand upon the ENSO model performance tests proposed by [Bellenger et al. (2014)][Bellenger2014] for CMIP5. This collaboration has produced a new [software package][githubrepo], written in Python, to facilitate multi-model diagnosis, evaluation, and intercomparison of ENSO simulations. The package assists in (1) identifying common model biases and their sources to guide model improvements; (2) assessing progress made from one generation of models to the next; (3) identifying models that are best suited for particular tasks; and (4) additional scientific applications. The ENSO package is designed to interface with existing model evaluation software architectures, including the PCMDI Metrics Package. The capabilities of the package are demonstrated through application to the CMIP archive. 
<br/>
<br/>

This effort is described in detail in the following manuscript:  Planton, Y., E. Guilyardi, A. T. Wittenberg, J. Lee, P. J. Gleckler, T. Bayr, S. McGregor, M. J. McPhaden, S. Power, R. Roehrig, J. Vialard, A Voldoire, 2020: **Evaluating climate models with the CLIVAR 2020 ENSO metrics package**, _Bulletin of the American Meteorological Society_, in review.
<br/>
<br/>
<br/>

## Summary statistics in Interactive Portrait Plots
- #### [CMIP5 & 6 Historical][ipp_enso] (updated 10 July 2020)

<br/>

## General Results
<br/>

The ENSO performance metric collection is composed of 15 metrics designed to evaluate the models on three aspects:
- Background climatology: double ITCZ, equator too dry, too cold cold tongue, shifted trade winds (mean biases and seasonal cycles)
- Basic ENSO characteristics: amplitude, skewness, seasonality, SSTA pattern, lifecycle, duration, diversity

The ENSO teleconnection metric collection is composed of 7 metrics designed to evaluate the models on four aspects:
- Basic ENSO characteristics: amplitude, seasonality, SSTA pattern
- ENSO-related anomalies outside the equatorial Pacific during events: precipitation and surface temperature (boreal winter and summer)

The ENSO processes metric collection is composed of 11 metrics designed to evaluate the models on three aspects:
- Background climatology: too cold cold tongue, shifted trade winds (mean biases)
- Basic ENSO characteristics: amplitude, skewness, seasonality, SSTA pattern
- Feedbacks (SSH-SST, SST-heat fluxes, SST-Taux, Taux-SSH)
- Ocean-driven SST change


<br/>
<br/>

---

## Reference
<br/>

  > Planton, Y., E. Guilyardi, A. T. Wittenberg, J. Lee, P. J. Gleckler, T. Bayr, S. McGregor, M. J. McPhaden, S. Power, R. Roehrig, J. Vialard, A Voldoire, 2020: **Evaluating climate models with the CLIVAR 2020 ENSO metrics package**, _Bulletin of the American Meteorological Society_, in review.
  
  > Bellenger, H., Guilyardi, E., Leloup, J. et al. Clim Dyn (2014) 42: 1999. [doi: 10.1007/s00382-013-1783-z][Bellenger2014]



[githubrepo]: https://github.com/CLIVAR-PRP/enso_metrics
[clivar_pacific]: http://www.clivar.org/clivar-panels/pacific
[pcmdi]: https://pcmdi.llnl.gov/
[ipsl]: https://www.ipsl.fr/en/

[Bayr2019]: https://doi.org/10.1007/s00382-018-4575-7
[Bellenger2014]: https://doi.org/10.1007/s00382-013-1783-z

[ipp_enso]: https://pcmdi.llnl.gov/pmp-preliminary-results/interactive_plot/portrait_plot/enso_metric/enso_metrics_interactive_portrait_plots_v20200710.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html
