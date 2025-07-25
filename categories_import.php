<?php
@ini_set("display_errors","1");
@ini_set("display_startup_errors","1");
require_once("include/dbcommon.php");
header("Expires: Thu, 01 Jan 1970 00:00:01 GMT"); 

set_time_limit(600);

require_once("include/categories_variables.php");
require_once("include/import_functions.php");
require_once('classes/importpage.php');

if( Security::hasLogin() ) {
	if( !Security::processPageSecurity( $strtablename, 'I' ) )
		return;
}


require_once('include/xtempl.php');
$xt = new Xtempl();

//an array of params for ImportPage constructor
$params = array();
$params["id"] = postvalue_number("id");
$params["xt"] = &$xt;
$params["tName"] = $strTableName;
$params["action"] = postvalue("a");
$params["pageType"] = PAGE_IMPORT;
$params["pageName"] = postvalue("page");
$params["needSearchClauseObj"] = false;
$params["strOriginalTableName"] = $strOriginalTableName;

if( $params["action"] == "importPreview" )
{
	$params["importType"] = postvalue("importType");
	$params["importText"] = postvalue("importText");
	$params["useXHR"] = postvalue("useXHR");
} 
elseif( $params["action"] == "importData" )
{
	$params["importData"] = my_json_decode( postvalue("importData") );
}

$params["masterTable"] = postvalue("mastertable");
if( $params["masterTable"] )
	$params["masterKeysReq"] = RunnerPage::readMasterKeysFromRequest();

$pageObject = new ImportPage($params);
$pageObject->init();

$pageObject->process();	

?>