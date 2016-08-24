<?

$title = "PCMDI > WCRP CMIP3 Model Output > Standard Output Updates";
$header_image = "http://www-pcmdi.llnl.gov/images/banner_ipcc.jpg";
$welcome_image = "http://www-pcmdi.llnl.gov/images/headers/standard_output_updates.jpg";

require ("http://www-pcmdi.llnl.gov/header.inc");

?>
<p align="center"><b>History of Changes Made to IPCC Standard Output </b></p>
<p align="left"><b>15 September 2004: </b></p>
<ol>
  <li>
    <p align="left">Noted that 3-hourly precipitation data should be averaged over the intervals 0-3Z, 3-6Z, ... 21-24Z, whereas the "snapshots" should be sampled at 0, 3, 6, ... 21Z. </p>
  </li>
  <li>
    <p align="left">Noted that stfmmc should exclude 'bolus velocity' contribution from the Gent-McWilliams parameterization. </p>
  </li>
  <li>Clarified that all time intervals in the last table of experiments should be interpreted as extending from the beginning of the first year indicated through the end of the last year indicated.&nbsp; For example, years 1961-2000 means 0Z 1-1-2000 through 0Z 1-1-2001. </li>
  <li>Added a row to the coordinate dimension table for 'time1' which is needed in the 3-hourly table (A3) to define the time axis for "snapshot" (rather than time-mean) data (i.e., all but the precipitation field in this table). </li>
</ol>
<p align="left"><b>3 September 2004: </b></p>
<p align="left">Revised web links to be consistent with new PCMDI web site. </p>
<p align="left"><b>25 August 2004: </b></p>
<ol>
  <li>
    <p align="left">Clarified in the last table that yearly data (i.e., extreme indices) should be submitted for the same years as the monthly data. </p>
  </li>
</ol>
<p align="left"><b>2 August 2004: </b></p>
<ol>
  <li>
    <p align="left">Changed period for which 3-hourly data should be reported in the "pre-industrial control experiment" from "last year" to "last year of reported daily data (i.e., corresponding to year 2000 of the 20C3M expt.)". </p>
  </li>
  <li>
    <p align="left">Modified description of a few fields to make them clearer. </p>
  </li>
</ol>
<p align="left"><b>20 July 2004: </b></p>
<ol>
  <li>
    <p align="left">Changed years requested for the committed climate change experiment from tables A2a,b to be consistent with other experiments (i.e., 2046-2065, not 2031-2050). </p>
  </li>
</ol>
<p align="left"><b>19 July 2004: </b></p>
<ol>
  <li>
    <p align="left">Changed one of the experiment names in the last table of the document: 'climate of the 20 th Century (20C3M)' was changed to 'climate of the 20 th Century experiment (20C3M)'. </p>
  </li>
</ol>
<p align="left"><b>14 July 2004: </b></p>
<ol>
  <li>
    <p align="left">Added table of experiments and years of requested data. </p>
  </li>
  <li>
    <p align="left">Moved dimension table to near the end of the document. </p>
  </li>
  <li>
    <p align="left">Noted that "flux-correction" fields need to be reported only for a single year, assuming it applies to all experiments. </p>
  </li>
  <li>
    <p align="left">Noted that disk space constraints will likely limit quick access to monthly-mean 3-d ocean output to a single member of each ensemble. </p>
  </li>
  <li>
    <p align="left">Noted that daily data should only be reported for a single member of each ensemble, except for the surface air temperature (mean, max. and min.) and precipitation, which should be reported for all members. </p>
  </li>
</ol>
<p><b>5 July 2004: </b></p>
<ol>
  <li>The requested fields listed under&nbsp; "Highest priority output fields" were not changed, but some of the information given there was modified. </li>
  <li>The "PCMDI names" are now identified as "output variable names", because these are the variable names that should appear in the netCDF files.&nbsp; These also serve as unique reference names for CMOR.&nbsp; Several names were changed in this version to make them consistent with the existing CMIP data base: ssh ==&gt; zos, sst ==&gt; tos, siu==&gt;usi, siv==&gt;vsi, prme==&gt;wfo, sftbaro==&gt;stfbarot, topot==&gt;thetao, and rhopot==&gt;rhopoto </li>
  <li>The following units were changed:&nbsp; for ocean meridional overturning stream function, kg 3 s -1 &nbsp; ==&gt; m 3 &nbsp; s -1 .&nbsp; for ocean barotropic stream function, kg 3 s -1 &nbsp; ==&gt; m 3 &nbsp; s -1 .&nbsp; For several variables, percent ==&gt; % (nb. CMOR will accept "percent" as an alias for "%", but the netCDF file will show "%"). </li>
  <li>A few corrections were made to the "standard_names" </li>
  <li>The "source" column in the tables was replaced by a "notes" column providing explanatory information.&nbsp; These notes should be studied carefully to ensure conformance with IPCC requirements. </li>
  <li>Dimensionless units are now expressed simply as a numeric factor (e.g.,&nbsp; '1' or '1e-3') or as '%', but not as a dimensionless ratio (e.g.,&nbsp; 'kg/kg'). </li>
  <li>Tables were constructed and detailed information was provided (for the first time) for the "Lower priority fields" (previously identified as "optional").. </li>
  <li>The following lower priority fields were eliminated: sea surface salinity (already collected as part of the 3-d salinity field), the vertical and horizontal components of temperature and salinity fluxes as a function of longitude, latitude, model layer, and month (this was the only field requested on model levels and is difficult to treat uniformly; interpolating to depth levels would make it impossible to treat precisely and might not be any better an approximation than multiplying velocity times salinity or temperature, which is possible from fields collected as high priority), temperature on all sea ice model levels (too difficult to uniformly treat sea ice models with different vertical coordinates, and although this field would be useful for energy budget studies, other terms in the budget are not being collected), surface snow thickness (already collected as high priority field),&nbsp; "tendency of sea ice thickness due to thermodynamics" (of little value without all the other terms needed to balance the sea ice equation), and certain land surface fields, including total heat storage, albedo, soil types, vegetation fraction etc (difficult to define uniformly across models). </li>
  <li>A table with dimension information was added. </li>
</ol>
