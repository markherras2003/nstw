<?php
 include "db.php";

$jsons = $_POST["jsondata"];
$dataArray = json_decode($jsons, true);
$name = $dataArray["name"];
$gender = $dataArray["gender"];
$organization = $dataArray["organization"];
$event = $dataArray["event"];
$gg="";
$x=1;
foreach($event as $events) {
  $cnt = sizeOf($event);
  if($x==$cnt) {
  $gg = $gg.$events;
  }else{
  $gg = $gg.$events.",";
  }
  $x++;
}
//$event = $gg;
$marketplace = $dataArray["marketplace"];
$cc="";
$y=1;
foreach($marketplace as $marketplaces) {
  $cnts = sizeOf($marketplace);
  if($y==$cnts) {
    $cc = $cc.$marketplaces;
  }else{
    $cc = $cc.$marketplaces.",";
  }
  $y++;
}
//$marketplace=$cc;
$transaction = $dataArray["transaction"];
$pricing = $dataArray["pricing"];
$relationship = $dataArray["relationship"];
$overall = $dataArray["overall"];
$thumbs = $dataArray["thumbs"];
$insert = "INSERT INTO `tbl_register`(`full_name`,`gender`,`organization`,`event`,`marketplace`,`transaction`,`pricing`,`relationship`,`overall`,`thumbs`)";
$insert = $insert." VALUES('".$name."',";
$insert = $insert."'".$gender."',";
$insert = $insert."'".$organization."',";
$insert = $insert."'".$gg."',";
$insert = $insert."'".$cc."',";
$insert = $insert."'".$transaction."',";
$insert = $insert."'".$pricing."',";
$insert = $insert."'".$relationship."',";
$insert = $insert."'".$overall."',";
$insert = $insert."'".$thumbs."')";
$q=mysqli_query($con,$insert);

if($q)
echo "success";
else
echo "error";
  ?>