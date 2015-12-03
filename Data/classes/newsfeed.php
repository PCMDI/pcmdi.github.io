<?php
date_default_timezone_set('America/Los_Angeles');
  $url = "http://www.llnl.gov/llnlfeed.xml";
  $rss = simplexml_load_file($url);
  $show = 3;
  $return = array();
  $returned['a'] = "success";
  $returned['b'] = "";
  
  if($rss){
    $items = $rss->channel->item;
  }
  else{
    $returned['a'] = "fail";
    $returned['b'] = "can not reach llnl rss feed";
  }
  if($show > count($items)){
	  $show = count($items);
  }

  for($i=0; $i<$show; $i++){
    $item = $items[$i];
    $returned['b'] = $returned['b'] . "][" . $item->link . "|" . $item->title . "|" . date('F j, Y', strtotime($item->pubDate));
  }
  echo json_encode($returned);
?>
