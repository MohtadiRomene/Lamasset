<?php
$dalTablereviews = array();
$dalTablereviews["review_id"] = array("type"=>3,"varname"=>"review_id", "name" => "review_id", "autoInc" => "1");
$dalTablereviews["user_id"] = array("type"=>3,"varname"=>"user_id", "name" => "user_id", "autoInc" => "0");
$dalTablereviews["center_id"] = array("type"=>3,"varname"=>"center_id", "name" => "center_id", "autoInc" => "0");
$dalTablereviews["reservation_id"] = array("type"=>3,"varname"=>"reservation_id", "name" => "reservation_id", "autoInc" => "0");
$dalTablereviews["rating"] = array("type"=>16,"varname"=>"rating", "name" => "rating", "autoInc" => "0");
$dalTablereviews["comment"] = array("type"=>201,"varname"=>"comment", "name" => "comment", "autoInc" => "0");
$dalTablereviews["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTablereviews["review_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__reviews"] = &$dalTablereviews;
?>