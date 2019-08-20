---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > El Niño-Southern Oscillation (ENSO)
---

# El Niño-Southern Oscillation (ENSO)

The El Niño-Southern Oscillation (ENSO) is the dominant mode of interannual variability in the tropical Pacific and has far-reaching impacts on climate around the world. It is therefore key to ensure the correct simulation of ENSO in state-of-the-art climate models. A community-wide synthesis of metrics to evaluate the performance, teleconnections and processes of ENSO in coupled GCMs is now underway, led by the ENSO Metrics Working Group of the International CLIVAR Pacific Panel. This collaboration has already produced a new software package, written in Python, to facilitate multi-model diagnosis, evaluation, and intercomparison of ENSO simulations. The package assists in (1) identifying common model biases and their sources to guide model improvements; (2) assessing progress made from one generation of models to the next; (3) identifying models that are best suited for particular tasks; and (4) revealing emergent constraints among the diverse model responses to future climate change. The ENSO package is designed to interface with existing model evaluation software architectures, including the PCMDI Metrics Package. The capabilities of the package are demonstrated through application to the CMIP5 archive. A paper documenting the package and its application to the CMIP6 simulations is planned for the near future (Planton et al. 2019).

#### Summary statistics in Portrait Plots (Interactive version coming soon)
  - #### CMIP5 & 6 Historical: [Performance][CMIP5_6_enso_perf] | [Teleconnection][CMIP5_6_enso_tel] 

#### General Results
The ENSO performance metric collection is composed of 28 metrics designed to evaluate the models on three aspects:
- Mean biases (double ITCZ, too cold cold tongue,...),
- Mean ENSO statistics (amplitude, skewness and seasonality),
- Mean ENSO events (anomalies during boreal winter, life-cycle, duration,...)

The ENSO teleconnection metric collection is composed of 19 metrics designed to evaluate the models on four aspects:
- Mean ENSO SSTA along the equator during events,
- Mean precipitation anomalies outside the equatorial Pacific during events,
- Mean sea level pressure anomalies outside the equatorial Pacific during events,
- Mean surface temperature anomalies outside the equatorial Pacific during events,

The ENSO processes metric collection is composed of 8 metrics designed to evaluate the models on three aspects:
- Mean ENSO amplitude,
- Mean ENSO ocean-driven SST change,
- Feedbacks (SSH-SST, SST-heat fluxes, SST-Taux, Taux-SSH)
These metrics are based on Bayr et al. (2019).

These results are preliminary and the metrics used will change. The number of metrics must be reduced so we are currently investigating the link between metrics to retain only the most scientifically relevant and statistically independent metrics. The definition of ENSO events is also evolving.

---

## Reference
> REF


[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3

[CMIP5_6_enso_perf]: {{site.baseurl}}/research/metrics/enso/cmip5_6_enso_perf.html
[CMIP5_6_enso_tel]: {{site.baseurl}}/research/metrics/enso/cmip5_6_enso_tel.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html
