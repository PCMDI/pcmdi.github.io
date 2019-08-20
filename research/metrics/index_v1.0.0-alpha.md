---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics]
---

# Climate Model Metrics
---
# _PCMDI Simulation Metrics ([v1.0.0-alpha][v1.0.0-alpha])_[Go to latest][latest]
The [PCMDI Metrics Package (PMP)](https://github.com/PCMDI/pcmdi_metrics) provides a diverse suite of objective summaries of Earth System Model agreement with observations. Simulation summary metrics listed below is our preliminary results marked as version 0.1 released at 31 May 2019. Further update will follow.

---
## Extra-tropical Variability Modes
- Metrics for Modes of Variability Metrics for CMIP5/6 models. The Modes of Variability Metrics is developed at Program for Climate Model Diagnosis and Intercomparison (PCMDI) of Lawrence Livermore Natioanal Laboratory (LLNL). The metrics were developed by Jiwoo Lee, Ken Sperber, Peter Gleckler, Celine Bonfils, and Karl Taylor. 

  > Lee, J., Sperber, K.R., Gleckler, P.J., Bonfils, C.J. and Taylor, K.E., 2019. Quantifying the agreement between observed and simulated extratropical modes of interannual variability. Climate dynamics, 52: 4057-4089, [doi: 10.1007/s00382-018-4355-4][lee2019].

- #### Summary statistics
  - #### CMIP5 Historical: [Amplitude][CMIP5_variability_amplitude] | [RMSE][CMIP5_variability_rmse]
  - #### CMIP6 Historical: [Amplitude][CMIP6_variability_amplitude] | [RMSE][CMIP6_variability_rmse]

---
## Updates
- [**v1.0.0**][v1.0.0] (20 June 2019): Release of summary statistics for extratropical modes of variability in CMIP5 and CMIP6, and for monsoon precipitation onset, decay, and duration in CMIP5.
- [**v1.0.0-beta**][v1.0.0-beta] (18 June 2019): Preliminary Release of summary statistics for extratropical modes of variability in CMIP5 and CMIP6, and for monsoon precipitation onset, decay, and duration in CMIP5.
- [**v1.0.0-alpha**][v1.0.0-alpha] (31 May 2019): Preliminary Release of summary statistics for extratropical modes of variability in CMIP5 and CMIP6.

[latest]: {{site.baseurl}}/research/metrics/index.html
[v1.0.0]: {{site.baseurl}}/research/metrics/index_v1.0.0.html
[v1.0.0-beta]: {{site.baseurl}}/research/metrics/index_v1.0.0-beta.html
[v1.0.0-alpha]: {{site.baseurl}}/research/metrics/index_v1.0.0-alpha.html

[description_variability]: {{site.baseurl}}/research/metrics/plot_description_variability.html
[description_monsoon]: {{site.baseurl}}/research/metrics/plot_description_monsoon.html


[lee2019]: https://link.springer.com/article/10.1007/s00382-018-4355-4
[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3
[CMIP5_variability_amplitude]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip5_v20190512/clickable_portrait.html
[CMIP5_variability_rmse]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip5_v20190512_rmse/clickable_portrait.html
[CMIP6_variability_amplitude]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip6_v20190503/clickable_portrait.html
[CMIP6_variability_rmse]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip6_v20190503_rmse/clickable_portrait.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html

