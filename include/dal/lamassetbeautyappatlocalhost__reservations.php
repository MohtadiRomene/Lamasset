<?php
$dalTablereservations = array();
$dalTablereservations["reservation_id"] = array("type"=>3,"varname"=>"reservation_id", "name" => "reservation_id", "autoInc" => "1");
$dalTablereservations["user_id"] = array("type"=>3,"varname"=>"user_id", "name" => "user_id", "autoInc" => "0");
$dalTablereservations["service_id"] = array("type"=>3,"varname"=>"service_id", "name" => "service_id", "autoInc" => "0");
$dalTablereservations["center_id"] = array("type"=>3,"varname"=>"center_id", "name" => "center_id", "autoInc" => "0");
$dalTablereservations["reservation_date"] = array("type"=>7,"varname"=>"reservation_date", "name" => "reservation_date", "autoInc" => "0");
$dalTablereservations["start_time"] = array("type"=>134,"varname"=>"start_time", "name" => "start_time", "autoInc" => "0");
$dalTablereservations["end_time"] = array("type"=>134,"varname"=>"end_time", "name" => "end_time", "autoInc" => "0");
$dalTablereservations["status"] = array("type"=>129,"varname"=>"status", "name" => "status", "autoInc" => "0");
$dalTablereservations["notes"] = array("type"=>201,"varname"=>"notes", "name" => "notes", "autoInc" => "0");
$dalTablereservations["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTablereservations["updated_at"] = array("type"=>135,"varname"=>"updated_at", "name" => "updated_at", "autoInc" => "0");
$dalTablereservations["reservation_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__reservations"] = &$dalTablereservations;
?>