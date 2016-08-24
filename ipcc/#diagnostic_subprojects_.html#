<?

$title = "PCMDI > WCRP CMIP3 Model Output > Diagnostic Subprojects";
$header_image = "http://www-pcmdi.llnl.gov/images/banner_ipcc.jpg";
$welcome_image = "http://www-pcmdi.llnl.gov/images/headers/diagnostic_subprojects.jpg";

require ("http://www-pcmdi.llnl.gov/header.inc");

// ==========================================================

require_once("/pcmdi_web/include/header.php");

$sql = "SELECT S.ipcc_subproject_id, S.title, S.pi_first_name, S.pi_last_name, S.institution, ";
$sql .= "P.ipcc_publication_id, P.is_active FROM pcmdi_web.ipcc_subprojects AS S ";
$sql .= "LEFT JOIN pcmdi_web.ipcc_publications AS P ";
$sql .= "ON P.ipcc_subproject_id=S.ipcc_subproject_id ";
$sql .= "WHERE S.is_active='1' ";
$sql .= "ORDER BY S.pi_last_name='N/A', S.pi_last_name, S.pi_first_name";

//print $sql . '<br>';

$projectsArray = $db->getAll($sql);

$projectsCount = $db->getOne("SELECT COUNT(*) FROM pcmdi_web.ipcc_subprojects WHERE is_active='1'");

?> 

<table width="100%">
    <tr>
        <td valign="top">
            <b>WCRP CMIP3 Subprojects</b> | <a href="subproject_publications.php"><b>Subproject Publications</b></a>
        </td>
        <td align="right" valign="top">
            <p>Last Updated: 2007-07-25<br>Current Total: <?php print $projectsCount; ?> subprojects</p>
        </td>
    </tr>
</table>    



<table cellspacing="0" cellpadding="4" border="0">

	<tr>
		<th width="50%" align="left">Title</th>
		<th align="left">PI</th>
		<th align="left">Institution</th>
        <th align="left">Publications</th>
	</tr>


<?php

$rownum = 0;
$rowcolor1 = "#FFFFFF";
$rowcolor2 = "";
$rowcolorred = "#FF9999";
$rowcolor = $rowcolor1;

for ($i = 0; $i < count($projectsArray); $i++)
{
    $curProject = $projectsArray[$i];

	if ($rownum % 2)
	{
		$rowcolor = $rowcolor2;
	}
	else
	{
		$rowcolor = $rowcolor1;
	}
	echo "<tr>";

	echo "<td style=\"background-color: $rowcolor\"><a href=\"project_detail.php?ipcc_subproject_id=" . $curProject["ipcc_subproject_id"] . "\">" . $curProject["title"] . "</a></td>";
	echo "<td style=\"background-color: $rowcolor\">";
	echo $curProject["pi_first_name"] . " " . $curProject["pi_last_name"];
	if (isset($curProject["additional_pis"]) && $curProject["additional_pis"] != "")
		echo $curProject["additional_pis"];
	echo "</td>";
	echo "<td style=\"background-color: $rowcolor\">" . $curProject["institution"] . "</td>";

    echo '<td style="background-color: ' . $rowcolor . '">';


    if ($curProject['ipcc_publication_id'] != 0 && $curProject['is_active'] == 1)
    {            
        echo '<a href="abstract.php?ipcc_publication_id=' . $curProject['ipcc_publication_id'] . '&r=subprojects">Pub 1</a>';
    }
    else
    {
        echo '&nbsp;';
    }



    $first_offset = $i + 1;
    $offset = $i + 1;
    while(isset($projectsArray[$offset]) && $projectsArray[$offset]['ipcc_subproject_id'] == $curProject['ipcc_subproject_id'])
    {
        if ($projectsArray[$offset]['ipcc_publication_id'] != 0 && $projectsArray[$offset]['is_active'] == 1)
        {            
            echo ', <a href="abstract.php?ipcc_publication_id=' . $projectsArray[$offset]['ipcc_publication_id'] . '&r=subprojects">Pub ' . ($offset - $first_offset + 2) . '</a>';
        }
        else
        {
            echo '&nbsp;';
        }
        $offset++;
        $i++;
    }

    echo '</td>';


	echo "</tr>";
	echo "\n";
    $rownum++;
}

?>


</table>

<?

require ("http://www-pcmdi.llnl.gov/footer.inc");

?>
