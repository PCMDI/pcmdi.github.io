---
layout: default
title: CCCMA Table Elaborations 
---

## Model CCCMA: Elaborations 

---

### Participation

Model CCCMA is an entry in both the CMIP1 and CMIP2 intercomparison experiments.
Spinup/Initialization

The procedure for spinup/initialization of the CCCma coupled model is as follows (reference: G. Boer and G. Flato, personal communication):

* The model atmosphere was integrated to equilibrium with a mixed-layer ocean and sea ice. Monthly climatological surface fluxes were obtained.

* The model ocean was spun up for > 4000 years from an initial state of rest with uniform temperature and salinity. The ocean was forced with monthly mean atmospheric model surface stresses and with relaxation to monthly mean [Alexander-Mobley (1976)](#references) surface temperatures and [Levitus (1982)](#references) salinities, where the relaxation time scale was 30 days. Climatological monthly mean surface fluxes were obtained.

* Flux adjustments for heat and fresh water were calculated from the uncoupled equilibria of the atmospheric and ocean models. An adaptive coupled simulation with these flux adjustments and relaxation terms with 60-day time scales was carried out for a period of 14 years, and a refined flux adjustment was obtained. Finally, the fresh-water flux adjustments were further modified based on residual model drift during an additional coupled simulation of 5 years.

* The models were coupled and run for an additional 20 years with the refined flux adjustments imposed prior to the beginning of the experiment, whose nominal start time was the year 1850. The coupled model then was integrated for 200 years, exhibiting a residual drift of ~ 0.1 deg C per century. In order to be well-separated from the initial state, data retained from nominal years 1900 to 2150 was provided for CMIP.

### Land Surface Processes

* Soil heat storage is determined as a residual of the surface heat fluxes and of the heat source/sink of freezing/melting snow cover and soil ice (see below). Soil temperature is computed from this heat storage in a single layer, following the method of [Deardorff (1978)](#references)which accounts for both diurnal and longer-period forcing. The composite conductivity/heat capacity of the soil in each grid box is computed as a function of soil type, soil moisture, and snow cover.

* Soil moisture is predicted by a single-layer "bucket" model with field capacity and slope factors varying by primary/secondary soil and vegetation types for each grid box. Soil moisture budgets include both liquid and frozen water. The effective local moisture capacity is given by the product of field capacity and slope factor, with evapotranspiration efficiency beta a function of the ratio of soil moisture to the local effective moisture capacity. Runoff occurs implicitly if this ratio exceeds 1 (which is more likely the higher the local slope factor and the lower the local field capacity). Runoff from GCM squares within a river basin is transported directly to the ocean grid square at the mouth of the river. Cf. [McFarlane et al. (1992)](#references), [Boer et al. (1984)](#references) , and [Flato et al. (1998)](#references) for further details.

### Sea Ice

* Sea ice forms when the temperature of the ocean mixed layer is less than the freezing point of salt water (approximately 271.18 K).  Until the ice mass exceeds a threshold of 45 kg m-2, however,the ocean surface is not considered to be ice-covered.  Leads are represented as thin-ice regions, with mass equal to this threshold value.  The fractional area of leads decreases as the total ice mass increases.

* Snow may accumulate on sea ice.  Snow that falls on thin ice, or on ice  whose mass  is less than 45 kg m-2, is assumed to directly augment the ice.  The average density of snow on the ice is 275 kg m-3; this increases exponentially with depth (at an e-folding value of 1.85 m).  To prevent the density profile of snow from exceeding that of the ice, the snow mass is limited to1180 kg m-2, with any excess being converted to ice.  Snow also affects the surface albedo.

* Sea ice thermodynamics follow [Semtner (1976)](#references).  The surface temperature of the ice is a prognostic function of the surface heat balance and of a conduction heat flux from the underlying ocean. The conduction flux, which depends on the ice thickness and the temperature gradient between the ocean and the ice, is specified to restore ice amounts/extents to climatological values.  In order to prevent unbounded growth of ice, negative heat flux and temperature adjustments are disallowed if the ice thickness exceeds 2 m.  In the Southern ocean, a heat flux of at least 14 W m-2 is extracted from the ocean to prevent continuous accumulation of ice when temperatures are too cold to allow summer melt.

* Sea ice dynamics and rheology are neglected.  For further information see [McFarlane et al. (1992)](#references).

### References

Alexander, R.C., and R.L. Mobley 1976: Monthly average sea-surface temperatures and ice-pack limits on a 1 degrees global grid. _Mon. Wea. Rev_., **104**, 143-148.

Boer, G.J., N.A. McFarlane, R. Laprise, J.D. Henderson, and J.-P Blanchet, 1984a: The Canadian Climate Centre spectral atmospheric general circulation model. _Atmos.-Ocean_, **22**, 397-429.

Deardorff, J.W., 1978: Efficient prediction of ground surface temperature and moisture, with inclusion of a layer of vegetation. _J. Geophys. Res._, **83**, 1889-1903.

Flato et al. 1998: : The CCCma coupled GCM and its control climate. In preparation.

Levitus, S., 1982: Climatological atlas of the world's oceans. NOAA Professional Paper 13, 173 pp.

McFarlane, N.A., G.J. Boer, J.-P. Blanchet, and M. Lazare, 1992: The Canadian Climate Centre second-generation general circulation model and its equilibrium climate. _J. Climate_, **5**, 1013-1044.

Semtner, A.J., 1976: A model for the thermodynamic growth of sea ice in numerical investigations of climate.  J. Phys. Oceanogr., 6, 379-389. 
 

[Top](#model-cccma-elaborations)

CMIP Documentation Directory

---

Last update 15 May, 2002.  

LLNL Disclaimers

UCRL-MI-126431
