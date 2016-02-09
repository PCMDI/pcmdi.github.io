---
layout: CMIP5
title: Getting Started
---
CMIP5 - Modeling Info - Getting Started

If you are looking for model output go to "Data Access -> Getting Started" page.


A Guide for Modeling Groups Participating in CMIP5

Download it in pdf format: getting_started.pdf]

Participation in CMIP5 is open to everyone. The following is meant to be a step by step guide to CMIP5 procedures and requirements. The steps are grouped into three stages: “Perform Experiments”, “Prepare Model Output”, and “Make Output Available”. It is strongly advised that modeling groups immediately begin to put in place the capabilities needed for stages 2 and 3. Do not wait until Stage 1 has been completed. In particular there will be considerable effort required to complete stage 2, which will be the key to a successful CMIP5.

Stage 1: Perform Experiments

    Read the experiment design document and decide which suite or suites of experiments you want to perform. There are three types of experiments planned:
        a.  Decadal Hindcasts and Predictions simulations
        b. "long-term" simulations,
        c. "atmosphere-only" (prescribed SST) simulations for especially computationally-demanding models.
    In each suite, the simulations are designated to be either “core”, “tier 1”, or “tier 2”. For the suite(s) you choose, you are expected to perform at least all of the “core” experiments. The additional tier 1 and tier 2 experiments are also of high scientific value, so it is hoped that as many of these as is practical will also be performed.
    Write PCMDI expressing your intent to participate in CMIP5, and provide contact information (unless you have already done this).
    Download and fill out a spreadsheet form indicating the experiments you plan to perform (entering information in the yellow-shaded cells) and return to PCMDI (unless you have already done this). These plans do not indicate a commitment, only an intent on your part. The spreadsheet should be updated if plans change. (PCMDI will use this input to estimate the size of the data archive, and this information will be shared with you.)
    Propose to PCMDI official “institute” and “model” names that will be assigned to your model, as called for in the spreadsheet .
    Study the “requested variables” list and prepare to provide as much of this output as possible.
    Perform experiments. In some cases this requires downloading forcing datasets. See “Setting up CMIP5 Experiment, Getting Started” for additional, detailed guidance to setting up the experiment.
    For each simulation, complete a questionnaire documenting your model and simulation conditions. This is a requirement that the WGCM feels is essential for increased transparency and scientific rigor. The questionnaire, which must be completed before your data will be made available for analysis, can be found at the METAFOR website.


Stage 2: Prepare Model Output

    It is recommended that output files be produced using the CMOR2 software. This will assure compliance with most of the “CMIP5 Model Output Format and Metadata Requirements”. If CMOR2 is not used, the CMOR-checker should be included as part of the job stream to catch any obvious inconsistencies with the CMIP5 output requirements.
    Send sample output files to PCMDI for QC checks. A list of files that should be sent to PCMDI is under preparation.
    Process all model output through CMOR2 (or its equivalent).
    Prepare a gridspec file for your model’s grids. Gridspec is a proposed standard for the description of grids used in Earth System models.
    If your ocean or atmosphere grid is not a Cartesian longitude/latitude grid, and if gridspec is unable to use the information you provide in the gridspec file to create the information needed by the SCRIP software to regrid data to a Cartesian longitude/latitude grid, then generate a SCRIP input file to map your grid to a Cartesian longitude/latitude grid of your choice. (It is recommended that you choose a resolution that is appropriate for your model.) SCRIP is a software package which computes addresses and weights for remapping and interpolating fields between grids in spherical coordinates.


Stage 3: Make Output Available

    Indicate to PCMDI what “terms of use” are agreeable to you. The recommended option is that you agree to make the model output freely available for any use whatsoever by anyone. If this is unacceptable, you may elect to restrict release of your data for “non-commercial research and educational purposes”. All users will be required to register before accessing the data. They will be required to agree to one of two above choices. Users who do not agree to abide by the more restricted terms of use, will only have access to the “freely available” model output. The "terms of use" document can be found here.
    Become familiar with the ESG federated data archive and delivery system described in a document titled “How will CMIP5 Model Output be Archived and Served?”
    Study the “CMIP5 Data Reference Syntax and Controlled Vocabulary” document which specifies directory structures, filenames, and information that will be stored as global attributes in the model output files (among other related stuff).
    Establish an ESG data node, place model output there, and publish it to an ESG gateway, as described in two documents (doc1, doc2), or transfer data to PCMDI (or the CMIP5 Data Center designated by PCMDI to serve your model output), as described here (already referenced in step 2).
    If you establish a data node at your center, you will also transfer a (subset) of your model output to a CMIP5 Data Center for backup and replication as described here (already referenced in step 2).
    As errors in model output are discovered, the modeling groups will be expected to withdraw flawed data and hopefully replace it with corrected data, as described here (already referenced in step 2).
    Additional quality assurance checks will be performed at the CMIP5 Data Centers, which will be described in a document under preparation.


[Document prepared by K.E. Taylor; 15 Sep 2010. Download it in pdf format: getting_started.pdf]
