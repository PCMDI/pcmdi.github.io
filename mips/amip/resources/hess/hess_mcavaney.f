      subroutine hess_mcavaney
     & (npoints, ua, va, ta, hus, husg, hfss, hfls, ps,
     &  z0, rho0, thetag, theta, ustar, scratch,
     &  tas, huss, uas, vas)

c $Id: hess_mcavaney.f,v 2.1 1998/04/07 22:41:34 mwehner Exp $

      implicit none

************************************************************************
* This routine calculates the surface air temperature, humidity
* and wind speed components per the AMIP2 specifications.
* Michael Wehner 03/36/98
* Program for Climate Model Diagnosis and Intercomparison
* references:
* http://www-pcmdi.llnl.gov/amip/REFERENCES/Hess.pdf
* http://www-pcmdi.llnl.gov/amip/REFERENCES/Hessa.pdf
************************************************************************
* Input variables:
* npoints = total number of grid points.
* ua      = Eastward  wind speed at the lowest model level (meters/second)
* va      = Northward wind speed at the lowest model level (meters/second)
* ta      = temperature at the lowest model level (Kelvins)
* hus     = specific humidity at the lowest model level (kg h2o per kg air)
* husg    = specific humidity at the surface (kg h2o per kg air)
* hfss    = surface sensible heat flux (watts/meter**2)
* hfls    = surface  latent  heat flux (watts/meter**2)
* ps      = surface pressure (Pa)
* z0      = surface roughness (meters)
* ustar   = friction velocity (meters/second)
* rho0    = surface air density (kilogram/meter**3)
* theta   = potential temperature at the lowest model level (Kelvins)
* thetag  = potential temperature at the surface (Kelvins)
* scratch = working space (13*npoints long)
* Output Variables:
* tas     = surface air temperature (Kelvins)
* huss    = surface specific humidity (kg h2o per kg air)
* uas     = surface eastward  wind speed (meters/second)
* vas     = surface northward wind speed (meters/second)
************************************************************************

      integer npoints, n
      real*8 ua(npoints), va(npoints), ta(npoints), hus(npoints)
      real*8 husg(npoints), hfss(npoints), hfls(npoints), ps(npoints)
      real*8 z0(npoints), ustar(npoints), rho0(npoints), theta(npoints)
      real*8 thetag(npoints), scratch(npoints,13)

      real*8 tas(npoints), huss(npoints), uas(npoints), vas(npoints)

************************************************************************
c     calculate the wind speed at the lowest model level
      do n = 1, npoints
        scratch(n,1) = sqrt(ua(n)**2 + va(n)**2)
      enddo
************************************************************************

c Call Hess-Mccavaney routine for the screened quantities
      call screenl
     & (ustar, z0, ta, hus, scratch(1,1), hfss, hfls, rho0, ps, theta, 
     & husg, thetag, scratch(1,2), scratch(1,3), scratch(1,4),
     & scratch(1,5),  scratch(1,6), scratch(1,7), scratch(1,8), 
     & scratch(1,9), scratch(1,10), scratch(1,11),  scratch(1,12), 
     & npoints, tas, huss, scratch(1,13))

************************************************************************
c Calculate the surface wind components from the anemometer
c wind speed. Ignore the Ekman spiral...
      do n = 1, npoints
        uas(n) = scratch(n,13) * ua(n)/scratch(n,1)   
        vas(n) = scratch(n,13) * va(n)/scratch(n,1)   
      enddo
************************************************************************
  
      return
      end

