---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics]
---

# Climate Model Metrics
---
# _PCMDI Simulation Summaries ([v1.0.0][v1.0.0])_ [[Go to latest][latest]]

<br/>
The [PCMDI Metrics Package (PMP)](https://github.com/PCMDI/pcmdi_metrics) is a capability that can be used to produce a diverse suite of objective summaries of Earth System Model (ESM) agreement with observations. At PCMDI, we are routinely applying the PMP to multiple generations of CMIP, including the most recent results from CMIP6 as they become available. The summaries available below will be regularly updated with new and an expanding set of results.

- Mean climate results (*coming soon*)
- [Extratropical Modes of Variability](#variability)
- [Monsoon Precipitation: Fractional Accumulation](#monsoon)

<br/>

---
## <a name="variability"></a>[Extratropical Modes of Variability][description_variability]
- Based on the work of [Lee et al. (2019)][lee2019], we present skill metrics for the _Northern Annular Model (NAM), the North Atlantic Oscillation (NAO), the Southern Annular Mode (SAM), the Pacific North American pattern (PNA), the North Pacific Oscillation (NPO), the Pacific Decadal Oscillation (PDO), and the North Pacific Gyre Oscillation (NPGO)_. For NAM, NAO, SAM, PNA, and NPO the results are based on sea-level pressure, while the results for PDO and NPGO are based on sea surface temperature. Our approach distinguishes itself from other studies that analyze modes of variability in that we use the Common Basis Function approach (CBF), in which model anomalies are projected onto the observed modes of variability. Using the Historical simulations, the skill of the spatial patterns is given by the Root-Mean-Squared-Error (RMSE), and the Amplitude gives the standard deviation of the Principal Component time series. The skill metrics are calculated with respect to a primary and secondary sets of observations denoted by the triangles in each cell of the Portrait Plots. 

  For a brief description of the results, please click [**here**][description_variability]. For more detailed information see:

  > Lee, J., Sperber, K.R., Gleckler, P.J., Bonfils, C.J. and Taylor, K.E., 2019. Quantifying the agreement between observed and simulated extratropical modes of interannual variability. Climate Dynamics, 52: 4057-4089, [doi: 10.1007/s00382-018-4355-4][lee2019].

- #### Summary statistics
  - #### CMIP5 Historical: [RMSE][CMIP5_variability_rmse] | [Amplitude][CMIP5_variability_amplitude]
  - #### CMIP6 Historical: [RMSE][CMIP6_variability_rmse] | [Amplitude][CMIP6_variability_amplitude]

---
## <a name="monsoon"></a>[Monsoon Precipitation: Fractional Accumulation][description_monsoon]
- Based on the work of [Sperber and Annamalai (2014)][sperber2004], we present skill metrics that indicate how well models simulate the _onset, decay, and duration of monsoon_ based on the analysis of climatological pentads of precipitation. Using Historical simulations, the results are based on area-averaged data for All-India Rainfall (AIR), Sahel, Gulf of Guinea (GoG), North American Monsoon (NAM), South American Monsoon (SAM), and Northern Australia (AUS). 

  For a brief description of the results, please click [**here**][description_monsoon]. For more detailed information see:

  > Sperber, K.R. and Annamalai, H., 2014. The use of fractional accumulated precipitation for the evaluation of the annual cycle of monsoons. Climate Dynamics, 43, 3219-3244, [doi:10.1007/s00382-014-2099-3][sperber2004]

- #### Summary statistics
  - #### CMIP5 Historical: [Onset][CMIP5_monsoon_sperber_onset] | [Decay][CMIP5_monsoon_sperber_decay] | [Duration][CMIP5_monsoon_sperber_duration]

---
## Updates
- [**v1.0.0**][v1.0.0] (20 June 2019): Initial public release
- [**v1.0.0-beta**][v1.0.0-beta] (18 June 2019): Addition of monsoon precipitation onset, decay, and duration in CMIP5.
- [**v1.0.0-alpha**][v1.0.0-alpha] (31 May 2019): Release of summary statistics for extratropical modes of variability in CMIP5 and CMIP6.

---

Questions or comments about the PCMDI Simulation Summaries should be sent to the [PMP team](mailto:pcmdi-metrics@llnl.gov).

[latest]: {{site.baseurl}}/research/metrics/index.html
[v1.0.0]: {{site.baseurl}}/research/metrics/index_v1.0.0.html
[v1.0.0-beta]: {{site.baseurl}}/research/metrics/index_v1.0.0-beta.html
[v1.0.0-alpha]: {{site.baseurl}}/research/metrics/index_v1.0.0-alpha.html

[description_variability]: {{site.baseurl}}/research/metrics/variability_modes/plot_description_variability.html
[description_monsoon]: {{site.baseurl}}/research/metrics/monsoon/plot_description_monsoon.html
[description_mjo]: {{site.baseurl}}/research/metrics/mjo/plot_description_mjo.html
[description_enso]: {{site.baseurl}}/research/metrics/enso/plot_description_enso.html


[lee2019]: https://link.springer.com/article/10.1007/s00382-018-4355-4
[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3
[CMIP5_variability_amplitude]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip5_v20190512/clickable_portrait.html
[CMIP5_variability_rmse]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip5_v20190512_rmse/clickable_portrait.html
[CMIP6_variability_amplitude]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip6_v20190503/clickable_portrait.html
[CMIP6_variability_rmse]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_variability_modes/cmip6_v20190503_rmse/clickable_portrait.html
[CMIP5_monsoon_sperber_onset]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/onset_index_rel2obs_v20190618/clickable_portrait.html
[CMIP5_monsoon_sperber_decay]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/decay_index_rel2obs_v20190618/clickable_portrait.html
[CMIP5_monsoon_sperber_duration]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/duration_rel2obs_v20190618/clickable_portrait.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html

