---
layout: CMIP5
title: Getting Started
---
CMIP5 Data - Getting Started

Getting Started Tutorial for Users Seeking CMIP5 Model Output

NOTES:

    Please use Firefox 7+, Safari 5+ or Chrome 16+ (see Supported Browsers) to access the ESGF P2P
    The old ESGF gateways ( PCMDI: http://pcmdi3.llnl.gov/esgcet , BADC: http://cmip-gw.badc.rl.ac.uk , DKRZ: http://ipcc-ar5.dkrz.de ) are now deprecated. The pcmdi3.llnl.gov gateway was shut down permanently on 11/20/2012. Please use new P2P (Peer-to-Peer, distributed federation of nodes) ESGF portals listed below in 2a. Refer to 2b for the registration and your openid on the new ESGF P2P system.


1. Access to data.
Anyone can browse the CMIP5 model output archive catalogue, but in order to download data you will be required to register (i.e. open an account) (see step 2 below). Your account will be valid for browsing all data served by the Earth System Grid Federation (ESGF) — CMIP5 plus much, much more. Because different restrictions are placed on different datasets served by ESGF, you must also enroll in one of the two “CMIP5 groups” and agree to the terms of use established for CMIP5 (see step 3 below).

2. Obtaining an ESGF account.

    All CMIP5 Model output can be accessed via any one of several websites serving as portals to the ESGF archive. Note that these portals supersede the old gateways to CMIP3 data and also the ESG “gateways” originally used to access CMIP5 output that were deprecated in September 2012 (e.g., pcmdi3.llnl.gov). Although nearly a dozen ESGF portals currently exist, the following sites provide the most reliable and complete access to CMIP5 output (as of November 2012):
        PCMDI: http://pcmdi9.llnl.gov/
        BADC: http://esgf-index1.ceda.ac.uk
        DKRZ: http://esgf-data.dkrz.de
        NCI: http://esg2.nci.org.au
    The other nodes are listed on the home page of any of the above sites (in a box at the right of the page).
    Who should register?
    Anyone not already registered to download CMIP5 output. If you were previously registered to download CMIP3 output, but have not yet registered to obtain CMIP5 output, you will have to register. Those of you already registered to download CMIP5 data (by registering at the now deprecated “gateways” referred to in 2a) may continue to do so without re-registering. If you are one of these users, your registration has been transferred to the new system, and you have already been assigned a new openID, which is of the form https://pcmdi9.llnl.gov/esgf-idp/openid/[your user name] . You must use this new openID (and your original password) on the new portals listed in 2a.
    To open an account, you should access one of the portals listed in 2a above. If you are solely interested in CMIP5 output, it is recommended (as of September 2012) that you register at pcmdi9.llnl.gov. Once registered, you are free to access data through any of the portals in the federation.
    Portals have registration procedures that are not all identical but are all quite straightforward. The following registration instructions apply specifically to the PCMDI portal.
        Go to and click on the “Login” tab at the top of the page. (Please use Firefox 7+, Safari 5+ or Chrome 16+ )
        Click on “Create new Account” and provide the information requested.
        On completing your input, an email will immediately be sent to you, which will include a link (URL) that you must click on to complete your registration. Note that registration will enable you to login and search the CMIP5 archive through any of the ESGF portals, but (as described in step 3 below) you’ll have to enroll in one of the two CMIP5 user groups before you’ll be able to actually download data.
        The email sent to you will also contain your permanent OpenID, which you should record for future reference. You will need your OpenID and password in order to download any model output either through the portal interface or using a wget script generated through the portal web interface.


3. Enroll in the appropriate CMIP5 group.
You can search for model output without registering as a user, but in order to download CMIP5 data you must both register (see step 2 above) and also enroll in a CMIP5 “group”. One way to do this is as follows:

    Access one of the portals (e.g., http://pcmdi9.llnl.gov). Please use Firefox 7+, Safari 5+ or Chrome 16+ (see Supported Browsers) to access the ESGF portal.
    Login with your OpenID and password.
    Determine which of the two CMIP5 user groups you should belong to: the “research” group or the “commercial” group. If you subscribe to the “research” group, you will gain access to all the CMIP5 data, but you may use it only for non-commercial educational and research purposes. If you plan to use the data for other purposes, you should join the “commercial” group, and then you will be given access to output from a subset (about two-thirds) of the models, but your use of it is unrestricted. The terms of use governing the CMIP5 data are spelled out in Terms of Use. A table provides the key to which models are available to the two CMIP5 groups: CMIP5_modeling_groups.pdf
    Select and attempt to download a file from one of the CMIP5 models designated as available for “unrestricted” use (through ESGF HTTP link in Data Cart after you expand the Dataset, see 5., for example INM-CM4 tas file, click this link tas_day_inmcm4_1pctCO2_r1i1p1_20900101-20991231.nc ). You will be invited to choose between joining either the “commercial” or “research” group. Choose the one appropriate for your data usage. Now you will be able to download data from all models available to the group you joined. To declare your intended use of the CMIP5 output, click on the “Account” tab at the top of the web page. Click on “Apply for Group Membership”. There are a number of ESG member groups that will be listed. Click on either “CMIP5 Research” or “CMIP5 Commercial”, depending on your intent (as described in 3d above), and then click on “subscribe”.
    You next will be asked to read and agree to the terms of use. If you agree, be sure to click on “I accept” before proceeding. You also must enter a brief statement of work, which is used to assess interest in the archive The kinds of questions you might wish to answer in providing your “statement of work” include:
        Will you be studying a particular phenomenon (e.g., ENSO, MJO, dry spells)?
        Will you be assessing model skill (comparing with observations) or will you be using the output to study impacts or drive other models?
        Will you focus on a specific region?
        Will you focus on particular experiments?
    After entering your statement of work, double check that you have clicked on “I accept” before clicking on “subscribe”; otherwise your “statement of work” will have to be re-entered. Once you have completed the subscription procedure, you will then be authorized to download the CMIP5 data.

4. Find out what data are available.
There are two primary ways to search the CMIP5 data archive: 1) there is a search API which is described at ESGF Search RESTful API, or 2) you can search from one of the ESG portal web interfaces (see FE User Guide ) and described here. Please use Firefox 7+, Safari 5+ or Chrome 16+ (see Supported Browsers).

    From one of the portal home pages you should click on the “Search” tab at the top of the page, and then you can either invoke a search by entering text in the “search box” at the top of the page, or through a point and click procedure described here. Make sure 'Search All Sites' is selected (at the top center, under the search box) if you want to search entire federation and not just the node you are logged on. You can also choose the "Show All Replicas" and "Show All Versions" depending on your search needs.
    You can refine your search by entering text in the box near the top of the page and/or by selecting items from the pull-down menus under “Search Categories” in the panel on the left side of the page. Click on “Project” listed there, and select “CMIP5”, otherwise your search and selection procedure may yield many datasets that you really have no interest in or have no permission to download.
    The results of your search will be a list of “datasets”. Each “dataset” comprises a subset of the output saved from a single model run. The subset shares a common data sampling frequency (e.g., monthly, daily, 3-hourly), and a common modeling realm (e.g., atmosphere, ocean, land). The list of variables found (encompassing the union of all your search results) can be seen by clicking on the “Variable” drop-down menu under “Search Categories”. The variables included in a particular “dataset” can be seen by clicking on the dataset and then clicking on the “Variables” tab.
    If you are only interested in a single variable (e.g., “eastward wind”), then before proceeding it is best to select it from the “variable” pull-down menu in the panel on the left. This will usually reduce the number of point and clicks subsequently required to download the data.


5. Download model output.

    From the list of datasets returned by your search (completed in step 4 above), you should select the ones of interest by clicking on the "Add To Cart" below the dataset or you can choose "Add All Displayed to Datacart" above the results. The added datasets will apper in the "Data Cart" tab.
    To download the data, go to datacart by clicking on "Data Cart" tab. You can choose to get the "wget" shell script for all files in the datacart by clilcking on "WGET All Selected" at the top of the datacart tab, or you can select "WGET" script for any dataset it the cart (select "WGET next to a dataset). You can also click on "Expand" to see all the separate files belonging to the dataset and then you can download each file by selecting "HTML" link next to the file.
        If you have included any files you are not authorized to download, your request will not be granted. Instead you’ll learn how you might gain authorization by joining a new “users group”. For CMIP5, you only need to join a single group (i.e., either the CMIP5 “commercial” group or the “research” group). If you are a member of the CMIP5 “commercial” group, and if the message suggests that you join the CMIP5 “research” group, you should decline. Datasets may be visible for certain models that have not been released for general access. Such models are listed at the bottom of the CMIP5 availability web page . Before downloading any datasets, you will have to eliminate from your download request any model datasets you are not authorized to use. If you do not know which models are only available for non-commercial educational and research purposes (i.e., the ones you must eliminate), see the table CMIP5_modeling_groups.pdf. Note that in the future there will be easier ways of sub-selecting only those files that you are authorized to download.
        Similarly, if you attempt to access data from a model that has not yet been released for public analysis, you will be given an option to request permission to access that data (i.e., subscribe to a special group with access privileges). You should not attempt to subscribe, since your request will not be granted.
        If the datasets you have requested are hosted by a different portal, you may be asked to enter your OpenID, which you should do.


6. Obtaining a certificate.
To use wget scripts (described in the previous section) to download your selected files, you will usually need a certificate that attests to your right to access the data. The certificate will expire after a set period (which will be in the range 12-72 hours, depending on the gateway configuration). If you are unable to download your data within this period, you will need to acquire a new certificate.

During this beta-testing phase, you may encounter difficulties in successfully obtaining a certificate. One requirement is that the recent version of Java should be installed on your system (version 1.5 or higher). Please report other problems to the help desk listed under item 7 below.

    The download webpage will indicate whether or not you need to obtain a MyProxy certificate, which you can usually get via your browser. Click on the “Launch MyProxyLogon” link (on the page that also contains the link for downloading the wget script). [You must be patient here. At some point you might be asked to reenter your OpenID and/or password. You may be asked to “allow” the application to be launched, and it may take some time for webstart to begin to execute.] Eventually, a window should display a text box with your username, the Hostname, and Port. You should enter your “Passphrase” (i.e., your ESG password), and then click on “Logon”. [This is a java application that may not work with all browsers -- if it does not open, skip to step b below. If you get as far as clicking on “download” and then nothing happens after at least a minute or two, then you may have a firewall that is preventing access. You should consult your systems administrator.] The MyProxyLogon application will assign and store a certificate in a standard location on your computer where your wget script can subsequently access it. Note that the certificate will remain valid for all wget scripts you run until it expires (after 12 to 72 hours, depending on gateway configuration).
    If the MyProxyLogon cannot be launched as described above, you should try the following. First you should check that you have Java (version 1.5 or higher) correctly installed on your computer. Next you should check that your browser settings are set to launch Java WebStart applications. If you are unsuccessful in launching MyProxy from your browser, there are other alternatives:
        The MyProxyLogon program can be downloaded to your computer and run as a command line program. Click on the link to download the program and follow the instructions to run it.
        Install MyProxyClient. MyProxyClient is a script written in the Python programming language. Follow the instructions to install this program and run it.


7. Reporting bugs and seeking help.
To report bugs, make suggestions, air complaints, or ask for help, please send an email to: esgf-user@lists.llnl.gov

The following known bug is being worked on:

    Sometimes (when you need to enter your OpendID), you’ll arrive at a webpage that is blank except for the words “OpenID Login” (plus a header and footer). If you encounter this problem, you should clear all cookies in your browser and start over. Sometimes simply closing and reopening your browser also works



Please check also the links below for help on accessing the data and finding out about the status of the data.

    How to Register and Download Data from ESGF
    Running wget scripts in ESGF
    More ESGF_FAQs
    Detailed Info on Search API: The ESGF Search RESTful API
    Unrestricted versus Non-commercial-only Models listing: CMIP5 - Data Access - Availability
    Statistics of the CMIP5 nodes and the data they hold: P2P Archive View
    Status of the CMIP5 nodes: CMIP5 Node Status
    Quality Control Status LInks

        QC Result Information (View of QC DB data)
        QC CIM documents (atom feed):
        All QC services and some information on QC

    Register and view CMIP5 publications based on for example specific model or experiment : CMIP5 Publications List
    See also IPCC AR5 timetable for estimation of due dates for some AR5 activities.


