<?

// ==========================================================

require_once("/pcmdi_web/include/header.php");

session_start();

if (!isset($_SESSION['username']))
{
    $url = $_SESSION['url'] = $_SERVER['REQUEST_URI'];
    header("Location: ../login.php");
    exit();
}


$ipcc_subproject_id = '';
$button = '';
$authors = '';
$pub_title = '';
$abstract = '';
$status = '';
$journal = '';
$year = '';
$volume = '';
$pages = '';
$doi_id = '';
$url = '';

if (isset($_REQUEST['ipcc_subproject_id']))
    $ipcc_subproject_id = $_REQUEST['ipcc_subproject_id'];
if (isset($_REQUEST['button']))
    $button = $_REQUEST['button'];
if (isset($_REQUEST['authors']))
    $authors = $_REQUEST['authors'];
if (isset($_REQUEST['title']))
    $pub_title = $_REQUEST['title'];
if (isset($_REQUEST['abstract']))
    $abstract = $_REQUEST['abstract'];
if (isset($_REQUEST['status']))
    $status = $_REQUEST['status'];
if (isset($_REQUEST['journal']))
    $journal = $_REQUEST['journal'];
if (isset($_REQUEST['year']))
    $year = $_REQUEST['year'];
if (isset($_REQUEST['volume']))
    $volume = $_REQUEST['volume'];
if (isset($_REQUEST['pages']))
    $pages = $_REQUEST['pages'];
if (isset($_REQUEST['doi_id']))
    $doi_id = $_REQUEST['doi_id'];
if (isset($_REQUEST['url']))
    $url = $_REQUEST['url'];

if ($url == 'http://')
{
    $url = '';
}

$errors = array();

if ($ipcc_subproject_id == '')
{
    $error = 'ERROR: IPCC Subproject ID not specified.<br>';
    $error .= 'Please return to the <a href="aa_diagnostic_subprojects.php">IPCC Subprojects page</a>, select a project, and add a publication from within that project.';
    $errors[] = $error;
}

if ($button == 'Cancel')
{
    header("Location: aa_project_detail.php?ipcc_subproject_id=${ipcc_subproject_id}");
    exit();
}

else if ($button == 'Save')
{
    // validate fields
    if ($authors == '')
    {
        $errors[] = 'You must enter an author.';
    }
    if ($pub_title == '')
    {
        $errors[] = 'You must enter a title.';
    }
    if ($abstract == '')
    {
        $errors[] = 'You must enter an abstract.';
    }
    if ($status == '')
    {
        $errors[] = 'You must select a status.';
    }

    // insert into database
    if (count($errors) == 0)
    {
        $sql = "INSERT INTO aa_pcmdi_web.ipcc_publications SET ";
        $sql .= "ipcc_subproject_id='" . $ipcc_subproject_id . "', ";
        $sql .= "authors='" . $authors . "', ";
        $sql .= "title='" . $pub_title . "', ";
        $sql .= "abstract='" . $abstract . "', ";
        $sql .= "status='" . $status . "', ";
        $sql .= "journal='" . $journal . "', ";
        $sql .= "year='" . $year . "', ";
        $sql .= "volume='" . $volume . "', ";
        $sql .= "pages='" . $pages . "', ";
        $sql .= "doi_id='" . $doi_id . "', ";
        $sql .= "url='" . $url . "', ";
        $sql .= "created_datetime=NOW(), ";
        $sql .= "modified_datetime=NOW(), ";
        $sql .= "created_by='" . $_SESSION['username'] . "', ";
        $sql .= "modified_by='" . $_SESSION['username'] . "'";

        //print $sql . '<br>';

        $db->query($sql);

        // send back to project page
        header('Location: aa_project_detail.php?ipcc_subproject_id=' . $ipcc_subproject_id); 

        exit();
    }
}


$title = "PCMDI > WCRP CMIP3 Model Output > WCRP CMIP3 Sub-Project Publications";
$header_image = "http://www-pcmdi.llnl.gov/images/banner_ipcc.jpg";
$welcome_image = "http://www-pcmdi.llnl.gov/images/headers/ipcc_subproject_publications.jpg";

require ("http://www-pcmdi.llnl.gov/header.inc");


?> 


<style>

label
{
    font-weight: bold;
    margin-right: 5px;
}

</style>

<br>

<form name="publication_form" id="publication_form" action="aa_add_publication.php" method="post">

<?php

if (count($errors) > 0)
{
    print '<div style="border: 1px solid #ff0000; background-color: #ffcccc; padding: 4px; margin-bottom: 10px;">';
    print '<ul style="margin: 0; padding: 0 0 0 5;">';
 
    foreach ($errors as $cur_error)
    {
        print '<li>' . $cur_error . '</li>';
    }

    print '</ul>';    
    print '</div>';
}

?>

<input type="hidden" id="ipcc_subproject_id" name="ipcc_subproject_id" value="<?php print $ipcc_subproject_id; ?>">

<table cellpadding="0" cellspacing="2" border="0">
    <tr>
        <td><label for="authors">Authors:</label></td>
        <td><input type="text" id="authors" name="authors" size="40" maxlength="255" value="<?php print $authors; ?>"></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>(e.g. "Johnson, L.E., and J.M. Smith") Note: enter last name first, for first author.</td>
    </tr>


    <tr>
        <td><label for="title">Title:</label></td>
        <td><input type="text" id="title" name="title" size="80" maxlength="255" value="<?php print $pub_title; ?>"></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>(e.g. "Evaluation of precipitation in climate models")</td>
    </tr>


    <tr>
        <td valign="top"><label for="abstract">Abstract:</label></td>
        <td>
            <textarea id="abstract" name="abstract" rows="10" cols="80"><?php print $abstract; ?></textarea>
            <br>
            (separate paragraphs with blank lines)
        </td>
    </tr>


    <tr>
        <td><label for="status">Status:</label></td>
        <td>
            <select id="status" name="status" size="1">
                <option value="">--- Select Status ---</option>
                <option value="published" <?php print ($status == 'published') ? 'selected' : ''; ?>>Published</option>
                <option value="in_press" <?php print ($status == 'in_press') ? 'selected' : ''; ?>>In Press</option>
                <option value="accepted" <?php print ($status == 'accepted') ? 'selected' : ''; ?>>Accepted</option>
                <option value="submitted" <?php print ($status == 'submitted') ? 'selected' : ''; ?>>Submitted</option>
                <option value="in_preparation" <?php print ($status == 'in_preparation') ? 'selected' : ''; ?>>In Preparation</option>
            </select>
        </td>
    </tr>

    <tr>
        <td colspan="2"><h3>If Known:</h3></td>
    </tr>

    
    <tr>
        <td><label for="journal">Journal:</label></td>
        <td><input type="text" id="journal" name="journal" size="40" maxlength="255" value="<?php print $journal; ?>"></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>(e.g. "J. Geophys. Res.")</td>
    </tr>

    <tr>
        <td><label for="year">Year:</label></td>
        <td><input type="text" id="year" name="year" size="6" maxlength="10" value="<?php print $year; ?>"></td>
    </tr>

    <tr>
        <td><label for="volume">Volume:</label></td>
        <td><input type="text" id="volume" name="volume" size="4" maxlength="10" value="<?php print $volume; ?>"></td>
    </tr>

    <tr>
        <td><label for="pages">Pages:</label></td>
        <td><input type="text" id="pages" name="pages" size="10" maxlength="20" value="<?php print $pages; ?>"></td>
    </tr>


    <tr>
        <td><label for="doi_id">DOI ID:</label></td>
        <td><input type="text" id="doi_id" name="doi_id" size="30" maxlength="255" value="<?php print $doi_id; ?>"></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>(e.g. "doi:10.1029/2005JD005776")</td>
    </tr>


    <tr>
        <td><label for="url">URL:</label></td>
        <td><input type="text" id="url" name="url" size="40" maxlength="255" value="<?php print ($url != '') ? $url : 'http://'; ?>"></td>
    </tr>

</table>

<br>

<input type="submit" name="button" value="Save">
<input type="submit" name="button" value="Cancel">

</form>

<br>

<?

require ("http://www-pcmdi.llnl.gov/footer.inc");

?>
