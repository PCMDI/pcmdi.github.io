---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Monsoon Onset, Decay, and Duration
---

# Monsoon Onset, Decay, and Duration

<br/>
These results are based on the work of [Sperber and Annamalai (2014)][sperber2004] in which climatological pentads of precipitation were analyzed in observations and CMIP5 for six monsoon-related domains (AIR: All-India Rainfall, AUS: Australian Monsoon, GoG: Gulf of Guinea, NAM: North American Monsoon, SAM: South American Monsoon, and Sahel). In the Northern Hemisphere the 73 climatological pentads run from January-December, while in the Southern Hemisphere the climatological pentads run from July-June. For each domain the precipitation is accumulated at each subsequent pentad and then divided by the total precipitation to give the fractional accumulation of precipitation as a function of pentad. Except for GoG, onset (decay) of monsoon occurs for a fractional accumulation of 0.2 (0.8). Between these fractional accumulations the accumulation of precipitation is nearly linear as the monsoon season progresses.

<br/>
The monsoon Portrait Plots are interactive. Clicking on any cell gives the fractional accumulations for all monsoon domains for that model in comparison with two sets of observations. The plots are the same irrespective of whether one is looking at the plot of onset, decay, or duration. The only difference is that the numerical value of the metric for that cell and that Portrait Plot is given in the meta data.

<br/>
### Summary statistics in Portrait Plots
  - #### CMIP5 Historical: [Onset][CMIP5_monsoon_sperber_onset] | [Decay][CMIP5_monsoon_sperber_decay] | [Duration][CMIP5_monsoon_sperber_duration]

<br/>
### General Results
The results are presented in terms of the model pentad minus the observed pentad. Negative (positive) values indicate that the onset or decay in the model occurs earlier (later) than in observations. For duration, negative (positive) values indicate that for the model it takes fewer (more) pentads to progress from onset to decay compared to observations. For CMIP5 the main conclusion is that we find systematic errors in the phase of the annual cycle of rainfall. The models are delayed in the onset of summer rainfall over India, the Gulf of Guinea, and the South American Monsoon, with early onset prevalent for the Sahel and the North American Monsoon. The lack of consistency in the phase error across all domains suggests that a ‘‘global’’ approach to the study of monsoons may not be sufficient to rectify the regional differences. Rather, regional process studies are necessary for diagnosing the underlying causes of the regionally specific systematic model biases over the different monsoon domains.

---

## Reference
<br/>
> Sperber, K.R. and Annamalai, H., 2014. The use of fractional accumulated precipitation for the evaluation of the annual cycle of monsoons. Climate Dynamics, 43, 3219-3244, [doi:10.1007/s00382-014-2099-3][sperber2004]


[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3

[CMIP5_monsoon_sperber_onset]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/onset_index_rel2obs_v20190618/clickable_portrait.html
[CMIP5_monsoon_sperber_decay]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/decay_index_rel2obs_v20190618/clickable_portrait.html
[CMIP5_monsoon_sperber_duration]: https://pcmdi.llnl.gov/pmp-preliminary-results/ipp_test_monsoon_sperber/duration_rel2obs_v20190618/clickable_portrait.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html
