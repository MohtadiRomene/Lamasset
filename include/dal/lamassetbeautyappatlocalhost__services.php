<?php
$dalTableservices = array();
$dalTableservices["service_id"] = array("type"=>3,"varname"=>"service_id", "name" => "service_id", "autoInc" => "1");
$dalTableservices["center_id"] = array("type"=>3,"varname"=>"center_id", "name" => "center_id", "autoInc" => "0");
$dalTableservices["category_id"] = array("type"=>3,"varname"=>"category_id", "name" => "category_id", "autoInc" => "0");
$dalTableservices["name"] = array("type"=>200,"varname"=>"name", "name" => "name", "autoInc" => "0");
$dalTableservices["description"] = array("type"=>201,"varname"=>"description", "name" => "description", "autoInc" => "0");
$dalTableservices["duration_min"] = array("type"=>3,"varname"=>"duration_min", "name" => "duration_min", "autoInc" => "0");
$dalTableservices["price"] = array("type"=>14,"varname"=>"price", "name" => "price", "autoInc" => "0");
$dalTableservices["is_popular"] = array("type"=>16,"varname"=>"is_popular", "name" => "is_popular", "autoInc" => "0");
$dalTableservices["disponibilite"] = array("type"=>16,"varname"=>"disponibilite", "name" => "disponibilite", "autoInc" => "0");
$dalTableservices["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTableservices["updated_at"] = array("type"=>135,"varname"=>"updated_at", "name" => "updated_at", "autoInc" => "0");
$dalTableservices["service_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__services"] = &$dalTableservices;
?>