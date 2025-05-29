<?php
$dalTableopening_hours = array();
$dalTableopening_hours["opening_id"] = array("type"=>3,"varname"=>"opening_id", "name" => "opening_id", "autoInc" => "1");
$dalTableopening_hours["center_id"] = array("type"=>3,"varname"=>"center_id", "name" => "center_id", "autoInc" => "0");
$dalTableopening_hours["day_of_week"] = array("type"=>16,"varname"=>"day_of_week", "name" => "day_of_week", "autoInc" => "0");
$dalTableopening_hours["opening_time"] = array("type"=>134,"varname"=>"opening_time", "name" => "opening_time", "autoInc" => "0");
$dalTableopening_hours["closing_time"] = array("type"=>134,"varname"=>"closing_time", "name" => "closing_time", "autoInc" => "0");
$dalTableopening_hours["opening_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__opening_hours"] = &$dalTableopening_hours;
?>