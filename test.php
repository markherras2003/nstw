<?php
$datetime1 ='2018-06-20 15:00:00';
$datetime2 ='2018-06-21 08:00:00';

echo Timein($datetime1,$datetime2);

function Timein($dt1,$dt2)
{
    $date1 = new DateTime($dt1);
    $date2 = new DateTime($dt2);
    $endDaytime = '18:00:00';
    $starMorningTime = '06:00:00';
    $interval = $date1->diff($date2);
    echo $interval->h;
    //$elapsed = $interval->$interval->format('%y years %m months %a days %h hours %i minutes %s seconds');

    //return $elapsed;
}
?>