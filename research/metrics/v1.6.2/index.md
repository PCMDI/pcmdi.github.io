---
layout: default
title: PCMDI - Metrics
---

###### [Research][research] > [Metrics][metrics]
---

# PCMDI Simulation Summaries: CMIP mean state and variability (v1.6.2)<a name="top"></a>

<br/>
The PCMDI Metrics Package ([PMP][pmp]) is a capability that is used to produce a diverse suite of "quick-look" objective summaries of Earth System Model (ESM) agreement with observations. The [PMP][pmp] is routinely applied to multiple generations of CMIP, including the most recent results from CMIP6 as they become available. These results are regularly updated as additional simulations become available, new analysis are included, and as presentation improvements and corrections are made. 
<br/>

* [Mean Climate][mean_clim]
* [Benchmarking Simulated Precipitation][precip]
* [El Niño–Southern Oscillation (ENSO)][enso]
* [Extratropical Modes of Variability][variability_modes]
* [Madden-Julian Oscillation (MJO)][mjo]
* [Monsoon Characteristics (example)][monsoon]
* [_Update history_](#updates)

Results are also accessible from the [Coordinated Model Evaluation Capabilities (CMEC)][cmec] website.

---
## <a name="mean_clim"></a>Mean Climate ([results][description_mean_clim])
- Using well-established statistics, we provide large-scale seasonal and mean state climatology comparisons between CMIP simulations and observationally-based data. These include traditional measures (e.g. bias, pattern correlation and root-mean-square error) for global, hemispheric, tropical, extra-tropical, and other selected domains using satellite data and atmospheric reanalysis as references. These statistics are routinely computed as part of model evaluation. We use summary diagrams developed by PCMDI scientists ([Taylor 2001][taylor2001]; [Gleckler et al. 2008][gleckler2008]) to objectively compare the consistency between the observed and simulated climate.

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="precip"></a>Benchmarking Simulated Precipitation ([results][description_precip])
- These results were inspired by the outcomes of a [July 2019 DOE workshop][doeworkshop2019]. Several teams were established at this workshop with one group tasked to incorporate an initial set of benchmarks into a common analysis framework and applying it to CMIP6 and earlier generations of Earth System models ([Pendergrass, et al., 2019][pendergrass2020]). The results presented here illustrate the progress of this benchmarking effort. In parallel, a second group continues to develop exploratory metrics.  Ultimately, this effort aims to provide a guide to modelers as they strive to improve simulated precipitation.

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="enso"></a>El Niño-Southern Oscillation ([results][description_enso])

- El Niño-Southern Oscillation (ENSO) is the dominant mode of interannual variability in the tropical Pacific and has far reaching impacts on global climate. It is there therefore key to ensure its correct simulation in state-of-the-art Earth System models. Community-wide synthesis of metrics to evaluate the performance, teleconnections and processes of ENSO in coupled GCMs is proposed by the ENSO working group of the [International CLIVAR Pacific panel][clivar_pacific]. The corresponding objective comparisons of simulations against observations shown here result from a collaboration between scientists at [Institut Pierre Simon Laplace (IPSL)][ipsl] and [PCMDI][pcmdi]. This effort strives to improve and expand upon the ENSO model performance tests proposed by [Bellenger et al. (2014)][Bellenger2014] for CMIP5. The metrics are demonstrated through application to the CMIP archive following works of Planton et al. (2020, BAMS, under review).

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="variability_modes"></a>Extratropical Modes of Variability ([results][description_variability])
- Based on the work of Lee et al. ([2019][lee2019], [2021][lee2021]), we present skill metrics for the _Northern Annular Model (NAM), the North Atlantic Oscillation (NAO), the Southern Annular Mode (SAM), the Pacific North American pattern (PNA), the North Pacific Oscillation (NPO), the Pacific Decadal Oscillation (PDO), and the North Pacific Gyre Oscillation (NPGO)_. For NAM, NAO, SAM, PNA, and NPO the results are based on sea-level pressure, while the results for PDO and NPGO are based on sea surface temperature. Our approach distinguishes itself from other studies that analyze modes of variability in that we use the Common Basis Function approach (CBF), in which model anomalies are projected onto the observed modes of variability. Using the Historical simulations, the skill of the spatial patterns is given by the Root-Mean-Squared-Error (RMSE), and the Amplitude gives the standard deviation of the Principal Component time series. The skill metrics are calculated with respect to a primary and secondary sets of observations denoted by the triangles in each cell of the Portrait Plots.

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="mjo"></a>Madden-Julian Oscillation ([results][description_mjo])
- Based on the work of [Ahn et al. (2017)][ahn2017], we present skill metrics that indicate how well models simulate eastward propagation of the MJO. We apply frequency-wavenumber decomposition to precipitation from observations (GPCP-based; 1997-2010) and the CMIP5 and CMIP6 Historical simulations (1985-2004).

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="monsoon"></a>Monsoon Characteristics (example) ([results][description_monsoon])
- Based on the work of [Sperber and Annamalai (2014)][sperber2004], we present skill metrics that indicate how well models simulate the _onset, decay, and duration of monsoon_ based on the analysis of climatological pentads of precipitation. Using Historical simulations, the results are based on area-averaged data for All-India Rainfall (AIR), Sahel, Gulf of Guinea (GoG), North American Monsoon (NAM), South American Monsoon (SAM), and Northern Australia (AUS).

<p align="right"><a href="#top">Back to List</a></p>

---
## <a name="updates"></a>Update History
- [**v1.6.2**][v1.6.2] (2023-11-21): ENSO and MJO interactive plots updated (minor fix)
- [**v1.6.1**][v1.6.1] (2023-10-09): MJO interactive bar chart updated.
- [**v1.6.0**][v1.6.0] (2023-05-19): Precipitation distribution metrics newly added and modes of variability updated.
- [**v1.5.1**][v1.5.1] (2022-11-04): Mean climate interactive portrait plot updated and precipitation variability across timescale portrait plot newly added.
- [**v1.5.0**][v1.5.0] (2020-10-08): Precipitation benchmarking newly added and Mean climate parallel coordinate and portrait plots updated.
- [**v1.4.1**][v1.4.1] (2020-07-20): MJO metrics with recent CMIP6 results
- [**v1.4.0**][v1.4.0] (2020-07-10): ENSO Metrics updated with Interactive Portrait Plot with recent CMIP6 results
- [**v1.3.2**][v1.3.2] (2020-06-19): Mean climate summaries updated with recent CMIP6 results with OBS info updated using PCMDIobs2
- [**v1.3.1**][v1.3.1] (2019-10-07): Mean climate summaries updated with recent CMIP6 results
- [**v1.3.0**][v1.3.0] (2019-09-06): ENSO metrics added
- [**v1.2.0**][v1.2.0] (2019-08-29): Mean climate metrics added
- [**v1.1.0**][v1.1.0] (2019-07-18): MJO metrics added
- [**v1.0.0**][v1.0.0] (2019-06-20): Initial public release
- [**v1.0.0-beta**][v1.0.0-beta] (2019-06-18): Monsoon precipitation onset, decay, and duration (CMIP5) added
- [**v1.0.0-alpha**][v1.0.0-alpha] (2019-05-31): Test release: Extratropical Modes of Variability (CMIP5 and CMIP6)

<p align="right"><a href="#top">Back to List</a></p>

---



Questions or comments about the PCMDI Simulation Summaries should be sent to the [PMP team](mailto:pcmdi-metrics@llnl.gov).

The work of PCMDI and results presented on this web page are supported by the [Regional and Global Model Analysis (RGMA) program area](https://eesm.science.energy.gov/program-area/regional-global-model-analysis) under the [Earth and Environmental System Modeling (EESM) program](https://eesm.science.energy.gov/about) within the [Earth and Environmental Systems Sciences Division (EESSD)](https://science.osti.gov/ber/Research/eessd) of the [United States Department of Energy’s (DOE) Office of Science (OSTI)](https://science.osti.gov/). The work of PCMDI is performed under the auspices of the U.S. DOE by [Lawrence Livermore National Laboratory (LLNL)](https://pls.llnl.gov/) under contract DE-AC52-07NA27344. LLNL-WEB-812310.

[latest]: {{site.baseurl}}/research/metrics/

[v1.6.2]: {{site.baseurl}}/research/metrics/v1.6.2
[v1.6.1]: {{site.baseurl}}/research/metrics/v1.6.1
[v1.6.0]: {{site.baseurl}}/research/metrics/v1.6.0
[v1.5.1]: {{site.baseurl}}/research/metrics/v1.5.1
[v1.5.0]: {{site.baseurl}}/research/metrics/v1.5.0
[v1.4.1]: {{site.baseurl}}/research/metrics/v1.4.1
[v1.4.0]: {{site.baseurl}}/research/metrics/v1.4.0
[v1.3.2]: {{site.baseurl}}/research/metrics/v1.3.2
[v1.3.1]: {{site.baseurl}}/research/metrics/v1.3.1
[v1.3.0]: {{site.baseurl}}/research/metrics/v1.3.0
[v1.2.0]: {{site.baseurl}}/research/metrics/v1.2.0
[v1.1.0]: {{site.baseurl}}/research/metrics/v1.1.0
[v1.0.0]: {{site.baseurl}}/research/metrics/v1.0.0
[v1.0.0-beta]: {{site.baseurl}}/research/metrics/v1.0.0-beta
[v1.0.0-alpha]: {{site.baseurl}}/research/metrics/v1.0.0-alpha

[description_mean_clim]: mean_clim
[description_variability]: variability_modes
[description_monsoon]: monsoon
[description_mjo]: mjo
[description_enso]: enso
[description_precip]: precip

[lee2019]: https://link.springer.com/article/10.1007/s00382-018-4355-4
[lee2021]: https://journals.ametsoc.org/view/journals/clim/34/17/JCLI-D-20-0832.1.xml
[sperber2004]: https://doi.org/10.1007/s00382-014-2099-3
[ahn2017]: https://doi.org/10.1007/s00382-017-3558-4
[Bellenger2014]: https://doi.org/10.1007/s00382-013-1783-z
[gleckler2008]: https://agupubs.onlinelibrary.wiley.com/doi/full/10.1029/2007JD008972
[taylor2001]: https://agupubs.onlinelibrary.wiley.com/doi/abs/10.1029/2000JD900719
[pendergrass2020]: https://doi.org/10.1175/BAMS-D-19-0318.1
[doeworkshop2019]: https://climatemodeling.science.energy.gov/news/doe-hosts-precipitation-metrics-workshop

[research]:{{site.baseurl}}/research
[metrics]:{{site.baseurl}}/research/metrics/

[mean_clim]: mean_clim
[enso]: enso
[variability_modes]: variability_modes
[mjo]: mjo
[monsoon]: monsoon
[precip]: precip

[RGMA]: https://climatemodeling.science.energy.gov/program/regional-global-model-analysis
[DOEOS]: https://www.energy.gov/science/office-science
[LLNL]: https://www.llnl.gov/
[clivar_pacific]: http://www.clivar.org/clivar-panels/pacific
[pcmdi]: https://pcmdi.llnl.gov/
[ipsl]: https://www.ipsl.fr/en/
[cmec]: https://cmec.llnl.gov/results/physical.html
[pmp]: https://github.com/PCMDI/pcmdi_metrics
