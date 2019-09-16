---
layout: default
title: PCMDI - Metrics
---
###### Research > [Metrics][Metrics] > Madden-Julian Oscillation (MJO)
---

# Madden-Julian Oscillation (MJO)
<br/>
These results are based on the work of [Ahn et al. (2017)][ahn2017]. Implementation of the MJO analysis into the PMP is part of a PCMDI collaboration with [Prof. Daehyun Kim (University of Washington)][dhkim], [his group][dhkimgroup], and the [WGNE MJO Task Force][mjotaskforce].
 
<br/>
The MJO consists of large-scale regions of enhanced and suppressed convection, and associated circulation anomalies in the tropics that propagate eastward, mainly over the eastern hemisphere, with a time scale of ~30-60 days (Madden and Julian [1971][Madden1971], [1972][Madden1972], [1994][Madden1994]). Its large-scale nature and period are easily seen via frequency-wavenumber decomposition of near-equatorial data (10°S to 10°N), which partitions the raw anomalies into eastward and westward propagating components and also as a function of frequency (cycles/day). The frequency-wavenumber decomposition technique has been widely used to assess if models properly represent this basic characteristic of the MJO (e.g., [CLIVAR MJO Working Group 2009][clivarmjo2009]; [Kim et al. 2009][kim2009]; [Ahn et al. 2017][ahn2017]). 
 
<br/>
Here we apply the frequency-wavenumber decomposition method to precipitation from observations (GPCP-based; 1997-2010) and the CMIP5 and CMIP6 Historical simulations for 1985-2004. For disturbances with wavenumbers 1-3 and frequencies corresponding to 30-60 days it is clear in observations that the eastward propagating signal dominates over its westward propagating counterpart. Thus, an important metric is the eastward/westward power ratio (EWR) for the above-mentioned wavenumbers and frequencies, which is about 2.5 in observations.

<br/>
### Summary statistics in Interactive Bar Charts
  - #### A. CMIP5 and CMIP6 Historical (organized by modelling center): [EWR][CMIP56_ewr_models]
  - #### B. CMIP5 and CMIP6 Historical (distinct groups): [EWR][CMIP56_ewr_mips]


<br/>
### General Results
- ***Preliminary findings***: [Panel A][CMIP56_ewr_models] provides a comparison of the EWR between the observations and CMIP5 and CMIP6. As presented, this plot facilitates comparison of the EWR by modelling center. [Panel B][CMIP56_ewr_mips] presents the same results, but for  CMIP5 and CMIP6 as distinct groups. The preliminary result is that the EWR is better simulated in CMIP6 compared to CMIP5.

- ***Cautionary Note***: *The MJO frequency and wavenumber windowing is based on observations. Thus, while the EWR provides an initial evaluation of the propagation characteristics of the observed and simulated MJO, it is instructive to look at the frequency-wavenumber spectra, as in some cases the dominant periodicity in a model may be different than in observations.* ***Figures of the frequency-wavenumber power spectra are obtained by left-clicking on the statistics that pop-up when you hover your mouse over a histogram bar (mean over all realizations) or a dot (for an individual realization).***

---

## References
<br/>
> Ahn, M.-S., D. Kim, K. R. Sperber, I.-S. Kang, E. Maloney, D. Waliser, H. Hendon, 2017: MJO simulation in CMIP5 climate models: MJO skill metrics and process-oriented diagnosis. Clim. Dynam., 49, 4023-4045. [doi: 10.1007/s00382-017-3558-4][ahn2017].

> CLIVAR Madden-Julian Oscillation Working Group (Waliser, D., K. Sperber, H. Hendon, D. Kim, E. Maloney, M. Wheeler, K. Weickmann,, C. Zhang, L. Donner, J. Gottschalck, W. Higgins, I.-S. Kang, D. Legler, M. Moncrieff, S. Schubert, W. Stern, F. Vitart, B. Wang, W. Wang, and S. Woolnough), 2009: MJO simulation diagnostics. J. Clim., 22, 3006-3029. [doi: 10.1175/2008JCLI2731.1][clivarmjo2009].

> Kim, D., K. R. Sperber, W. S. Stern, D. Waliser, I.-S. Kang, E. Maloney, W. Wang, K. Weickmann, J. Benedict, M. Khairoutdinov, M.-I. Lee, R. Neale, M. Suarez, K. Thayer-Calder, and G. Zhang, 2009: Application of MJO simulation diagnostics to climate models. J. Clim., 22, 6413-6436. [doi: 10.1175/2009JCLI3063.1][kim2009].

> Madden, R. A., and P. R. Julian, 1971: Detection of a 40–50 day oscillation in the zonal wind in the tropical Pacific. J. Atmos. Sci., 28, 702–708. [doi: 10.1175/1520-0469(1971)028<0702:DOADOI>2.0.CO;2][Madden1971]

> Madden, R. A., and P. R. Julian, 1972: Description of global-scale circulation cells in the tropics with a 40–50 day period. J. Atmos. Sci., 29, 1109–1123. [doi: 10.1175/1520-0469(1972)029<1109:DOGSCC>2.0.CO;2][Madden1972]

> Madden, R. A., and P. R. Julian, 1994: Observations of the 40–50-day tropical oscillation—A review. Mon. Wea. Rev., 122, 814–837. [doi: 10.1175/1520-0493(1994)122<0814:OOTDTO>2.0.CO;2][Madden1994]
 

[dhkim]: https://atmos.uw.edu/faculty-and-research/core-faculty/daehyun-kim/
[dhkimgroup]: https://sites.google.com/uw.edu/kimresearchgroup
[mjotaskforce]: http://www.wmo.int/pages/prog/arep/wwrp/new/MJO_Task_Force_index.html

[ahn2017]: https://doi.org/10.1007/s00382-017-3558-4
[clivarmjo2009]: https://doi.org/10.1175/2008JCLI2731.1
[kim2009]: https://doi.org/10.1175/2009JCLI3063.1
[Madden1971]: https://doi.org/10.1175/1520-0469(1971)028<0702:DOADOI>2.0.CO;2
[Madden1972]: https://doi.org/10.1175/1520-0469(1972)029<1109:DOGSCC>2.0.CO;2
[Madden1994]: https://doi.org/10.1175/1520-0493(1994)122<0814:OOTDTO>2.0.CO;2

[CMIP56_ewr_models]: https://pcmdi.llnl.gov/pmp-preliminary-results/mjo_metrics/mjo_ewr_cmip5and6_overlap_runs_average_sorted_standalone.html
[CMIP56_ewr_mips]: https://pcmdi.llnl.gov/pmp-preliminary-results/mjo_metrics/mjo_ewr_cmip5and6_overlap_runs_average_standalone.html


[Metrics]:{{site.baseurl}}/research/metrics/index.html
