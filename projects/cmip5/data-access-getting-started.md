---
layout: CMIP5
title: Getting Started
---

# CMIP5 Data - Getting Started

<br>

<div id="main_text_area" class="txt2">

    <!-- <p class="txt2"><em> Download it in pdf format: <a href="docs/data_getting_started.pdf">data_getting_started.pdf</a></em></p>  -->
    <span class="red_col">
        <strong>NOTES: </strong> 
        <div class="indent">
            <ul>
                <li> Please use Firefox 7+, Safari 5+ or Chrome 16+ (see <a href="http://www.esgf.org/wiki/ESGF_Supported_Browsers">Supported Browsers</a>) to access the ESGF P2P </li>
                <li> The old ESGF gateways ( 
                    PCMDI: <a href="http://pcmdi3.llnl.gov/esgcet">http://pcmdi3.llnl.gov/esgcet ,</a>  BADC: <a href="http://cmip-gw.badc.rl.ac.uk">http://cmip-gw.badc.rl.ac.uk ,</a> DKRZ: <a href="http://ipcc-ar5.dkrz.de">http://ipcc-ar5.dkrz.de</a>  ) are now  deprecated. The pcmdi3.llnl.gov gateway was shut down permanently on 11/20/2012. Please use new P2P (Peer-to-Peer, distributed federation of nodes) ESGF portals listed below in 2a. Refer to 2b for the registration and your openid on the new ESGF P2P system. 
                </li>
                <!-- <li> The NCAR site works differently than all other nodes. To download the CESM1 and CCSM data you will need to login to NCAR gateway (www.earthsystemgrid.org) with your openid </li>-->
            </ul>
        </div>
    </span>
    <br>
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 1. Access to data.</strong></p>
    <div class="indent txt2"> 
        Anyone can browse the CMIP5 model output archive catalogue, but in order to download data you will be required to register (i.e. open an account) (see step 2 below).  Your account will be valid for browsing all data served by the Earth System Grid Federation (ESGF) — CMIP5 plus much, much more.  Because different restrictions are placed on different datasets served by ESGF, you must also enroll in one of the two “CMIP5 groups” and agree to the terms of use established for CMIP5 (see step 3 below). <br>
    </div>
    <br>
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 2. Obtaining an ESGF account.</strong></p>
    <div class="indent">
        <ol type="a">
            <li>
                All CMIP5 Model output can be accessed via any one of several websites serving as portals to the ESGF archive.  Note that these portals supersede the old gateways to CMIP3 data and also the ESG “gateways” originally used to access CMIP5 output that were deprecated in September 2012 (e.g., pcmdi3.llnl.gov).  Although nearly a dozen ESGF portals currently exist, the following sites provide the most reliable and complete access to CMIP5 output (as of November 2012):
                <div class="indent">
                    <ol type="i">
                        <li>PCMDI: <a href="http://pcmdi9.llnl.gov/" target="_blank">http://pcmdi9.llnl.gov/</a></li>
                        <li>BADC: <a href="http://esgf-index1.ceda.ac.uk" target="_blank">http://esgf-index1.ceda.ac.uk</a></li>
                        <li>DKRZ: <a href="http://esgf-data.dkrz.de" target="_blank">http://esgf-data.dkrz.de</a></li>
                        <li>NCI: <a href="http://esg2.nci.org.au" target="_blank">http://esg2.nci.org.au</a></li>
                    </ol>
                </div>
                The other nodes are listed on the home page of any of the above sites (in a box at the right of the page). 
            </li>
            <li>
                Who should register?
                <div class="indent txt2">Anyone not already registered to download CMIP5 output.  If you were previously registered to download CMIP3 output, but have not yet registered to obtain CMIP5 output, you will have to register.  Those of you already registered to download CMIP5 data (by registering at the now deprecated “gateways” referred to in 2a) may continue to do so without re-registering.  If you are one of these users, your registration has been transferred to the new system, and you have already been assigned a new openID, which is of the form  <b> https://pcmdi9.llnl.gov/esgf-idp/openid/[<em>your user name</em>] </b>
                    . You must use this new openID (and your original password) on the new portals listed in 2a. 
                </div>
                <!-- <div class="indent txt2"> Users who previously registered at PCMDI for the purpose of obtaining CMIP3 output will not be able to access CMIP5 output under that CMIP3 account.  Those users plus new users who don’t currently have an account at any of the ESGF gateways will need to register. If you register to the older ESGF Gateway    http://pcmdi3.llnl.gov/esgcet , you should be able to use the same openid and password, just substitute https://pcmdi3.llnl.gov/esgcet/myopenid/xxxxxx  with https://pcmdi9.llnl.gov/esgf-idp/openid/xxxxxx   </div> -->
            </li>
            <li>To open an account, you should access one of the portals listed in 2a above.   If you are solely interested in CMIP5 output, it is recommended (as of September 2012) that you register at <strong>pcmdi9.llnl.gov</strong>. Once registered, you are free to access data through any of the portals in the federation. </li>
            <li>
                Portals have registration procedures that are not all identical but are all quite straightforward.  The following registration instructions apply specifically to the PCMDI portal.
                <div class="indent">
                    <ol type="i">
                        <li>Go to  and click on the <em>“Login”</em> tab at the top of the page. <span class="red_col"> (Please use Firefox 7+, Safari 5+ or Chrome 16+ ) </span></li>
                        <li>Click on <em>“Create new Account”</em> and provide the information requested.   </li>
                        <li>On completing your input, an email will immediately be sent to you, which will include a link (URL) that you must click on to complete your registration.  Note that registration will enable you to login and search the CMIP5 archive through any of the ESGF portals, but (as described in step 3 below) you’ll have to enroll in one of the two CMIP5 user groups before you’ll be able to actually download data.    </li>
                        <li>The email sent to you will also contain your permanent OpenID, which you should record for future reference. You will need your OpenID and password in order to download any model output either through the portal interface or using a wget script generated through the portal web interface.   </li>
                    </ol>
                </div>
            </li>
        </ol>
    </div>
    <!-- --------------------------------- -->
    <br>
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 3. Enroll in the appropriate CMIP5 group.</strong></p>
    <div class="indent">
        You can search for model output without registering as a user, but in order to download CMIP5 data you must both register (see step 2 above) and also enroll in a CMIP5 “group”.  One way to do this is as follows:    
        <div class="indent">
            <ol type="a">
                <li> Access one of the portals (e.g., <a href="http://pcmdi9.llnl.gov">http://pcmdi9.llnl.gov</a>). <span class="red_col">Please use Firefox 7+, Safari 5+ or Chrome 16+ (see <a href="http://www.esgf.org/wiki/ESGF_Supported_Browsers">Supported Browsers</a>) to access the ESGF portal.</span></li>
                <li> Login with your OpenID and password. </li>
                <li> Determine which of the two CMIP5 user groups you should belong to: the <em>“research”</em> group or the <em>“commercial”</em> group.  If you subscribe to the <em>“research”</em> group, you will gain access to all the CMIP5 data, but you may use it only for non-commercial educational and research purposes.  If you plan to use the data for other purposes, you should join the <em>“commercial”</em> group, and then you will be given access to output from a subset (about two-thirds) of the models, but your use of it is unrestricted.  The terms of use governing the CMIP5 data are spelled out in 
                    <a href="terms.html"> Terms of Use</a>.
                    A table provides the key to which models are available to the two CMIP5 groups: 
                    <a href="docs/CMIP5_modeling_groups.pdf">CMIP5_modeling_groups.pdf</a>
                </li>
                <li> Select and attempt to download a file from one of the CMIP5 models designated as available for <em>“unrestricted”</em> use (through ESGF HTTP link in Data Cart after you expand the Dataset, see 5., for example INM-CM4 tas file, click this link <a href="http://pcmdi9.llnl.gov/thredds/fileServer/cmip5_data/cmip5/output1/INM/inmcm4/1pctCO2/day/atmos/day/r1i1p1/tas/1/tas_day_inmcm4_1pctCO2_r1i1p1_20900101-20991231.nc"> tas_day_inmcm4_1pctCO2_r1i1p1_20900101-20991231.nc </a>
                    ).  You will be invited to choose between joining either the <em>“commercial”</em> or <em>“research”</em> group.  Choose the one appropriate for your data usage.  Now you will be able to download data from all models available to the group you joined.    To declare your intended use of the CMIP5 output, click on the “Account” tab at the top of the web page.  Click on <em>“Apply for Group Membership”</em>.  There are a number of ESG member groups that will be listed.  Click on either <em>“CMIP5 Research”</em> or <em>“CMIP5 Commercial”</em>, depending on your intent (as described in 3d above), and then click on <em>“subscribe”</em>.
                </li>
                <li> You next will be asked to read and agree to the terms of use.  If you agree, <span class="red_col">be sure to click on “I accept” before proceeding</span>.  You also must enter a brief statement of work, which is used to assess interest in the archive  The kinds of questions you might wish to answer in providing your <em>“statement of work”</em> include:  </li>
                <div class="indent">
                    <ol type="i">
                        <li> Will you be studying a particular phenomenon (e.g., ENSO, MJO, dry spells)? </li>
                        <li> Will you be assessing model skill (comparing with observations) or will you be using the output to study impacts or drive other models?</li>
                        <li> Will you focus on a specific region?</li>
                        <li> Will you focus on particular experiments?</li>
                    </ol>
                </div>
                <li> After entering your statement of work,<span class="red_col"> double check that you have clicked on <em>“I accept”</em> before clicking on <em>“subscribe”</em>; otherwise your <em>“statement of work”</em> will have to be re-entered</span>.  Once you have completed the subscription procedure, you will then be authorized to download the CMIP5 data.</li>
            </ol>
        </div>
    </div>
    <!-- --------------------------------- -->  
    <!-- --------------------------------- --> 
    <p class="txt2"><strong> 4. Find out what data are available.</strong></p>
    <div class="indent">
        There are two primary ways to search the CMIP5 data archive: 1) there is a search API which is described at <a href="http://www.esgf.org/wiki/ESGF_Search_REST_API">ESGF Search RESTful API</a>, or 2) you can search from one of the ESG portal web interfaces (see <a href="http://www.esgf.org/wiki/fe-user-guide"> FE User Guide </a>) and described here.  <span class="red_col">Please use Firefox 7+, Safari 5+ or Chrome 16+ (see <a href="http://www.esgf.org/wiki/ESGF_Supported_Browsers">Supported Browsers</a>).</span>
        <div class="indent">
            <ol type="a">
                <li>
                    From one of the portal home pages you should click on  the <em><strong>“Search”</strong></em> tab at the top of the page, and then you can either invoke a search by entering text in the <em>“search box”</em> at the top of the page, or through a point and click procedure described here.<span class="red_col"> Make sure '<strong>Search All Sites</strong>'  is selected  (at the top center, under the search box) if you want to search entire federation and not just the node you are logged on.</span> You can also choose the<em> <strong>"Show All Replicas"</strong></em> and <em><strong>"Show All Versions"</strong></em> depending on your search needs.
                    <!--near tin the boxed panel near the top of the page elect one of the following “Search” options:
                        <div class="indent">
                        <ol type="i">
                        <li><em>“Datasets”</em> which provides information about datasets that can be downloaded, or</li>
                        <li><em>“Simulations”</em> which provides documentation of the models and their simulations.</li> 
                        </ol>
                        </div>-->
                </li>
                <li>You can refine your search by entering text in the box near the top of the page and/or by selecting items from the pull-down menus under <em><strong>“Search Categories”</strong></em> in the panel on the left side of the page.  Click on <em><strong>“Project”</strong></em> listed there, and select <em><strong>“CMIP5”</strong></em>, otherwise your search and selection procedure may yield many datasets that you really have no interest in or have no permission to download. </li>
                <li>
                    The results of your search <!-- depend on which search option (<em>“Datasets”</em> or <em>“Simulations”</em>) you have selected.
                        <div class="indent">
                        <ol type="i">
                        <li>If you selected <em>“Datasets”</em> the result--> will be a list of “datasets”.   Each “dataset” comprises a subset of the output saved from a single model run.  The subset shares a common data sampling frequency (e.g., monthly, daily, 3-hourly), and a common modeling realm (e.g., atmosphere, ocean, land).  The list of variables found (encompassing the union of all your search results) can be seen by clicking on the “Variable” drop-down menu under <em>“Search Categories”</em>.  The variables included in a particular “dataset” can be seen by clicking on the dataset and then clicking on the <strong><em>“Variables”</em></strong> tab.
                </li>
                <!-- <li>If you selected <em>“Simulations”</em>, the result of your search will be a list of model runs.  If you click on a run, you will obtain information about the model and the simulation conditions.</li> 
                    </ol>
                    </div>--> 
                <li>If you are only interested in a single variable (e.g., “eastward wind”), then before proceeding it is best to select it from the <em>“variable”</em> pull-down menu in the panel on the left.  This will usually reduce the number of point and clicks subsequently required to download the data.</li>
            </ol>
        </div>
    </div>
    <br>  
    <!-- --------------------------------- -->
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 5. Download model output.</strong></p>
    <div class="indent">
        <ol type="a">
            <li>
                From the list of datasets returned by your search (completed in step 4 above), you should select the ones of interest by clicking on the <strong><em>"Add To Cart"</em></strong> below the dataset or you can choose <strong><em>"Add All Displayed to Datacart"</em></strong>  above the results. The added datasets will apper in the <strong><em>"Data Cart" tab</em></strong>.
                <!-- 
                    Data Center from which you want to download the data.  (For some datasets there may only be one center listed.)  Although many pages of datasets may be available, you are currently only able to access data from a single page at a time.--> 
            </li>
            <li>
                To download the data, go to datacart by clicking on "Data Cart" tab. You can choose to get the <em><strong>"wget"</strong></em> shell script for all files in the datacart by clilcking on <em><strong>"WGET All Selected"</strong></em> at the top of the datacart tab, or you can select "<strong><em>WGET"</em></strong> script for any dataset it the cart (select "WGET next to a dataset). You can also click on <strong><em>"Expand"</em></strong> to see all the separate files belonging to the dataset and then you can download each file by selecting <em><strong>"HTML"</strong></em><strong></strong> link next to the file. 
                <div class="indent">
                    <ol type="i">
                        <li>If you have included any files you are not authorized to download, your request will not be granted.  Instead you’ll learn how you might gain authorization by joining a new “users group”. For CMIP5, you only need to join a single group (i.e., either the CMIP5 “commercial” group or the “research” group).  If you are a member of the CMIP5 “commercial” group, and if the message suggests that you join the CMIP5 “research” group, you should decline. Datasets may be visible for certain models that have not been released for general access. Such models are listed at the bottom of the  <a href="availability.html"> CMIP5 availability </a> web page .  
                            Before downloading any datasets, you will have to eliminate from your download request any model datasets you are not authorized to use.  If you do not know which models are only available for non-commercial educational and research purposes (i.e., the ones you must eliminate), see the table  <a href="docs/CMIP5_modeling_groups.pdf"> CMIP5_modeling_groups.pdf</a>.   Note that in the future there will be easier ways of sub-selecting only those files that you are authorized to download. 
                        </li>
                        <li>Similarly, if you attempt to access data from a model that has not yet been released for public analysis, you will be given an option to request permission to access that data (i.e., subscribe to a special group with access privileges).  You should <strong>not</strong> attempt to subscribe, since your request will not be granted. </li>
                        <li>If the datasets you have requested are hosted by a different portal, you may be asked to enter your OpenID, which you should do.</li>
                    </ol>
                </div>
            </li>
            <!-- <li>When you get to the datacart, you will see all chosen datasets.  There are two options for downloading files:<br>
                <u> Option 1: Downloading files one at a time.</u>
                <div class="indent">
                You can download <em>individual</em> files one at a time by clicking on the blue “download” links in the far right column of the table. The data you wish to download will often be hosted at a Data Node located elsewhere (i.e., not at the site where you have initiated your search).   When you select the link for a file located at a remote Data Node, you may be asked to enter your OpenID, which you should do.  
                </div> 
                <u> Option 2:  Downloading several files using a script.</u>
                <div class="indent">
                If you have a Linux, Unix, or Mac OSX platform, you can download <em>all</em> the listed files by checking the small box on the left in the first line at the top of the table(s), or you can select a subset of the files by clicking on the boxes in the left column of the table(s).  After selecting the files you want, click on the “Download All Selected Files” button at the top right of the window.  You’ll then be shown the number of files and the volume of data you have requested, and one or more “Download” arrows, one for each script needed to get all the data you want.   When you click on each “Download”, you’ll download a Wget script. In the usual case, scripts will<em> not</em> execute until you have obtained an appropriate certificate, as described in the next section.  [If you need a certificate, the web page will indicate that you should obtain a certificate.] When you are ready to run your scripts, open a terminal window, check that the script files are designated as executable (if not, “chmod +x <em>filename</em>”), and run your scripts (e.g., “./wget-download.sh”).</div> 
                 </li> -->
        </ol>
    </div>
    <br>  
    <!-- --------------------------------- -->
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 6. Obtaining a certificate.</strong></p>
    <div class="indent">
        To use wget scripts (described in the previous section) to download your selected files, you will usually need a certificate that attests to your right to access the data.  The certificate will expire after a set period (which will be in the range 12-72 hours, depending on the gateway configuration).  If you are unable to download your data within this period, you will need to acquire a new certificate.  <br><br>
        During this beta-testing phase, you may encounter difficulties in successfully obtaining a certificate.  One requirement is that the recent version of Java should be installed on your system (version 1.5 or higher).   Please report other problems to the help desk listed under item 7 below.
        <ol type="a">
            <li>The download webpage will indicate whether or not you need to obtain a MyProxy certificate, which you can usually get via your browser.  Click on the “Launch MyProxyLogon” link (on the page that also contains the link for downloading the wget script).  [You must be patient here.  At some point you might be asked to reenter your OpenID and/or password.  You may be asked to “allow” the application to be launched, and it may take some time for webstart to begin to execute.]  Eventually, a window should display a text box with your username, the Hostname, and Port.  You should enter your “Passphrase” (i.e., your ESG password), and then click on “Logon”.  [This is a java application that may not work with all browsers -- if it does not open, skip to step b below.  If you get as far as clicking on “download” and then nothing happens after at least a minute or two, then you may have a firewall that is preventing access.  You should consult your systems administrator.] The MyProxyLogon application will assign and store a certificate in a standard location on your computer where your wget script can subsequently access it.  Note that the certificate will remain valid for all wget scripts you run until it expires (after 12 to 72 hours, depending on gateway configuration). </li>
            <li>
                If the <em>MyProxyLogon</em> cannot be launched as described above, you should try the following.  First you should check that you have Java (version 1.5 or higher) correctly installed on your computer.  Next you should check that your browser settings are set to launch Java <em>WebStart</em> applications. If you are unsuccessful in launching MyProxy from your browser, there are other alternatives:
                <div class="indent">
                    <ol type="i">
                        <li>The <em>MyProxyLogon</em> program can be downloaded to your computer and run as a command line program.  Click on the link to download the program and follow the instructions to run it.</li>
                        <li>Install MyProxyClient.  MyProxyClient is a script written in the Python programming language.  Follow the instructions to install this program and run it.</li>
                    </ol>
                </div>
            </li>
        </ol>
    </div>
    <!-- --------------------------------- -->
    <br>   
    <!-- --------------------------------- -->
    <p class="txt2"><strong> 7. Reporting bugs and seeking  help.</strong></p>
    <div class="indent">
        To report bugs, make suggestions, air complaints, or ask for help, please send an email to: <a href="mailto:esgf-user@lists.llnl.gov">esgf-user@lists.llnl.gov</a>  <br><br>
        The following known bug is being worked on: <br>
        <ul>
            <li>
                Sometimes (when you need to enter your OpendID), you’ll arrive at a webpage that is blank except for the words “OpenID Login” (plus a header and footer).  If you encounter this problem, you should clear all cookies in your browser and start over.  Sometimes simply closing and reopening your browser also works
            </li>
        </ul>
    </div>
    <!-- --------------------------------- -->
    <br>
    <br>
    Please check also the links below for help on accessing the data and finding out about the status of the data. <br>
    <ul>
        <li> <a href="http://www.esgf.org/wiki/ESGF_Data_Download">How to Register and Download Data from ESGF</a></li>
        <li> <a href="http://www.esgf.org/wiki/ESGF_wget_FAQ">Running wget scripts in ESGF </a></li>
        <li> <a href="http://www.esgf.org/wiki/ESGF_FAQs">More ESGF_FAQs</a></li>
        <li> Detailed Info on Search API: <a href="http://www.esgf.org/wiki/ESGF_Search_REST_API">The ESGF Search RESTful API</a></li>
        <li> Unrestricted versus Non-commercial-only Models listing: <a href="availability.html">CMIP5 - Data Access - Availability</a></li>
        <li> Statistics of the CMIP5 nodes and the data they hold: <a href="http://www.esgf.org/wiki/Cmip5Status/P2PArchiveView"> P2P Archive View</a></li>
        <li> Status of the CMIP5 nodes: <a href="http://www.esgf.org/wiki/Cmip5Status/CMIP5NodeStatus"> CMIP5 Node Status</a></li>
        <li>
            Quality Control Status LInks  
            <p>
            </p>
            <div class="indent">
                <ul>
                    <li> <a href="http://cera-www.dkrz.de/WDCC/CMIP5/QCResult.jsp">QC Result Information</a> (View of QC DB data) </li>
                    <li><a href="http://cera-www.dkrz.de/WDCC/CMIP5/feed">QC CIM documents</a> (atom <strong>feed</strong>):  </li>
                    <li> All <a href="https://redmine.dkrz.de/collaboration/projects/cmip5-qc/wiki/Qc_esg">QC services</a> and some information on QC  </li>
                </ul>
            </div>
            <p></p>
        </li>
        <li> Register and view CMIP5 publications based on for example specific model or experiment :  <a href="http://cmip.llnl.gov/cmip5/publications/publicationjournal"> CMIP5 Publications List </a></li>
        <li> See also <a href="ipcc_ar5_timetable.html">IPCC AR5 timetable</a> for estimation of due dates for some AR5 activities. </li>
    </ul>
    <br>
    <br>
    <br> 
    <br>
    <br>
    <br>
</div>