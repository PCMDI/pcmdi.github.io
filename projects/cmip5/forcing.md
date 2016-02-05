---
layout: CMIP5
title: Forcing Data
---

CMIP5 - Modeling Info - Forcing Data

The following forcing data is available:

    1. Recommended CMIP5 solar forcing data.
    2. Greenhouse gas concentration data 08 Dec 2009.
    3. CO2 emissions data. Nov 2010.
    4. Emissions data for other chemical species. 14 Jan 2010.
    5. Land-use data. 31 Aug 2009.
    6. The AC&C/SPARC ozone database. New extended data 18 Nov 2010.
    7. The AMIP sea surface temperature and sea ice datasets.
    8. Specifications for CFMIP-inspired experiments.



1. Recommended CMIP5 solar forcing data.

See SOLARIS website

http://sparcsolaris.gfz-potsdam.de/cmip5.php

for information and to download the solar irradiance.


2. Greenhouse gas concentration data. 08 Dec 2009

 

The pre-industrial, historical and future (RCP) concentrations of anthropogenically affected greenhouse gases are available as global mean time series from the website at IIASA http://tntcat.iiasa.ac.at/RcpDb/

 

Click on the "download" tab at the top of the page. You will have to register and then you will see on the lower half of the page in bold red font: "CMIP5 recommended data " and under that "RCP concentrations" (which also includes the historical data). This is the data that should be used to drive your runs.

 

The recommended aerosol concentration data, which might be required by some models, is also available at the IIASA website.



3. CO2 emissions data. Nov 2010

 

CO2 emissions are available for the historical period and for each of the RCPs.

Historical CO2 emissions:

Updated Nov 2010

Two gridded CO2 emissions datasets for forcing historical runs of CMIP5 Earth Systems Models (ESMs) are provided (in netCDF format):

    1) fossil fuel CO2 emissions (including emissions from cement and gas flaring), and
    2) CO2 emissions associated with historical land use changes.

The fossil fuel dataset of monthly gridded emissions (units gC/m**2/s) can be downloaded from the IPSL site at http://dods.ipsl.jussieu.fr/cpipsl/ANDRES/ under file name CMIP5_gridcar_CO2_emissions_fossil_fuel_Andres_1751-2007_monthly_SC_mask11.nc
An ascii file named CMIP5_gridcar_CO2_emissions_fossil_fuel_Andres_1751-2007_monthly_SC.txt that contains the globally integrated emissions for every month is also provided on this IPSL site. Note that the units are PgC/month, which differs from the gridded dataset.

Annual-mean gridded CO2 emissions (units gC/m**2/s) from historical land use change can be found at the MPI site: http://www.mpimet.mpg.de/en/wissenschaft/land-im-erdsystem/wechselwirkung-klima-biogeosphaere/landcover-change-emission-data.html under file name carbon_emissions_landuse_20person.nc
An ascii file containing the globally integrated land use CO2 emissions for every year (in units of Pg/year) is 'carbon_emissions_landuse_20person_global.txt' .


RCP CO2 emissions:

For Earth System Models, CMIP5 calls for an RCP 8.5 simulation with prescribed anthropogenic CO2 emissions (rather then concentrations). The emissions can be obtained from the IIASA website. On that site click on "compare" tab at the top of the page. Then select "Regions=world", "Scenarios=RCP8.5", "Variables=CO2 emissions - Total". You may either download an Excel spreadsheet at the bottom of the page or copy the global mean emissions appearing in the table below the graph.

The future CO2 emisisons are not available on a grid.


4. Emissions data for other chemical species. 14 Jan 2010

 

The pre-industrial, historical and future (RCP) emissions of other greenhouse gases and of anthropogenic aerosols are available at two sites in slightly different formats and with one site resolving the annual cycle. The basic data are supposed to be the same. Here are the site URLs:

 

IIASA: http://tntcat.iiasa.ac.at/RcpDb/

Juelich: ftp://ftp-ipcc.fz-juelich.de/pub/emissions/gridded_netcdf/tarfiles/

[ On some browsers clicking on this link may not work. If it doesn't, try to reach the site from a terminal window:    ftp ftp-ipcc.fz-juelich.de     (user: anonymous,   passwd: {your_email} )]

 

There are no emissions data currently available for natural aerosols (e.g., volcanic, sea salts, dust).



5. Land-use data. 31 Aug 2009.


The Land-use Harmonization team has prepared a harmonized set of land-use scenarios that smoothly connects historical reconstructions of land-use, based on HYDE data and national wood harvest statistics, with future projections of land use based on the Integrated Assessment Model (IAM) implementations of the RCPs. The harmonization method assures better continuity over the transition between the end of historical reconstruction and IAM initial conditions, and it preserves the future changes depicted by the IAMs at the grid level. Fractional land-use patterns (e.g. crop, pasture, urban, primary, secondary) and underlying land-use transitions (e.g. agricultural expansion/contraction, wood harvest, and shifting cultivation) are provided annually for the time period 1500-2100 at 0.5° x 0.5° resolution. The reconstruction starting in year 1500 is recommended over one that may also be available beginning in year 1700.

The land use data is available at: http://tntcat.iiasa.ac.at/RcpDb/

If you are unable to access the above site, the same datasets are available at http://luh.unh.edu, where you will also find additional information describing how the datasets were derived. On this alternative site, the following files are the ones you'll need for CMIP5:
1) If your model includes transitions from/to "urban land" as a category, you should download:

LUHa_u2.v1
LUHa_u2.v1_image.v1.1 (for RCP2.6)
LUH_u2.v1_minicam.v1 (for RCP4.5)
LUHa_u2.v1_aim.v1.1 (for RCP6.0)
LUH_u2.v1_message.v1 (for RCP8.5)
2) If your model omits transitions from/to "urban land" as a category, you should download:

LUHa.v1
LUHa.v1_image.v1.1 (for RCP2.6)
LUH.v1_minicam.v1 (for RCP4.5)
LUHa.v1_aim.v1.1 (for RCP6.0)
LUH.v1_message.v1 (for RCP8.5)
Note that the data files listed above are based on reconstructions starting in 1500, and the alternative reconstructions starting in 1700 (i.e., files with "t1" in the filenames) should not be used for CMIP5 boundary conditions.


6. The AC&C/SPARC ozone database. (Extended data 18 Nov 2010)

Nov 2010: The additioinal ozone RCP 6.0 scenario is now available!

The AC&C/SPARC ozone database covers the period 1850 to 2100 and can be used as forcing in climate models that do not include interactive chemistry. The historical part of the AC&C/SPARC ozone database spans the period 1850 to 2009 and consists of separate stratospheric and tropospheric data sources: (1) A multiple linear regression analysis of SAGE I+II satellite observations and polar ozonesonde measurements is used for the stratospheric dataset during the well-observed period from 1979 to 2005. The regression includes terms representing equivalent effective stratospheric chlorine (EESC) and the 11-year solar cycle variability. The EESC regression coefficients are used to extrapolate that data back in time, and form a stratospheric ozone time series backward to cover the entire historical time period 1850-2006. (2) Tropospheric data are derived from the chemistry-climate models Community Atmosphere Model (CAM) version 3.5 and the NASA-GISS PUCCINI model. Both models simulate tropospheric and stratospheric chemistry with feedback to the radiation and were driven by the recently available historical (1850-2000) emissions succinctly described in Lamarque et al. (ACP, 2010).

 

The future part of the AC&C/SPARC ozone database covers the period 2010 to 2100 and seamlessly extends the historical database. The future ozone timeseries also combines separate stratospheric and tropospheric data sources: (1) The stratospheric ozone projections are taken from the future reference simulations (REF-B2) of the 13 CCMs that performed a future simulation until 2100 under the SRES A1b GHG scenario and the A1 adjusted halogen scenario in CCMVal-2 (Chapter 9 of the SPARC CCMVal Report available at http://www.atmosp.physics.utoronto.ca/SPARC). In the stratosphere, the multi-model mean of the REF-B2 simulations is used in all RCP scenarios. (2) The future tropospheric ozone time series continues the historical CAM3.5 simulation until 2100 using the four different Representative Concentration Pathways (RCPs). The stratospheric and tropospheric data are combined by simply merging the two data sets across the climatological tropopause, to produce a smooth final data set.

Citation: Cionni, I., V. Eyring, J. F. Lamarque, W. J. Randel, D. S. Stevenson, F. Wu, G. E. Bodeker, T. G. Shepherd, D. T. Shindell, and D. W. Waugh, Ozone database in support of CMIP5 simulations: results and corresponding radiative forcing, Atmos. Chem. Phys. Discuss., 11, 10875-10933, doi:10.5194/acpd-11-10875-2011, 2011.

Interactive Public Discussion on the paper until 02 Jun 2011: http://www.atmos-chem-phys-discuss.net/11/10875/2011/

 

Contact for questions: Irene Cionni, Veronika Eyring, Jean-Francois Lamarque, Bill Randel

 

A short documentation is included in the header of the files and some example plots are available on the CCMVal website (http://www.pa.op.dlr.de/CCMVal/).

 

The files are in CF compliant netCDF format and are split up into 16 files for the historical part and 9 files for each RCP scenario; each file includes one decade and has a size of 30 Mbytes.

List of filenames
    Click to open the panel and see file names.

Downloading data

The ozone data are available on the old (CMIP3) ESG ftp server. Please do note, that this is an old CMIP3 ftp site and you need to use the CMIP3 ESG account. To access them:

(1) Register at the CMIP3 ESG site:
https://esg.llnl.gov:8443/security/accountRequestData.do

Existing ESG users can use their current username / password.

(2) ftp to the ESG ftp server:

% ftp ftp-esg.ucllnl.org

(3) The ozone data files are in cmip5/ozone:

ftp> cd cmip5/ozone



7. The AMIP sea surface temperature and sea ice datasets.

The observed monthly mean sea surface temperature (SST) and sea ice concentration data cannot be directly used to force AMIP simulations. Rather, they must be specially processed to provide a continuous time series (say of daily values) that when averaged over the month yield the observed monthly means. Linear interpolation in time from the monthly mean values will not reproduce the monthly means.

One method used to produce acceptable boundary conditions for AMIP runs is described at http://www-pcmdi.llnl.gov/projects/amip/AMIP2EXPDSN/BCS/. That method relies on linearly interpolating in time specially generated mid-month values (and then "clipping" them if necessary). The mid-month boundary condition data sets are available at http://www-pcmdi.llnl.gov/projects/amip/AMIP2EXPDSN/BCS/amipbc_dwnld.php . If you use this recommended procedure, please download the "Mid-Month 'Boundary Conditions'," *not* the "Monthly-Mean Observed Fields" (which are also located at this site).

If a different method is used, it should be based on the "Monthly-Mean Observed Fields", but whatever method is used, the conditions seen by the model, averaged over a month, should be the same as the observed monthly mean.

 


8. Specifications for CFMIP-inspired experiments.

The Cloud Feedback Model Intercomparison Project (CFMIP) experiments are described in Section IV of the CFMIP-2 experimental design and appear in Table 6 of the CMIP5 experimental design.

 

A patterned SST forcing dataset is required for Expt. 6.6. (Thanks to Brian Soden for producing this).

 

For information on setting up the CFMIP aquaplanet experiments, please refer to Brian Medeiros's CFMIP-2 Aquaplanet information.

 

The finalised list and plot of locations for high frequency CFMIP outputs is also now available.

 

CFMIP-2: CMIP5 web page.
COSP Version 1.1 (CFMIP observational simulator package).

