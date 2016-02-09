---
layout: CMIP5
title: Model Output
---
CMIP5 - Modeling Info - Producing Model Output


CMIP5 requests an extensive list of variables described as "standard output" (see link 1 below), which resulted from extensive discussions involving experts from various climate sub-disciplines and interest groups, including those in the "impacts, adaptation, and vulnerabilities" community. In order for the output to be easily accessible and useful to researchers and before it can be accepted into the CMIP5 archive, the output must be written conforming with the requirements specified in two documents (see links 2 and link 3 below). The Climate Model Output Rewriter (CMOR; see link 4 below) can be used to satisfy the specifications for CMIP5 model output. Finally, the important new "satellite simulator" diagnostics requested by CMIP5 can be produced with the CFMIP Observational Simulator Package (COSP; see link 5 below).

    1. Requested Variables (updated 15 Aug 2013).
    2. CMIP5 Data Reference Syntax (DRS) and Controlled Vocabulary (updated 09 Mar 2011).
    3. CMIP5 Model Output Format and Metadata Requirements (updated 07 Jan 2011).
    4. CMOR - Climate Model Output Rewriter Software (CMOR 2.*, Jan 2011).
    5. The CFMIP Observational Simulator Package (COSP) output.



1. Requested Variables.

 

 

The standard output document: standard_output (current version: 15 Aug 2013 ) is available in 2 formats:

standard_output.pdf

standard_output.xls


The list of variables appearing in the above document substantially augments the list of model output collected as part of CMIP3. The current list resulted from a long deliberation involving experts from various climate sub-disciplines and interest groups, including those in the "impacts, adaptation, and vulnerabilities" community. For example, the ocean variables were adopted almost entirely from a document prepared by the Working Group on Ocean Model Development (see Griffies et al., 2009: "Sampling Physical Ocean Fields in WCRP CMIP5 Simulations")

Note also that some special "bias corrected" fields are requested for decadal prediction experiments as explained in http://eprints.soton.ac.uk/171975/1/150_Bias_Correction.pdf .


2. CMIP5 Data Reference Syntax (DRS) and Controlled Vocabulary.

 

Current version of Data Reference Syntax document ( 13 June 2012 ) cmip5_data_reference_syntax.pdf (version v1.3).



The data output should follow the standard NetCDF Climate and Forecast (CF) Metadata convention and specifically to adhere to the standard variable names, units, dimensions, axis, required 'coordinates' attribute, bounds and stored direction for overall intercomparability, see document in 'CMIP5 Model Output Format and Metadata Requirements' section below (section 3. below) .

The common naming system should also be used in files, directories, metadata and URLs to facilitate standard identification of datasets. Refer to "CMIP5 Data Reference Syntax (DRS) and Controlled Vocabulary" document for the specifications.

The Climate Model Output Rewriter (CMOR) software can be used to produce such a CF-compliant output, or a model center can choose to write their own data output software.


3. CMIP5 Model Output Format and Metadata Requirements.

 

Model output requirements for structure, format and metadata ( new! 22 May 2014 ) CMIP5_output_metadata_requirements.pdf .

 

The document specifies the requirements for data contributed to the archive: the general structure and format of the data, the directory structure and names of files and directories, the required and recommended "global attributes", the metadata required for describing the coordinates, and the constraints imposed on the variables themselves.

 

4. CMOR - Climate Model Output Rewriter Software.

 

New! Jan 2011 Newest version of CMOR 2.5 is now available, follow the links below to get it.

The "Climate Model Output Rewriter" (CMOR, pronounced "Seymour"), written in C with FORTRAN 90/python API functions, can be used to produce CF-compliant netCDF files that fulfill the requirements of many of the climate community's standard model experiments. These experiments are collectively referred to as MIP's and include, for example, AMIP, CMIP, CFMIP, PMIP, APE, and IPCC scenario runs. The output resulting from CMOR is "self-describing" and facilitates analysis of results across models.

Much of the metadata written to the output files is defined in MIP-specific tables, typically made available from each MIP's web site. CMOR relies on these tables to provide much of the metadata that is needed in the MIP context, thereby reducing the programming effort required of the individual MIP contributors.

The new CMOR v2 has interface to the C/FORTRAN and Python programming languages. It can be linked either to NetCDF3 or NetCDF4 and it can handle non-cartesian grids and station data.

    Download CMOR 2
    CMOR 2 documentation




5. The CFMIP Observational Simulator Package (COSP) output.

As part of the CMIP5 standard output, modeling groups are strongly encouraged to provide cloud diagnostic data produced by the CFMIP Observational Simulator Package (COSP). COSP emulates in a model the remotely-sensed observational data from CloudSat, CALIPSO, and ISCCP, thereby enabling a fuller evaluation of model-simulated clouds. The latest version of COSP is available at: http://cfmip.metoffice.com/COSP.html
