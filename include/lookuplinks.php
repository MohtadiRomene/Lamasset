<?php

/**
* getLookupMainTableSettings - tests whether the lookup link exists between the tables
*
*  returns array with ProjectSettings class for main table if the link exists in project settings.
*  returns NULL otherwise
*/
function getLookupMainTableSettings($lookupTable, $mainTableShortName, $mainField, $desiredPage = "")
{
	global $lookupTableLinks;
	if(!isset($lookupTableLinks[$lookupTable]))
		return null;
	if(!isset($lookupTableLinks[$lookupTable][$mainTableShortName.".".$mainField]))
		return null;
	$arr = &$lookupTableLinks[$lookupTable][$mainTableShortName.".".$mainField];
	$effectivePage = $desiredPage;
	if(!isset($arr[$effectivePage]))
	{
		$effectivePage = PAGE_EDIT;
		if(!isset($arr[$effectivePage]))
		{
			if($desiredPage == "" && 0 < count($arr))
			{
				$effectivePage = $arr[0];
			}
			else
				return null;
		}
	}
	return new ProjectSettings($arr[$effectivePage]["table"], $effectivePage);
}

/** 
* $lookupTableLinks array stores all lookup links between tables in the project
*/
function InitLookupLinks()
{
	global $lookupTableLinks;

	$lookupTableLinks = array();

		if( !isset( $lookupTableLinks["users"] ) ) {
			$lookupTableLinks["users"] = array();
		}
		if( !isset( $lookupTableLinks["users"]["beauty_centers.manager_id"] )) {
			$lookupTableLinks["users"]["beauty_centers.manager_id"] = array();
		}
		$lookupTableLinks["users"]["beauty_centers.manager_id"]["edit"] = array("table" => "beauty_centers", "field" => "manager_id", "page" => "edit");
		if( !isset( $lookupTableLinks["users"] ) ) {
			$lookupTableLinks["users"] = array();
		}
		if( !isset( $lookupTableLinks["users"]["reservations.user_id"] )) {
			$lookupTableLinks["users"]["reservations.user_id"] = array();
		}
		$lookupTableLinks["users"]["reservations.user_id"]["edit"] = array("table" => "reservations", "field" => "user_id", "page" => "edit");
		if( !isset( $lookupTableLinks["services"] ) ) {
			$lookupTableLinks["services"] = array();
		}
		if( !isset( $lookupTableLinks["services"]["reservations.service_id"] )) {
			$lookupTableLinks["services"]["reservations.service_id"] = array();
		}
		$lookupTableLinks["services"]["reservations.service_id"]["edit"] = array("table" => "reservations", "field" => "service_id", "page" => "edit");
		if( !isset( $lookupTableLinks["beauty_centers"] ) ) {
			$lookupTableLinks["beauty_centers"] = array();
		}
		if( !isset( $lookupTableLinks["beauty_centers"]["reservations.center_id"] )) {
			$lookupTableLinks["beauty_centers"]["reservations.center_id"] = array();
		}
		$lookupTableLinks["beauty_centers"]["reservations.center_id"]["edit"] = array("table" => "reservations", "field" => "center_id", "page" => "edit");
		if( !isset( $lookupTableLinks["beauty_centers"] ) ) {
			$lookupTableLinks["beauty_centers"] = array();
		}
		if( !isset( $lookupTableLinks["beauty_centers"]["services.center_id"] )) {
			$lookupTableLinks["beauty_centers"]["services.center_id"] = array();
		}
		$lookupTableLinks["beauty_centers"]["services.center_id"]["edit"] = array("table" => "services", "field" => "center_id", "page" => "edit");
		if( !isset( $lookupTableLinks["categories"] ) ) {
			$lookupTableLinks["categories"] = array();
		}
		if( !isset( $lookupTableLinks["categories"]["services.category_id"] )) {
			$lookupTableLinks["categories"]["services.category_id"] = array();
		}
		$lookupTableLinks["categories"]["services.category_id"]["edit"] = array("table" => "services", "field" => "category_id", "page" => "edit");
		if( !isset( $lookupTableLinks["beauty_centers"] ) ) {
			$lookupTableLinks["beauty_centers"] = array();
		}
		if( !isset( $lookupTableLinks["beauty_centers"]["opening_hours.center_id"] )) {
			$lookupTableLinks["beauty_centers"]["opening_hours.center_id"] = array();
		}
		$lookupTableLinks["beauty_centers"]["opening_hours.center_id"]["edit"] = array("table" => "opening_hours", "field" => "center_id", "page" => "edit");
}

?>