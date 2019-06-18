---
layout: default
title: PCMDI - Metrics
---

# PCMDI Simulation Metrics ([v1.0][v1.0])
The [PCMDI Metrics Package (PMP)](https://github.com/PCMDI/pcmdi_metrics) provides a diverse suite of objective summaries of Earth System Model agreement with observations. Simulation summary metrics listed below is our preliminary results marked as version 1.0 released at 17 June 2019. Further update will follow.

---
## Extra-tropical Variability Modes
- Metrics for Modes of Variability Metrics for CMIP5/6 models. The Modes of Variability Metrics is developed at Program for Climate Model Diagnosis and Intercomparison (PCMDI) of Lawrence Livermore Natioanal Laboratory (LLNL). The metrics were developed by Jiwoo Lee, Ken Sperber, Peter Gleckler, Celine Bonfils, and Karl Taylor. 

  > Lee, J., Sperber, K.R., Gleckler, P.J., Bonfils, C.J. and Taylor, K.E., 2019. Quantifying the agreement between observed and simulated extratropical modes of interannual variability. Climate dynamics, 52: 4057-4089, [doi: 10.1007/s00382-018-4355-4][lee2019].

- #### Summary statistics
  - #### CMIP5 Historical: [Amplitude][CMIP5_variability_amplitude] | [RMSE][CMIP5_variability_rmse]
  - #### CMIP6 Historical: [Amplitude][CMIP6_variability_amplitude] | [RMSE][CMIP6_variability_rmse]

---
## Monsoon Precipitation: Fractional Accumulation
- Monsoon metrics for CMIP5 models. The Metric is developed at Program for Climate Model Diagnosis and Intercomparison (PCMDI) of Lawrence Livermore Natioanal Laboratory (LLNL). The metrics were developed by Ken Sperber.

  > Sperber, K.R. and Annamalai, H., 2014. The use of fractional accumulated precipitation for the evaluation of the annual cycle of monsoons. Climate dynamics, 43, 3219-3244, [doi:10.1007/s00382-014-2099-3][sperber2004]

- #### Summary statistics
  - #### CMIP5 Historical: [Onset][CMIP5_monsoon_sperber_onset] | [Decay][CMIP5_monsoon_sperber_decay] | [Duration][CMIP5_monsoon_sperber_duration]

---
## Updates
- [v1.0][v1.0]: Summary statistics first released for extra-tropical variability modes for CMIP5 and CMIP6, and fractional accumulation for monsoon precipitation for CMIP5 (17 June 2019)
- [v0.1][v0.1]: Test output listed (31 May 2019).

[v1.0]: {{site.baseurl}}/research/metrics/index.html
[v0.1]: {{site.baseurl}}/research/metrics/index_v0.1.html

[lee2019]: https://link.springer.com/article/10.1007/s00382-018-4355-4
[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3
[CMIP5_variability_amplitude]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_variability_modes/cmip5_v20190512/clickable_portrait.html
[CMIP5_variability_rmse]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_variability_modes/cmip5_v20190512_rmse/clickable_portrait.html
[CMIP6_variability_amplitude]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_variability_modes/cmip6_v20190503/clickable_portrait.html
[CMIP6_variability_rmse]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_variability_modes/cmip6_v20190503_rmse/clickable_portrait.html
[CMIP5_monsoon_sperber_onset]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_monsoon_sperber/onset_index_rel2obs/clickable_portrait.html
[CMIP5_monsoon_sperber_decay]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_monsoon_sperber/decay_index_rel2obs/clickable_portrait.html
[CMIP5_monsoon_sperber_duration]: https://oceanonly.llnl.gov/lee1043/web/test_dir/ipp_test_monsoon_sperber/duration_rel2obs/clickable_portrait.html
