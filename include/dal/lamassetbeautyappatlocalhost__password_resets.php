<?php
$dalTablepassword_resets = array();
$dalTablepassword_resets["reset_id"] = array("type"=>3,"varname"=>"reset_id", "name" => "reset_id", "autoInc" => "1");
$dalTablepassword_resets["user_id"] = array("type"=>3,"varname"=>"user_id", "name" => "user_id", "autoInc" => "0");
$dalTablepassword_resets["token"] = array("type"=>200,"varname"=>"token", "name" => "token", "autoInc" => "0");
$dalTablepassword_resets["expires_at"] = array("type"=>135,"varname"=>"expires_at", "name" => "expires_at", "autoInc" => "0");
$dalTablepassword_resets["used"] = array("type"=>16,"varname"=>"used", "name" => "used", "autoInc" => "0");
$dalTablepassword_resets["created_at"] = array("type"=>135,"varname"=>"created_at", "name" => "created_at", "autoInc" => "0");
$dalTablepassword_resets["reset_id"]["key"]=true;

$dal_info["lamassetbeautyappatlocalhost__password_resets"] = &$dalTablepassword_resets;
?>