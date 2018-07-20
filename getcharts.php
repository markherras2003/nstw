<?php
include "db.php";
$q ='';

$posting_type =$_POST["type"]; //$_GET["type"];//
$data=array();

if ($posting_type=="Gender") {
$q=mysqli_query($con,"SELECT fngetGender('Male') AS malecount , fngetGender('Female') AS femalecount FROM `tbl_register` LIMIT 1");
}
if ($posting_type=="Organization") {
$q=mysqli_query($con,"SELECT `fngetOrganization`(1) AS academe,`fngetOrganization`(2) AS govtagency ,
`fngetOrganization`(3) AS industry, `fngetOrganization`(4) AS peoplesorg,`fngetOrganization`(5) AS individual   FROM `tbl_register` LIMIT 1");
}
if ($posting_type=="Event") {
$q=mysqli_query($con,"CALL spGetDynamicChart('event')");
}
if ($posting_type=="Marketplace") {
$q=mysqli_query($con,"CALL spGetDynamicChart('marketplace')");
  }
if ($posting_type=="Transaction") {
  $q=mysqli_query($con,"SELECT 
  FORMAT((fngetFeedback(1,'transaction')) / COUNT(*), 2) * 100 AS `notsatisfied`,
  FORMAT((fngetFeedback(2,'transaction')) / COUNT(*), 2) * 100 AS `somewhatsatisfied`,
  FORMAT((fngetFeedback(3,'transaction')) / COUNT(*), 2) * 100 AS `neutral`,
  FORMAT((fngetFeedback(4,'transaction')) / COUNT(*), 2) * 100 AS`satisfied`,
  FORMAT((fngetFeedback(5,'transaction')) / COUNT(*), 2) * 100 AS `verysatisfied`,
  COUNT(*) AS respondents
   FROM `tbl_register` WHERE `transaction`<>0  AND `transaction`<>6");
}
if ($posting_type=="Pricing") {
  $q=mysqli_query($con,"SELECT 
  FORMAT((fngetFeedback(1,'pricing')) / COUNT(*), 2) * 100 AS `notsatisfied`,
  FORMAT((fngetFeedback(2,'pricing')) / COUNT(*), 2) * 100 AS `somewhatsatisfied`,
  FORMAT((fngetFeedback(3,'pricing')) / COUNT(*), 2) * 100 AS`neutral`,
  FORMAT((fngetFeedback(4,'pricing')) / COUNT(*), 2) * 100 AS`satisfied`,
  FORMAT((fngetFeedback(5,'pricing')) / COUNT(*), 2) * 100 AS `verysatisfied`,
  COUNT(*) AS respondents
   FROM `tbl_register` WHERE `pricing`<>0 AND `pricing`<>6");
}
if ($posting_type=="Relationship") {
  $q=mysqli_query($con,"SELECT 
  FORMAT((fngetFeedback(1,'relationship')) / COUNT(*), 2) * 100 AS `notsatisfied`,
  FORMAT((fngetFeedback(2,'relationship')) / COUNT(*), 2) * 100 AS `somewhatsatisfied`,
  FORMAT((fngetFeedback(3,'relationship')) / COUNT(*), 2) * 100 AS `neutral`,
  FORMAT((fngetFeedback(4,'relationship')) / COUNT(*), 2) * 100 AS`satisfied`,
  FORMAT((fngetFeedback(5,'relationship')) / COUNT(*), 2) * 100 AS `verysatisfied`,
  COUNT(*) AS respondents
   FROM `tbl_register` WHERE `relationship`<>0 AND `relationship`<>6");
}
if ($posting_type=="Overall") {
  $q=mysqli_query($con,"SELECT 
  FORMAT((fngetFeedback(1,'overall')) / COUNT(*), 2) * 100 AS `notsatisfied`,
  FORMAT((fngetFeedback(2,'overall')) / COUNT(*), 2) * 100 AS `somewhatsatisfied`,
  FORMAT((fngetFeedback(3,'overall')) / COUNT(*), 2) * 100 AS `neutral`,
  FORMAT((fngetFeedback(4,'overall')) / COUNT(*), 2) * 100 AS`satisfied`,
  FORMAT((fngetFeedback(5,'overall')) / COUNT(*), 2) * 100 AS `verysatisfied`,
  COUNT(*) AS respondents
   FROM `tbl_register`");
}


if ($posting_type=="Thumbs") {
  $q=mysqli_query($con,"SELECT 
  FORMAT((fngetFeedback(0,'thumbs')) / COUNT(*), 2) * 100 AS `Dislike`,
  FORMAT((fngetFeedback(1,'thumbs')) / COUNT(*), 2) * 100 AS `Like`,
  COUNT(*) AS respondents
   FROM `tbl_register`");
  }

  if ($posting_type=="Attended") {
    $q=mysqli_query($con,"SELECT 
    FORMAT((fngetFeedback(0,'attended')) / COUNT(*), 2) * 100 AS `notattended`,
    FORMAT((fngetFeedback(1,'attended')) / COUNT(*), 2) * 100 AS `attended`,
    COUNT(*) AS respondents
     FROM `tbl_register`");
    }
 if ($posting_type=="Purchase") {
      $q=mysqli_query($con,"SELECT 
      FORMAT((fngetFeedback(0,'purchase')) / COUNT(*), 2) * 100 AS `nopurchase`,
      FORMAT((fngetFeedback(1,'purchase')) / COUNT(*), 2) * 100 AS `purchase`,
      COUNT(*) AS respondents
       FROM `tbl_register`");
  }

  if ($posting_type=="Reactions") {
     $q=mysqli_query($con,"SELECT IF(TRIM(full_name)='','Visitor',TRIM(full_name)) AS full_name, TRIM(reactions) AS reactions  FROM `tbl_register` 
     WHERE reactions<>''");
 }



while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
}
echo json_encode($data)
  ?>