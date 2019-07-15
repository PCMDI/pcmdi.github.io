---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Madden-Julian Oscillation (MJO)
---

# Madden-Julian Oscillation (MJO)
These results are based on the work of [Ahn et al. (2017)][ahn2017], in collaboration with [Prof. Daehyun Kim (University of Washington)][dhkim] and [his group][dhkimgroup].
 
The MJO is a large-scale region of enhanced convection and associated circulation anomalies in the tropics that propagate eastward, mainly over the eastern hemisphere, with a time scale of ~30-70 days (Madden and Julian [1971][Madden1971], [1972][Madden1972], [1994][Madden1994]). Its large-scale nature and period are easily seen via frequency-wavenumber decomposition of near-equatorial data (10°S to 10°N), which partitions the propagation into eastward and westward components as a function of frequency (cycles/day). As such, frequency-wavenumber decomposition has been routinely used as an initial diagnostic/metric to assess if models properly represent this basic characteristic of the MJO (e.g., [CLIVAR MJO Working Group 2009][clivarmjo2009]; [Kim et al. 2009][kim2009]; [Ahn et al. 2017][ahn2017]). The results presented here are and the implementation of these analysis into the PMP stem from a collaboration between PCMDI and Daehyun Kim and Min-Seop Ahn at U. of Washington and the WGNE MJO Task Force.
 
Here we apply frequency-wavenumber decomposition to precipitation from observations (GPCP-based) and the CMIP5 and CMIP6 Historical simulations for 1985-2004. For wavenumbers 1-3 and frequencies corresponding to 30-60 days it is clear that in observations eastward propagation dominates over westward propagation. Thus, and important diagnostic/metric is the ratio of eastward/westward propagation for the above-mentioned wavenumbers and frequencies, it being equal to ~2.5 in observations.

#### General Results
Preliminary findings: Panel A provides a comparison of the E/W ratio between the observations and CMIP5 and CMIP6. As presented, this plots facilitates comparison of the CMIP5 and CMIP6 models by modelling center. Panel B presents the same results, but for the CMIP5 and CMIP6 models as distinct groups. The preliminary results is that the E/W ratio is better simulated in CMIP6 compared to CMIP5.

#### Summary statistics in Interactive Bar Charts
  - #### CMIP5 Historical: [EWR][CMIP5_ewr]
  - #### CMIP6 Historical: [EWR][CMIP6_ewr]
  - #### CMIP5 and 6 Historical: [EWR][CMIP56_ewr]
  - #### CMIP5 and 6 Historical (sorted): [EWR][CMIP56_ewr_sorted]

---

## References
> Ahn, M.-S., D. Kim, K. R. Sperber, I.-S. Kang, E. Maloney, D. Waliser, H. Hendon, 2017: MJO simulation in CMIP5 climate models: MJO skill metrics and process-oriented diagnosis. Clim. Dynam., 49, 4023-4045. [doi: 10.1007/s00382-017-3558-4][ahn2017].

> CLIVAR Madden-Julian Oscillation Working Group (Waliser, D., K. Sperber, H. Hendon, D. Kim, E. Maloney, M. Wheeler, K. Weickmann,, C. Zhang, L. Donner, J. Gottschalck, W. Higgins, I.-S. Kang, D. Legler, M. Moncrieff, S. Schubert, W. Stern, F. Vitart, B. Wang, W. Wang, and S. Woolnough), 2009: MJO simulation diagnostics. J. Clim., 22, 3006-3029. [doi: 10.1175/2008JCLI2731.1][clivarmjo2009].

> Kim, D., K. R. Sperber, W. S. Stern, D. Waliser, I.-S. Kang, E. Maloney, W. Wang, K. Weickmann, J. Benedict, M. Khairoutdinov, M.-I. Lee, R. Neale, M. Suarez, K. Thayer-Calder, and G. Zhang, 2009: Application of MJO simulation diagnostics to climate models. J. Clim., 22, 6413-6436. [doi: 10.1175/2009JCLI3063.1][kim2009].

> Madden, R. A., and P. R. Julian, 1971: Detection of a 40–50 day oscillation in the zonal wind in the tropical Pacific. J. Atmos. Sci., 28, 702–708. [doi: 10.1175/1520-0469(1971)028<0702:DOADOI>2.0.CO;2][Madden1971]

> Madden, R. A., and P. R. Julian, 1972: Description of global-scale circulation cells in the tropics with a 40–50 day period. J. Atmos. Sci., 29, 1109–1123. [doi: 10.1175/1520-0469(1972)029<1109:DOGSCC>2.0.CO;2][Madden1972]

> Madden, R. A., and P. R. Julian, 1994: Observations of the 40–50-day tropical oscillation—A review. Mon. Wea. Rev., 122, 814–837. [doi: 10.1175/1520-0493(1994)122<0814:OOTDTO>2.0.CO;2][Madden1994]
 

[dhkim]: https://atmos.uw.edu/faculty-and-research/core-faculty/daehyun-kim/
[dhkimgroup]: https://sites.google.com/uw.edu/kimresearchgroup

[ahn2017]: https://doi.org/10.1007/s00382-017-3558-4
[clivarmjo2009]: https://doi.org/10.1175/2008JCLI2731.1
[kim2009]: https://doi.org/10.1175/2009JCLI3063.1
[Madden1971]: https://doi.org/10.1175/1520-0469(1971)028<0702:DOADOI>2.0.CO;2
[Madden1972]: https://doi.org/10.1175/1520-0469(1972)029<1109:DOGSCC>2.0.CO;2
[Madden1994]: https://doi.org/10.1175/1520-0493(1994)122<0814:OOTDTO>2.0.CO;2

[CMIP5_ewr]: https://oceanonly.llnl.gov/lee1043/web/test_dir/mjo_metrics/mjo_ewr_cmip5_overlap_runs_average_standalone.html
[CMIP6_ewr]: https://oceanonly.llnl.gov/lee1043/web/test_dir/mjo_metrics/mjo_ewr_cmip6_overlap_runs_average_standalone.html
[CMIP56_ewr]: https://oceanonly.llnl.gov/lee1043/web/test_dir/mjo_metrics/mjo_ewr_cmip5and6_overlap_runs_average_standalone.html
[CMIP56_ewr_sorted]: https://oceanonly.llnl.gov/lee1043/web/test_dir/mjo_metrics/mjo_ewr_cmip5and6_overlap_runs_average_sorted_standalone.html

[Metrics]:{{site.baseurl}}/research/metrics/index.html
