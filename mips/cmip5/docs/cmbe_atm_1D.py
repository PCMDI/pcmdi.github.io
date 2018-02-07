# import cdat modules
import cdms2, vcs, cdutil, genutil, MV2
# import other modules
import  os, sys,numpy,string

# esg-data version
version = 'v1p1'

# set up the site/facility and files to read
cmbe_stream = 'cmbe_atm'
cmbe_version = 'v1.0'
site = 'nsa'
facility = 'c1'
facility_upcase = facility.upper()
site_fac = site+'.'+facility
cmbe_dir = '/home/mccoy20/ARM/BestEstimates/netcdf/'
out_path = './obs4cmip5/'+site_fac
cmbe_file = cmbe_dir+cmbe_stream+'/'+cmbe_version+'/'+site_fac+'/'+cmbe_stream+'.'+site_fac+'.xml'
#cmbe_file = '/home/mccoy20/ARM/BestEstimates/netcdf/cmbe_atm/v1.0/nsa.c1/cmbe_atm.nsa.c1.xml'
cmbe_orig_file_name = site+cmbe_stream+'_'+cmbe_version+'_'+facility_upcase+'.c1.*.cdf'

# create dictionary with the site locations
site_location = {
   'sgp.c1':'Oklahoma',
   'nsa.c1':'Barrow',
   'twp.c1':'Nauru',
   'twp.c2':'Manus',
   'twp.c3':'Darwin',
   }

# get the file id from the call to cdat open file through the cdms2 module
fid = cdms2.open(cmbe_file) 

#------------------
# read some variable to get time
p_sfc=fid( 'p_sfc', squeeze = 0, order = '0' )
cdutil.times.setTimeBoundsDaily(p_sfc,24)
# set time and time_bounds
time = p_sfc.getTime()
time_bounds = time.getBounds()  
time_units = time.units

# to check some statistics on the data
vv = fid['p_sfc']
'var name = ',vv.id
'average = ',MV2.average(vv,axis=0).data
'min = ',MV2.minimum(vv)
'max = ',MV2.maximum(vv)


#------------------
# get longitude and latitude 
lon = fid['lon']   # in memory variable - force it to be a cdms variable
lat = fid['lat'] 
# need to change manually degrees_west to degrees_east, which is required by cmor table
lon_units = lon.units 
if lon_units == 'degrees_west':    
  lon = -lon()  # change it to be a scalar value by applying () 
else: 
  lon = lon()
# need to change manually degrees_south to degrees_north which is required by cmor table
lat_units = lat.units 
if lat_units == 'degrees_south':    
  lat = -lat()
else:
  lat = lat()
  
# import cmor module
import cmor

contact = 'cmbe: Renata McCoy, renata@llnl.gov, ARM Archive user services: armarchive@ornl.gov'
model = 'cmbe' #+ site_location[site_fac]
# setup cmor before doing anything else with cmor
error_flag = cmor.setup( netcdf_file_action=cmor.CMOR_REPLACE, create_subdirectories=0)
# define dataset for all variables from one site
cmor.dataset(    experiment_id='obs',
	         institution='ARM' ,
                 institute_id="ARM",
		 source='CMBE (Climate Modeling Best Estimate), ARM (Atmospheric Radiation Measurement Program)', 
	         calendar='proleptic_gregorian',
                 model_id=model, 
		 contact=contact,
	         outpath=out_path
	          )
# add those additional global attributes to the output file

# --- this did not work------, neede to put contact info in cmor.dataset setup
#contact = "cmbe: Renata McCoy, renata@llnl.gov, ARM Archive user services: armarchive@ornl.gov"
#cmor.set_cur_dataset_attribute('contact',contact)

# copy some global attributes from the original cmbe files
# read some global attributes and put into the cmor created netcdf file
title = fid.title
description = fid.description
project = fid.project
location = fid.location
reference = fid.references
# define them in cmor for this dataset
cmor.set_cur_dataset_attribute('source_title',title)
cmor.set_cur_dataset_attribute('source_version',cmbe_stream+'-'+cmbe_version)
cmor.set_cur_dataset_attribute('source_description',description)
cmor.set_cur_dataset_attribute('source_project',project)
cmor.set_cur_dataset_attribute('source_location',site_location[site_fac]+' ARM, '+location)

cmor.set_cur_dataset_attribute('source_datastream', cmbe_orig_file_name)
cmor.set_cur_dataset_attribute('source_url','http://www.arm.gov/data/cmbe/')
str_ref = 'S. Xie, R.B. McCoy, S.A.Klein, et al., 2010: CLOUDS AND MORE: ARM Climate Modeling Best Estimate Data. Bull. Amer. Meteor. Soc., 91, 13-20. DOI: 10.1175/2009BAMS2891.1. '

cmor.set_cur_dataset_attribute('source_reference',str_ref)

cmor.set_cur_dataset_attribute('agency','DOE')
cmor.set_cur_dataset_attribute('obs_project','ARM')
cmor.set_cur_dataset_attribute('obs_type','in-situ_stations')
cmor.set_cur_dataset_attribute('instrument','cmbe')
cmor.set_cur_dataset_attribute('location',site_location[site_fac]) 
cmor.set_cur_dataset_attribute('version',version)

# read cmor table for the observational station data
table='obsSites'
cmor.load_table('./' + table ) 

# define the 'site' dimension, it needs also a grid definition
nsites = 1
isite = cmor.axis(table_entry="site",coord_vals=numpy.arange(nsites),units="1") 
igrid = cmor.grid(axis_ids=(isite,),latitude=numpy.array([lat,]),longitude=numpy.array([lon,]))
#cmor.grid.__doc__

# setup time dimension
itim = cmor.axis(  
    table_entry='time1',           
    units=time_units,
    coord_vals=time,
    cell_bounds=time_bounds) 
    
#var_time_bnds_id = cmor.variable('time_bnds',units_time,[itim,igrid])
#cmor.set_variable_attribute(var_time_bnds_id,'long_name','Time range for the hourly averages')
 
#fid.listvariables()
vars_in = ['p_sfc', 'u_sfc','v_sfc','T_sfc','wspd_sfc','rh_sfc' ]	
vars_out = ['ps',   'uas',  'vas',  'tas',  'sfcWind',  'hurs' ]	

indexes = numpy.arange(5)  #should be 6 -- something is wrong with 'rh_sfc'
for i in indexes:
  # get variable
  var=fid( vars_in[i], squeeze = 0, order = '0' ) 
  varid = cmor.variable(table_entry = vars_out[i], 
                        units = var.units, 
			axis_ids=[itim,igrid], 
			missing_value = -9999.0,
			original_name = vars_in[i]) 
  print i, vars_out[i], '  ',var.id ,var.units
  cmor.write(varid, var)  
  
 
cmor.close(varid) 
	

print 'Success'
cmor.close()
