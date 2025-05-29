<?php
$dalTablecategories = array();
$dalTablecategories["category_id"] = array("type"=>3,"varname"=>"category_id", "name" => "category_id", "autoInc" => "1");
$dalTablecategories["name"] = array("type"=>200,"varname"=>"name", "name" => "name", "autoInc" => "0");
$dalTablecategories["description"] = array("type"=>201,"varname"=>"description", "name" => "description", "autoInc" => "0");
$dalTablecategories["icon"] = array("type"=>200,"varname"=>"icon", "name" => "icon", "autoInc" => "0");
$dalTablecategories["is_active"] = array("type"=>16,"varname"=>"is_active", "name" => "is_active", "autoInc" => "0");
$dalTablecategories["display_order"] = array("type"=>3,"varname"=>"display_order", "name" => "display_order", "autoInc" => "0");
$dalTablecategories["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTablecategories["updated_at"] = array("type"=>135,"varname"=>"updated_at", "name" => "updated_at", "autoInc" => "0");
$dalTablecategories["category_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__categories"] = &$dalTablecategories;
?>