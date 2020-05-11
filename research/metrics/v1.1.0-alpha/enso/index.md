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

The corresponding objective comparisons of simulations against observations shown here result from a collaboration between scientists at [Institut Pierre Simon Laplace (IPSL)][ipsl] and [PCMDI][pcmdi]. This effort strives to improve and expand upon the ENSO model performance tests proposed by [Bellenger et al. (2014)][Bellenger2014] for CMIP5. This collaboration has already produced a new [software package][githubrepo], written in Python, to facilitate multi-model diagnosis, evaluation, and intercomparison of ENSO simulations. The package assists in (1) identifying common model biases and their sources to guide model improvements; (2) assessing progress made from one generation of models to the next; (3) identifying models that are best suited for particular tasks; and (4) additional scientific applications. The ENSO package is designed to interface with existing model evaluation software architectures, including the PCMDI Metrics Package. The capabilities of the package are demonstrated through application to the CMIP5 archive. 
<br/>
<br/>

A paper documenting the package and its application to the CMIP6 simulations is planned for the near future (Planton et al. 2019, in preparation).
<br/>
<br/>
<br/>

## Summary statistics in Portrait Plots (_Interactive version coming soon_)

- #### CMIP5 & 6 Historical: [Performance][CMIP5_6_enso_perf] | [Teleconnection][CMIP5_6_enso_tel] 

<br/>

## General Results
<br/>

The ENSO performance metric collection is composed of 28 metrics designed to evaluate the models on three aspects:
- Mean biases (double ITCZ, too cold cold tongue,...)
- Mean ENSO statistics (amplitude, skewness and seasonality)
- Mean ENSO events (anomalies during boreal winter, life-cycle, duration, etc.)
<br/>
<br/>


The ENSO teleconnection metric collection is composed of 19 metrics designed to evaluate the models on four aspects:
- Mean ENSO SSTA along the equator during events
- Mean precipitation anomalies outside the equatorial Pacific during events
- Mean sea level pressure anomalies outside the equatorial Pacific during events
- Mean surface temperature anomalies outside the equatorial Pacific during events
<br/>
<br/>

The ENSO processes metric collection is composed of 8 metrics designed to evaluate the models on three aspects:
- Mean ENSO amplitude
- Mean ENSO ocean-driven SST change
- Feedbacks (SSH-SST, SST-heat fluxes, SST-Taux, Taux-SSH)

<!--These metrics are based on [Bayr et al. (2019)][Bayr2019].-->
<br/>
<br/>

**NOTE**: These results are preliminary and the metrics used will change. The number of metrics must be reduced so we are currently investigating the link between metrics to retain only the most scientifically relevant and statistically independent metrics. The definition of ENSO events is also evolving.

---

## Reference
<br/>

<!--
  > Bayr, T., C. Wengel, M. Latif, D. Dommenget, J. Lübbecke, W. Park (2019). Error compensation of ENSO atmospheric feedbacks in climate models and its influence on simulated ENSO dynamics. Clim. Dyn., 53 [doi: 10.1007/s00382-018-4575-7][Bayr2019]
-->

  > Bellenger, H., Guilyardi, E., Leloup, J. et al. Clim Dyn (2014) 42: 1999. [doi: 10.1007/s00382-013-1783-z][Bellenger2014]

  > Planton Y., E. Guilyardi, A. Wittenberg, J. Lee, P. Gleckler, S. Power, S. McGregor, T. Bayr (2019). ENSO in CMIP6. In preparation


[githubrepo]: https://github.com/eguil/ENSO_metrics/wiki
[clivar_pacific]: http://www.clivar.org/clivar-panels/pacific
[pcmdi]: https://pcmdi.llnl.gov/
[ipsl]: https://www.ipsl.fr/en/

[Bayr2019]: https://doi.org/10.1007/s00382-018-4575-7
[Bellenger2014]: https://doi.org/10.1007/s00382-013-1783-z

[CMIP5_6_enso_perf]: {{site.baseurl}}/research/metrics/enso/cmip5_6_enso_perf.html
[CMIP5_6_enso_tel]: {{site.baseurl}}/research/metrics/enso/cmip5_6_enso_tel.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html
