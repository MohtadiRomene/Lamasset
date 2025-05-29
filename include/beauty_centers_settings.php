<?php
$tdatabeauty_centers = array();
$tdatabeauty_centers[".searchableFields"] = array();
$tdatabeauty_centers[".ShortName"] = "beauty_centers";
$tdatabeauty_centers[".OwnerID"] = "";
$tdatabeauty_centers[".OriginalTable"] = "beauty_centers";


$tdatabeauty_centers[".pagesByType"] = my_json_decode( "{\"add\":[\"add\"],\"edit\":[\"edit\"],\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"masterlist\":[\"masterlist\"],\"masterprint\":[\"masterprint\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" );
$tdatabeauty_centers[".originalPagesByType"] = $tdatabeauty_centers[".pagesByType"];
$tdatabeauty_centers[".pages"] = types2pages( my_json_decode( "{\"add\":[\"add\"],\"edit\":[\"edit\"],\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"masterlist\":[\"masterlist\"],\"masterprint\":[\"masterprint\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" ) );
$tdatabeauty_centers[".originalPages"] = $tdatabeauty_centers[".pages"];
$tdatabeauty_centers[".defaultPages"] = my_json_decode( "{\"add\":\"add\",\"edit\":\"edit\",\"export\":\"export\",\"import\":\"import\",\"list\":\"list\",\"masterlist\":\"masterlist\",\"masterprint\":\"masterprint\",\"print\":\"print\",\"search\":\"search\",\"view\":\"view\"}" );
$tdatabeauty_centers[".originalDefaultPages"] = $tdatabeauty_centers[".defaultPages"];

//	field labels
$fieldLabelsbeauty_centers = array();
$fieldToolTipsbeauty_centers = array();
$pageTitlesbeauty_centers = array();
$placeHoldersbeauty_centers = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelsbeauty_centers["English"] = array();
	$fieldToolTipsbeauty_centers["English"] = array();
	$placeHoldersbeauty_centers["English"] = array();
	$pageTitlesbeauty_centers["English"] = array();
	$fieldLabelsbeauty_centers["English"]["center_id"] = "Center Id";
	$fieldToolTipsbeauty_centers["English"]["center_id"] = "";
	$placeHoldersbeauty_centers["English"]["center_id"] = "";
	$fieldLabelsbeauty_centers["English"]["name"] = "Name";
	$fieldToolTipsbeauty_centers["English"]["name"] = "";
	$placeHoldersbeauty_centers["English"]["name"] = "";
	$fieldLabelsbeauty_centers["English"]["description"] = "Description";
	$fieldToolTipsbeauty_centers["English"]["description"] = "";
	$placeHoldersbeauty_centers["English"]["description"] = "";
	$fieldLabelsbeauty_centers["English"]["address"] = "Address";
	$fieldToolTipsbeauty_centers["English"]["address"] = "";
	$placeHoldersbeauty_centers["English"]["address"] = "";
	$fieldLabelsbeauty_centers["English"]["city"] = "City";
	$fieldToolTipsbeauty_centers["English"]["city"] = "";
	$placeHoldersbeauty_centers["English"]["city"] = "";
	$fieldLabelsbeauty_centers["English"]["postal_code"] = "Postal Code";
	$fieldToolTipsbeauty_centers["English"]["postal_code"] = "";
	$placeHoldersbeauty_centers["English"]["postal_code"] = "";
	$fieldLabelsbeauty_centers["English"]["latitude"] = "Latitude";
	$fieldToolTipsbeauty_centers["English"]["latitude"] = "";
	$placeHoldersbeauty_centers["English"]["latitude"] = "";
	$fieldLabelsbeauty_centers["English"]["longitude"] = "Longitude";
	$fieldToolTipsbeauty_centers["English"]["longitude"] = "";
	$placeHoldersbeauty_centers["English"]["longitude"] = "";
	$fieldLabelsbeauty_centers["English"]["average_rating"] = "Average Rating";
	$fieldToolTipsbeauty_centers["English"]["average_rating"] = "";
	$placeHoldersbeauty_centers["English"]["average_rating"] = "";
	$fieldLabelsbeauty_centers["English"]["manager_id"] = "Manager Id";
	$fieldToolTipsbeauty_centers["English"]["manager_id"] = "";
	$placeHoldersbeauty_centers["English"]["manager_id"] = "";
	$fieldLabelsbeauty_centers["English"]["disponibilite"] = "Disponibilite";
	$fieldToolTipsbeauty_centers["English"]["disponibilite"] = "";
	$placeHoldersbeauty_centers["English"]["disponibilite"] = "";
	$fieldLabelsbeauty_centers["English"]["created_at"] = "Created At";
	$fieldToolTipsbeauty_centers["English"]["created_at"] = "";
	$placeHoldersbeauty_centers["English"]["created_at"] = "";
	$fieldLabelsbeauty_centers["English"]["updated_at"] = "Updated At";
	$fieldToolTipsbeauty_centers["English"]["updated_at"] = "";
	$placeHoldersbeauty_centers["English"]["updated_at"] = "";
	if (count($fieldToolTipsbeauty_centers["English"]))
		$tdatabeauty_centers[".isUseToolTips"] = true;
}


	$tdatabeauty_centers[".NCSearch"] = true;



$tdatabeauty_centers[".shortTableName"] = "beauty_centers";
$tdatabeauty_centers[".nSecOptions"] = 0;

$tdatabeauty_centers[".mainTableOwnerID"] = "";
$tdatabeauty_centers[".entityType"] = 0;
$tdatabeauty_centers[".connId"] = "lamassetbeautyappatlocalhost";


$tdatabeauty_centers[".strOriginalTableName"] = "beauty_centers";

	



$tdatabeauty_centers[".showAddInPopup"] = false;

$tdatabeauty_centers[".showEditInPopup"] = false;

$tdatabeauty_centers[".showViewInPopup"] = false;

$tdatabeauty_centers[".listAjax"] = false;
//	temporary
//$tdatabeauty_centers[".listAjax"] = false;

	$tdatabeauty_centers[".audit"] = false;

	$tdatabeauty_centers[".locking"] = false;


$pages = $tdatabeauty_centers[".defaultPages"];

if( $pages[PAGE_EDIT] ) {
	$tdatabeauty_centers[".edit"] = true;
	$tdatabeauty_centers[".afterEditAction"] = 1;
	$tdatabeauty_centers[".closePopupAfterEdit"] = 1;
	$tdatabeauty_centers[".afterEditActionDetTable"] = "";
}

if( $pages[PAGE_ADD] ) {
$tdatabeauty_centers[".add"] = true;
$tdatabeauty_centers[".afterAddAction"] = 1;
$tdatabeauty_centers[".closePopupAfterAdd"] = 1;
$tdatabeauty_centers[".afterAddActionDetTable"] = "";
}

if( $pages[PAGE_LIST] ) {
	$tdatabeauty_centers[".list"] = true;
}



$tdatabeauty_centers[".strSortControlSettingsJSON"] = "";




if( $pages[PAGE_VIEW] ) {
$tdatabeauty_centers[".view"] = true;
}

if( $pages[PAGE_IMPORT] ) {
$tdatabeauty_centers[".import"] = true;
}

if( $pages[PAGE_EXPORT] ) {
$tdatabeauty_centers[".exportTo"] = true;
}

if( $pages[PAGE_PRINT] ) {
$tdatabeauty_centers[".printFriendly"] = true;
}



$tdatabeauty_centers[".showSimpleSearchOptions"] = true; // temp fix #13449

// Allow Show/Hide Fields in GRID
$tdatabeauty_centers[".allowShowHideFields"] = true; // temp fix #13449
//

// Allow Fields Reordering in GRID
$tdatabeauty_centers[".allowFieldsReordering"] = true; // temp fix #13449
//

$tdatabeauty_centers[".isUseAjaxSuggest"] = true;





$tdatabeauty_centers[".ajaxCodeSnippetAdded"] = false;

$tdatabeauty_centers[".buttonsAdded"] = false;

$tdatabeauty_centers[".addPageEvents"] = false;

// use timepicker for search panel
$tdatabeauty_centers[".isUseTimeForSearch"] = false;


$tdatabeauty_centers[".badgeColor"] = "4169E1";


$tdatabeauty_centers[".allSearchFields"] = array();
$tdatabeauty_centers[".filterFields"] = array();
$tdatabeauty_centers[".requiredSearchFields"] = array();

$tdatabeauty_centers[".googleLikeFields"] = array();
$tdatabeauty_centers[".googleLikeFields"][] = "center_id";
$tdatabeauty_centers[".googleLikeFields"][] = "name";
$tdatabeauty_centers[".googleLikeFields"][] = "description";
$tdatabeauty_centers[".googleLikeFields"][] = "address";
$tdatabeauty_centers[".googleLikeFields"][] = "city";
$tdatabeauty_centers[".googleLikeFields"][] = "postal_code";
$tdatabeauty_centers[".googleLikeFields"][] = "latitude";
$tdatabeauty_centers[".googleLikeFields"][] = "longitude";
$tdatabeauty_centers[".googleLikeFields"][] = "average_rating";
$tdatabeauty_centers[".googleLikeFields"][] = "manager_id";
$tdatabeauty_centers[".googleLikeFields"][] = "disponibilite";
$tdatabeauty_centers[".googleLikeFields"][] = "created_at";
$tdatabeauty_centers[".googleLikeFields"][] = "updated_at";



$tdatabeauty_centers[".tableType"] = "list";

$tdatabeauty_centers[".printerPageOrientation"] = 0;
$tdatabeauty_centers[".nPrinterPageScale"] = 100;

$tdatabeauty_centers[".nPrinterSplitRecords"] = 40;

$tdatabeauty_centers[".geocodingEnabled"] = false;










$tdatabeauty_centers[".pageSize"] = 20;

$tdatabeauty_centers[".warnLeavingPages"] = true;



$tstrOrderBy = "";
$tdatabeauty_centers[".strOrderBy"] = $tstrOrderBy;

$tdatabeauty_centers[".orderindexes"] = array();


$tdatabeauty_centers[".sqlHead"] = "SELECT center_id,  	name,  	description,  	address,  	city,  	postal_code,  	latitude,  	longitude,  	average_rating,  	manager_id,  	disponibilite,  	created_at,  	updated_at";
$tdatabeauty_centers[".sqlFrom"] = "FROM beauty_centers";
$tdatabeauty_centers[".sqlWhereExpr"] = "";
$tdatabeauty_centers[".sqlTail"] = "";










//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdatabeauty_centers[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdatabeauty_centers[".arrGroupsPerPage"] = $arrGPP;

$tdatabeauty_centers[".highlightSearchResults"] = true;

$tableKeysbeauty_centers = array();
$tableKeysbeauty_centers[] = "center_id";
$tdatabeauty_centers[".Keys"] = $tableKeysbeauty_centers;


$tdatabeauty_centers[".hideMobileList"] = array();




//	center_id
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 1;
	$fdata["strName"] = "center_id";
	$fdata["GoodName"] = "center_id";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","center_id");
	$fdata["FieldType"] = 3;


		$fdata["AutoInc"] = true;

	
			

		$fdata["strField"] = "center_id";

		$fdata["sourceSingle"] = "center_id";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "center_id";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



		$edata["IsRequired"] = true;

	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
						$edata["validateAs"]["basicValidate"][] = "IsRequired";
		
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["center_id"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "center_id";
//	name
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "name";
	$fdata["GoodName"] = "name";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","name");
	$fdata["FieldType"] = 200;


	
	
			

		$fdata["strField"] = "name";

		$fdata["sourceSingle"] = "name";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "name";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
			$edata["EditParams"].= " maxlength=100";

		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["name"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "name";
//	description
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "description";
	$fdata["GoodName"] = "description";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","description");
	$fdata["FieldType"] = 201;


	
	
			

		$fdata["strField"] = "description";

		$fdata["sourceSingle"] = "description";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "description";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text area");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 0;

	
	
	
				$edata["nRows"] = 100;
			$edata["nCols"] = 200;

	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

		$edata["CreateThumbnail"] = true;
	$edata["StrThumbnail"] = "th";
			$edata["ThumbnailSize"] = 600;

			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["description"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "description";
//	address
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 4;
	$fdata["strName"] = "address";
	$fdata["GoodName"] = "address";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","address");
	$fdata["FieldType"] = 200;


	
	
			

		$fdata["strField"] = "address";

		$fdata["sourceSingle"] = "address";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "address";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
			$edata["EditParams"].= " maxlength=255";

		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["address"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "address";
//	city
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "city";
	$fdata["GoodName"] = "city";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","city");
	$fdata["FieldType"] = 200;


	
	
			

		$fdata["strField"] = "city";

		$fdata["sourceSingle"] = "city";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "city";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
			$edata["EditParams"].= " maxlength=50";

		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["city"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "city";
//	postal_code
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 6;
	$fdata["strName"] = "postal_code";
	$fdata["GoodName"] = "postal_code";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","postal_code");
	$fdata["FieldType"] = 200;


	
	
			

		$fdata["strField"] = "postal_code";

		$fdata["sourceSingle"] = "postal_code";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "postal_code";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
			$edata["EditParams"].= " maxlength=20";

		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["postal_code"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "postal_code";
//	latitude
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 7;
	$fdata["strName"] = "latitude";
	$fdata["GoodName"] = "latitude";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","latitude");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "latitude";

		$fdata["sourceSingle"] = "latitude";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "latitude";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Number");

	
	
	
	
	
	
	
		$vdata["DecimalDigits"] = 8;

	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
							
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["latitude"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "latitude";
//	longitude
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 8;
	$fdata["strName"] = "longitude";
	$fdata["GoodName"] = "longitude";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","longitude");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "longitude";

		$fdata["sourceSingle"] = "longitude";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "longitude";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Number");

	
	
	
	
	
	
	
		$vdata["DecimalDigits"] = 8;

	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
							
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["longitude"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "longitude";
//	average_rating
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 9;
	$fdata["strName"] = "average_rating";
	$fdata["GoodName"] = "average_rating";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","average_rating");
	$fdata["FieldType"] = 14;


	
	
			

		$fdata["strField"] = "average_rating";

		$fdata["sourceSingle"] = "average_rating";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "average_rating";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Number");

	
	
	
	
	
	
	
		$vdata["DecimalDigits"] = 2;

	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
							
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["average_rating"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "average_rating";
//	manager_id
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 10;
	$fdata["strName"] = "manager_id";
	$fdata["GoodName"] = "manager_id";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","manager_id");
	$fdata["FieldType"] = 3;


	
	
			

		$fdata["strField"] = "manager_id";

		$fdata["sourceSingle"] = "manager_id";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "manager_id";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Lookup wizard");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	

// Begin Lookup settings
				$edata["LookupType"] = 2;
	$edata["LookupTable"] = "users";
			$edata["autoCompleteFieldsOnEdit"] = 0;
	$edata["autoCompleteFields"] = array();
		$edata["LCType"] = 0;

	
		
	$edata["LinkField"] = "user_id";
	$edata["LinkFieldType"] = 3;
	$edata["DisplayField"] = "first_name";

	

	
	$edata["LookupOrderBy"] = "";

	
	
	
	

	
	
		$edata["SelectSize"] = 1;

// End Lookup Settings


	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
							
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Equals";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["manager_id"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "manager_id";
//	disponibilite
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 11;
	$fdata["strName"] = "disponibilite";
	$fdata["GoodName"] = "disponibilite";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","disponibilite");
	$fdata["FieldType"] = 16;


	
	
			

		$fdata["strField"] = "disponibilite";

		$fdata["sourceSingle"] = "disponibilite";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "disponibilite";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Text field");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
			$edata["HTML5InuptType"] = "text";

		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
				$edata["validateAs"]["basicValidate"][] = getJsValidatorName("Number");
							
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Contains";

			// the default search options list
				$fdata["searchOptionsList"] = array("Contains", "Equals", "Starts with", "More than", "Less than", "Between", "Empty", NOT_EMPTY);
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["disponibilite"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "disponibilite";
//	created_at
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 12;
	$fdata["strName"] = "created_at";
	$fdata["GoodName"] = "created_at";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","created_at");
	$fdata["FieldType"] = 135;


	
	
			

		$fdata["strField"] = "created_at";

		$fdata["sourceSingle"] = "created_at";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "created_at";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Short Date");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Date");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
		$edata["DateEditType"] = 13;
	$edata["InitialYearFactor"] = 100;
	$edata["LastYearFactor"] = 10;

	
	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Equals";

			// the default search options list
				$fdata["searchOptionsList"] = array("Equals", "More than", "Less than", "Between", EMPTY_SEARCH, NOT_EMPTY );
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["created_at"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "created_at";
//	updated_at
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 13;
	$fdata["strName"] = "updated_at";
	$fdata["GoodName"] = "updated_at";
	$fdata["ownerTable"] = "beauty_centers";
	$fdata["Label"] = GetFieldLabel("beauty_centers","updated_at");
	$fdata["FieldType"] = 135;


	
	
			

		$fdata["strField"] = "updated_at";

		$fdata["sourceSingle"] = "updated_at";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "updated_at";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Short Date");

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Date");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



	
	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
		$edata["DateEditType"] = 13;
	$edata["InitialYearFactor"] = 100;
	$edata["LastYearFactor"] = 10;

	
	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
	
	
//	End validation

	
			
	
	
	
	$fdata["EditFormats"]["edit"] = $edata;
//	End Edit Formats


	$fdata["isSeparate"] = false;




// the field's search options settings
		$fdata["defaultSearchOption"] = "Equals";

			// the default search options list
				$fdata["searchOptionsList"] = array("Equals", "More than", "Less than", "Between", EMPTY_SEARCH, NOT_EMPTY );
// the end of search options settings


//Filters settings
	$fdata["filterTotals"] = 0;
		$fdata["filterMultiSelect"] = 0;
			$fdata["filterFormat"] = "Values list";
		$fdata["showCollapsed"] = false;

		$fdata["sortValueType"] = 0;
		$fdata["numberOfVisibleItems"] = 10;

		$fdata["filterBy"] = 0;

	

	
	
//end of Filters settings


	$tdatabeauty_centers["updated_at"] = $fdata;
		$tdatabeauty_centers[".searchableFields"][] = "updated_at";


$tables_data["beauty_centers"]=&$tdatabeauty_centers;
$field_labels["beauty_centers"] = &$fieldLabelsbeauty_centers;
$fieldToolTips["beauty_centers"] = &$fieldToolTipsbeauty_centers;
$placeHolders["beauty_centers"] = &$placeHoldersbeauty_centers;
$page_titles["beauty_centers"] = &$pageTitlesbeauty_centers;


changeTextControlsToDate( "beauty_centers" );

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)

//if !@TABLE.bReportCrossTab

$detailsTablesData["beauty_centers"] = array();
//	reservations
	
	

		$dIndex = 0;
	$detailsParam = array();
	$detailsParam["dDataSourceTable"]="reservations";
		$detailsParam["dOriginalTable"] = "reservations";



		
		$detailsParam["dType"]=PAGE_LIST;
	$detailsParam["dShortTable"] = "reservations";
	$detailsParam["dCaptionTable"] = GetTableCaption("reservations");
	$detailsParam["masterKeys"] =array();
	$detailsParam["detailKeys"] =array();


		
	$detailsTablesData["beauty_centers"][$dIndex] = $detailsParam;

	
		$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"][]="center_id";

				$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"][]="center_id";
//	services
	
	

		$dIndex = 1;
	$detailsParam = array();
	$detailsParam["dDataSourceTable"]="services";
		$detailsParam["dOriginalTable"] = "services";



		
		$detailsParam["dType"]=PAGE_LIST;
	$detailsParam["dShortTable"] = "services";
	$detailsParam["dCaptionTable"] = GetTableCaption("services");
	$detailsParam["masterKeys"] =array();
	$detailsParam["detailKeys"] =array();


		
	$detailsTablesData["beauty_centers"][$dIndex] = $detailsParam;

	
		$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"][]="center_id";

				$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"][]="center_id";
//	opening_hours
	
	

		$dIndex = 2;
	$detailsParam = array();
	$detailsParam["dDataSourceTable"]="opening_hours";
		$detailsParam["dOriginalTable"] = "opening_hours";



		
		$detailsParam["dType"]=PAGE_LIST;
	$detailsParam["dShortTable"] = "opening_hours";
	$detailsParam["dCaptionTable"] = GetTableCaption("opening_hours");
	$detailsParam["masterKeys"] =array();
	$detailsParam["detailKeys"] =array();


		
	$detailsTablesData["beauty_centers"][$dIndex] = $detailsParam;

	
		$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["masterKeys"][]="center_id";

				$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"] = array();

	$detailsTablesData["beauty_centers"][$dIndex]["detailKeys"][]="center_id";
//endif

// tables which are master tables for current table (detail)
$masterTablesData["beauty_centers"] = array();



	
	//if !@t.bReportCrossTab
			$strOriginalDetailsTable="users";
	$masterParams = array();
	$masterParams["mDataSourceTable"]="users";
	$masterParams["mOriginalTable"]= $strOriginalDetailsTable;
	$masterParams["mShortTable"]= "users";
	$masterParams["masterKeys"]= array();
	$masterParams["detailKeys"]= array();

	$masterParams["type"] = PAGE_LIST;
					$masterTablesData["beauty_centers"][0] = $masterParams;
				$masterTablesData["beauty_centers"][0]["masterKeys"] = array();
	$masterTablesData["beauty_centers"][0]["masterKeys"][]="user_id";
				$masterTablesData["beauty_centers"][0]["detailKeys"] = array();
	$masterTablesData["beauty_centers"][0]["detailKeys"][]="manager_id";
		
	//endif
// -----------------end  prepare master-details data arrays ------------------------------//



require_once(getabspath("classes/sql.php"));











function createSqlQuery_beauty_centers()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "center_id,  	name,  	description,  	address,  	city,  	postal_code,  	latitude,  	longitude,  	average_rating,  	manager_id,  	disponibilite,  	created_at,  	updated_at";
$proto0["m_strFrom"] = "FROM beauty_centers";
$proto0["m_strWhere"] = "";
$proto0["m_strOrderBy"] = "";
	
		;
			$proto0["cipherer"] = null;
$proto2=array();
$proto2["m_sql"] = "";
$proto2["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto2["m_column"]=$obj;
$proto2["m_contained"] = array();
$proto2["m_strCase"] = "";
$proto2["m_havingmode"] = false;
$proto2["m_inBrackets"] = false;
$proto2["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto2);

$proto0["m_where"] = $obj;
$proto4=array();
$proto4["m_sql"] = "";
$proto4["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto4["m_column"]=$obj;
$proto4["m_contained"] = array();
$proto4["m_strCase"] = "";
$proto4["m_havingmode"] = false;
$proto4["m_inBrackets"] = false;
$proto4["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto4);

$proto0["m_having"] = $obj;
$proto0["m_fieldlist"] = array();
						$proto6=array();
			$obj = new SQLField(array(
	"m_strName" => "center_id",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto6["m_sql"] = "center_id";
$proto6["m_srcTableName"] = "beauty_centers";
$proto6["m_expr"]=$obj;
$proto6["m_alias"] = "";
$obj = new SQLFieldListItem($proto6);

$proto0["m_fieldlist"][]=$obj;
						$proto8=array();
			$obj = new SQLField(array(
	"m_strName" => "name",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto8["m_sql"] = "name";
$proto8["m_srcTableName"] = "beauty_centers";
$proto8["m_expr"]=$obj;
$proto8["m_alias"] = "";
$obj = new SQLFieldListItem($proto8);

$proto0["m_fieldlist"][]=$obj;
						$proto10=array();
			$obj = new SQLField(array(
	"m_strName" => "description",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto10["m_sql"] = "description";
$proto10["m_srcTableName"] = "beauty_centers";
$proto10["m_expr"]=$obj;
$proto10["m_alias"] = "";
$obj = new SQLFieldListItem($proto10);

$proto0["m_fieldlist"][]=$obj;
						$proto12=array();
			$obj = new SQLField(array(
	"m_strName" => "address",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto12["m_sql"] = "address";
$proto12["m_srcTableName"] = "beauty_centers";
$proto12["m_expr"]=$obj;
$proto12["m_alias"] = "";
$obj = new SQLFieldListItem($proto12);

$proto0["m_fieldlist"][]=$obj;
						$proto14=array();
			$obj = new SQLField(array(
	"m_strName" => "city",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto14["m_sql"] = "city";
$proto14["m_srcTableName"] = "beauty_centers";
$proto14["m_expr"]=$obj;
$proto14["m_alias"] = "";
$obj = new SQLFieldListItem($proto14);

$proto0["m_fieldlist"][]=$obj;
						$proto16=array();
			$obj = new SQLField(array(
	"m_strName" => "postal_code",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto16["m_sql"] = "postal_code";
$proto16["m_srcTableName"] = "beauty_centers";
$proto16["m_expr"]=$obj;
$proto16["m_alias"] = "";
$obj = new SQLFieldListItem($proto16);

$proto0["m_fieldlist"][]=$obj;
						$proto18=array();
			$obj = new SQLField(array(
	"m_strName" => "latitude",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto18["m_sql"] = "latitude";
$proto18["m_srcTableName"] = "beauty_centers";
$proto18["m_expr"]=$obj;
$proto18["m_alias"] = "";
$obj = new SQLFieldListItem($proto18);

$proto0["m_fieldlist"][]=$obj;
						$proto20=array();
			$obj = new SQLField(array(
	"m_strName" => "longitude",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto20["m_sql"] = "longitude";
$proto20["m_srcTableName"] = "beauty_centers";
$proto20["m_expr"]=$obj;
$proto20["m_alias"] = "";
$obj = new SQLFieldListItem($proto20);

$proto0["m_fieldlist"][]=$obj;
						$proto22=array();
			$obj = new SQLField(array(
	"m_strName" => "average_rating",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto22["m_sql"] = "average_rating";
$proto22["m_srcTableName"] = "beauty_centers";
$proto22["m_expr"]=$obj;
$proto22["m_alias"] = "";
$obj = new SQLFieldListItem($proto22);

$proto0["m_fieldlist"][]=$obj;
						$proto24=array();
			$obj = new SQLField(array(
	"m_strName" => "manager_id",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto24["m_sql"] = "manager_id";
$proto24["m_srcTableName"] = "beauty_centers";
$proto24["m_expr"]=$obj;
$proto24["m_alias"] = "";
$obj = new SQLFieldListItem($proto24);

$proto0["m_fieldlist"][]=$obj;
						$proto26=array();
			$obj = new SQLField(array(
	"m_strName" => "disponibilite",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto26["m_sql"] = "disponibilite";
$proto26["m_srcTableName"] = "beauty_centers";
$proto26["m_expr"]=$obj;
$proto26["m_alias"] = "";
$obj = new SQLFieldListItem($proto26);

$proto0["m_fieldlist"][]=$obj;
						$proto28=array();
			$obj = new SQLField(array(
	"m_strName" => "created_at",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto28["m_sql"] = "created_at";
$proto28["m_srcTableName"] = "beauty_centers";
$proto28["m_expr"]=$obj;
$proto28["m_alias"] = "";
$obj = new SQLFieldListItem($proto28);

$proto0["m_fieldlist"][]=$obj;
						$proto30=array();
			$obj = new SQLField(array(
	"m_strName" => "updated_at",
	"m_strTable" => "beauty_centers",
	"m_srcTableName" => "beauty_centers"
));

$proto30["m_sql"] = "updated_at";
$proto30["m_srcTableName"] = "beauty_centers";
$proto30["m_expr"]=$obj;
$proto30["m_alias"] = "";
$obj = new SQLFieldListItem($proto30);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto32=array();
$proto32["m_link"] = "SQLL_MAIN";
			$proto33=array();
$proto33["m_strName"] = "beauty_centers";
$proto33["m_srcTableName"] = "beauty_centers";
$proto33["m_columns"] = array();
$proto33["m_columns"][] = "center_id";
$proto33["m_columns"][] = "name";
$proto33["m_columns"][] = "description";
$proto33["m_columns"][] = "address";
$proto33["m_columns"][] = "city";
$proto33["m_columns"][] = "postal_code";
$proto33["m_columns"][] = "latitude";
$proto33["m_columns"][] = "longitude";
$proto33["m_columns"][] = "average_rating";
$proto33["m_columns"][] = "manager_id";
$proto33["m_columns"][] = "disponibilite";
$proto33["m_columns"][] = "created_at";
$proto33["m_columns"][] = "updated_at";
$obj = new SQLTable($proto33);

$proto32["m_table"] = $obj;
$proto32["m_sql"] = "beauty_centers";
$proto32["m_alias"] = "";
$proto32["m_srcTableName"] = "beauty_centers";
$proto34=array();
$proto34["m_sql"] = "";
$proto34["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto34["m_column"]=$obj;
$proto34["m_contained"] = array();
$proto34["m_strCase"] = "";
$proto34["m_havingmode"] = false;
$proto34["m_inBrackets"] = false;
$proto34["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto34);

$proto32["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto32);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="beauty_centers";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_beauty_centers = createSqlQuery_beauty_centers();


	
		;

													

$tdatabeauty_centers[".sqlquery"] = $queryData_beauty_centers;



$tdatabeauty_centers[".hasEvents"] = false;

?>