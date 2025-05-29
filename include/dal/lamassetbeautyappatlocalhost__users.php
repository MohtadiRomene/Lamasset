<?php
$dalTableusers = array();
$dalTableusers["user_id"] = array("type"=>3,"varname"=>"user_id", "name" => "user_id", "autoInc" => "1");
$dalTableusers["first_name"] = array("type"=>200,"varname"=>"first_name", "name" => "first_name", "autoInc" => "0");
$dalTableusers["last_name"] = array("type"=>200,"varname"=>"last_name", "name" => "last_name", "autoInc" => "0");
$dalTableusers["email"] = array("type"=>200,"varname"=>"email", "name" => "email", "autoInc" => "0");
$dalTableusers["phone_number"] = array("type"=>200,"varname"=>"phone_number", "name" => "phone_number", "autoInc" => "0");
$dalTableusers["password_hash"] = array("type"=>200,"varname"=>"password_hash", "name" => "password_hash", "autoInc" => "0");
$dalTableusers["is_manager"] = array("type"=>16,"varname"=>"is_manager", "name" => "is_manager", "autoInc" => "0");
$dalTableusers["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTableusers["updated_at"] = array("type"=>135,"varname"=>"updated_at", "name" => "updated_at", "autoInc" => "0");
$dalTableusers["user_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__users"] = &$dalTableusers;
?>