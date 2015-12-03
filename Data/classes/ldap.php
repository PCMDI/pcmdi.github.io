<?php
// basic sequence with LDAP is connect, bind, search, interpret search
// result, close connection
$searchname = trim(htmlspecialchars(strip_tags($_REQUEST['searchvalue'])));
function crawlerDetect($USER_AGENT) {
 $crawlers = array(
 array('Google', 'Google'),
 array('msnbot', 'MSN'),
 array('Rambler', 'Rambler'),
 array('Yahoo', 'Yahoo'),
 array('AbachoBOT', 'AbachoBOT'),
 array('accoona', 'Accoona'),
 array('AcoiRobot', 'AcoiRobot'),
 array('ASPSeek', 'ASPSeek'),
 array('CrocCrawler', 'CrocCrawler'),
 array('Dumbot', 'Dumbot'),
 array('FAST-WebCrawler', 'FAST-WebCrawler'),
 array('GeonaBot', 'GeonaBot'),
 array('Gigabot', 'Gigabot'),
 array('Lycos', 'Lycos spider'),
 array('MSRBOT', 'MSRBOT'),
 array('Scooter', 'Altavista robot'),
 array('AltaVista', 'Altavista robot'),
 array('IDBot', 'ID-Search Bot'),
 array('eStyle', 'eStyle Bot'),
 array('Scrubby', 'Scrubby robot')
 );

 foreach ($crawlers as $c) {
 if (stristr($USER_AGENT, $c[0])) {
 return($c[1]);
 } 
 }

 return false;
}

$crawler = crawlerDetect($_SERVER['HTTP_USER_AGENT']);
$pos = strpos($searchname,'*');
$length = strlen($searchname);
//echo $pos;

if (!$crawler && strlen($searchname) > 1 && $pos != 1){
	
function obfuscate($input)
{ 
    foreach (str_split($input) as $obj) { 
        $output .= '&#' . ord($obj) . ';'; 
    }
    return $output;
}

$ds=ldap_connect("ldap.llnl.gov");


if ($ds) { 
    $r=ldap_bind($ds);
 
    // Search surname entry
//	$searchstring = 'sn=' . $searchname;
	$searchstring="(|(sn=$searchname)(cn=$searchname)(firstname=$searchname))";
//$filter="(|(sn=$person*)(givenname=$person*))";
//$justthese = array("ou", "sn", "givenname", "mail");
//$sr=ldap_search($ds, $dn, $filter, $justthese);
	
    $sr=ldap_search($ds, "ou=People,dc=llnl,dc=gov", $searchstring);
	ldap_sort($ds, $sr, 'cn');//experimental
	ldap_sort($ds, $sr, 'sn');//experimental
if(ldap_count_entries($ds, $sr) > 200){
	echo '<h4>Your search returned too many results to display, please narrow your search.</h4>';
}
else{
    echo '<div class="searchtext">' . ldap_count_entries($ds, $sr) . " Search Result";
	echo (ldap_count_entries($ds, $sr) != 1 ? 's' : '');
	echo " for <strong>'" .  $searchname . "'</strong></div>";
 
    $info = ldap_get_entries($ds, $sr);
    for ($i=0; $i<$info["count"]; $i++) {
	   echo '<div class="searchBox"><div class="searchTitle">' . $info[$i]["cn"][0] . '</div><div class="searchDesc">';
	   $email = $info[$i]["mail"][0];
	   if(strpos($email, 'ee: ') == 0){
		   echo '<a class="showto" href="' . obfuscate('mailto:') . obfuscate($email) . '">' . obfuscate($email) . '</a><span class="showto"></span>';
	   }
	   else{
		   echo $email;
	   }
       $tel = $info[$i]["telephonenumber"][0];
	   $tel = substr($tel, 3, strlen($tel));
	   echo '<br />'. $tel . '</div>';
      echo '</div>';
    }
	
}
	ldap_close($ds);

} else {
    echo "<h4>Unable to search at this time</h4>";
}
}else{
	echo "<h4>Invalid Search Criterion</h4><p>Must use at least two alpha characters for a name search.</p>";
}
?>