<?php
$tdataopening_hours = array();
$tdataopening_hours[".searchableFields"] = array();
$tdataopening_hours[".ShortName"] = "opening_hours";
$tdataopening_hours[".OwnerID"] = "";
$tdataopening_hours[".OriginalTable"] = "opening_hours";


$tdataopening_hours[".pagesByType"] = my_json_decode( "{\"add\":[\"add\"],\"edit\":[\"edit\"],\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" );
$tdataopening_hours[".originalPagesByType"] = $tdataopening_hours[".pagesByType"];
$tdataopening_hours[".pages"] = types2pages( my_json_decode( "{\"add\":[\"add\"],\"edit\":[\"edit\"],\"export\":[\"export\"],\"import\":[\"import\"],\"list\":[\"list\"],\"print\":[\"print\"],\"search\":[\"search\"],\"view\":[\"view\"]}" ) );
$tdataopening_hours[".originalPages"] = $tdataopening_hours[".pages"];
$tdataopening_hours[".defaultPages"] = my_json_decode( "{\"add\":\"add\",\"edit\":\"edit\",\"export\":\"export\",\"import\":\"import\",\"list\":\"list\",\"print\":\"print\",\"search\":\"search\",\"view\":\"view\"}" );
$tdataopening_hours[".originalDefaultPages"] = $tdataopening_hours[".defaultPages"];

//	field labels
$fieldLabelsopening_hours = array();
$fieldToolTipsopening_hours = array();
$pageTitlesopening_hours = array();
$placeHoldersopening_hours = array();

if(mlang_getcurrentlang()=="English")
{
	$fieldLabelsopening_hours["English"] = array();
	$fieldToolTipsopening_hours["English"] = array();
	$placeHoldersopening_hours["English"] = array();
	$pageTitlesopening_hours["English"] = array();
	$fieldLabelsopening_hours["English"]["opening_id"] = "Opening Id";
	$fieldToolTipsopening_hours["English"]["opening_id"] = "";
	$placeHoldersopening_hours["English"]["opening_id"] = "";
	$fieldLabelsopening_hours["English"]["center_id"] = "Center Id";
	$fieldToolTipsopening_hours["English"]["center_id"] = "";
	$placeHoldersopening_hours["English"]["center_id"] = "";
	$fieldLabelsopening_hours["English"]["day_of_week"] = "Day Of Week";
	$fieldToolTipsopening_hours["English"]["day_of_week"] = "";
	$placeHoldersopening_hours["English"]["day_of_week"] = "";
	$fieldLabelsopening_hours["English"]["opening_time"] = "Opening Time";
	$fieldToolTipsopening_hours["English"]["opening_time"] = "";
	$placeHoldersopening_hours["English"]["opening_time"] = "";
	$fieldLabelsopening_hours["English"]["closing_time"] = "Closing Time";
	$fieldToolTipsopening_hours["English"]["closing_time"] = "";
	$placeHoldersopening_hours["English"]["closing_time"] = "";
	if (count($fieldToolTipsopening_hours["English"]))
		$tdataopening_hours[".isUseToolTips"] = true;
}


	$tdataopening_hours[".NCSearch"] = true;



$tdataopening_hours[".shortTableName"] = "opening_hours";
$tdataopening_hours[".nSecOptions"] = 0;

$tdataopening_hours[".mainTableOwnerID"] = "";
$tdataopening_hours[".entityType"] = 0;
$tdataopening_hours[".connId"] = "lamassetbeautyappatlocalhost";


$tdataopening_hours[".strOriginalTableName"] = "opening_hours";

	



$tdataopening_hours[".showAddInPopup"] = false;

$tdataopening_hours[".showEditInPopup"] = false;

$tdataopening_hours[".showViewInPopup"] = false;

$tdataopening_hours[".listAjax"] = false;
//	temporary
//$tdataopening_hours[".listAjax"] = false;

	$tdataopening_hours[".audit"] = false;

	$tdataopening_hours[".locking"] = false;


$pages = $tdataopening_hours[".defaultPages"];

if( $pages[PAGE_EDIT] ) {
	$tdataopening_hours[".edit"] = true;
	$tdataopening_hours[".afterEditAction"] = 1;
	$tdataopening_hours[".closePopupAfterEdit"] = 1;
	$tdataopening_hours[".afterEditActionDetTable"] = "";
}

if( $pages[PAGE_ADD] ) {
$tdataopening_hours[".add"] = true;
$tdataopening_hours[".afterAddAction"] = 1;
$tdataopening_hours[".closePopupAfterAdd"] = 1;
$tdataopening_hours[".afterAddActionDetTable"] = "";
}

if( $pages[PAGE_LIST] ) {
	$tdataopening_hours[".list"] = true;
}



$tdataopening_hours[".strSortControlSettingsJSON"] = "";




if( $pages[PAGE_VIEW] ) {
$tdataopening_hours[".view"] = true;
}

if( $pages[PAGE_IMPORT] ) {
$tdataopening_hours[".import"] = true;
}

if( $pages[PAGE_EXPORT] ) {
$tdataopening_hours[".exportTo"] = true;
}

if( $pages[PAGE_PRINT] ) {
$tdataopening_hours[".printFriendly"] = true;
}



$tdataopening_hours[".showSimpleSearchOptions"] = true; // temp fix #13449

// Allow Show/Hide Fields in GRID
$tdataopening_hours[".allowShowHideFields"] = true; // temp fix #13449
//

// Allow Fields Reordering in GRID
$tdataopening_hours[".allowFieldsReordering"] = true; // temp fix #13449
//

$tdataopening_hours[".isUseAjaxSuggest"] = true;





$tdataopening_hours[".ajaxCodeSnippetAdded"] = false;

$tdataopening_hours[".buttonsAdded"] = false;

$tdataopening_hours[".addPageEvents"] = false;

// use timepicker for search panel
$tdataopening_hours[".isUseTimeForSearch"] = false;


$tdataopening_hours[".badgeColor"] = "778899";


$tdataopening_hours[".allSearchFields"] = array();
$tdataopening_hours[".filterFields"] = array();
$tdataopening_hours[".requiredSearchFields"] = array();

$tdataopening_hours[".googleLikeFields"] = array();
$tdataopening_hours[".googleLikeFields"][] = "opening_id";
$tdataopening_hours[".googleLikeFields"][] = "center_id";
$tdataopening_hours[".googleLikeFields"][] = "day_of_week";
$tdataopening_hours[".googleLikeFields"][] = "opening_time";
$tdataopening_hours[".googleLikeFields"][] = "closing_time";



$tdataopening_hours[".tableType"] = "list";

$tdataopening_hours[".printerPageOrientation"] = 0;
$tdataopening_hours[".nPrinterPageScale"] = 100;

$tdataopening_hours[".nPrinterSplitRecords"] = 40;

$tdataopening_hours[".geocodingEnabled"] = false;










$tdataopening_hours[".pageSize"] = 20;

$tdataopening_hours[".warnLeavingPages"] = true;



$tstrOrderBy = "";
$tdataopening_hours[".strOrderBy"] = $tstrOrderBy;

$tdataopening_hours[".orderindexes"] = array();


$tdataopening_hours[".sqlHead"] = "SELECT opening_id,  	center_id,  	day_of_week,  	opening_time,  	closing_time";
$tdataopening_hours[".sqlFrom"] = "FROM opening_hours";
$tdataopening_hours[".sqlWhereExpr"] = "";
$tdataopening_hours[".sqlTail"] = "";










//fill array of records per page for list and report without group fields
$arrRPP = array();
$arrRPP[] = 10;
$arrRPP[] = 20;
$arrRPP[] = 30;
$arrRPP[] = 50;
$arrRPP[] = 100;
$arrRPP[] = 500;
$arrRPP[] = -1;
$tdataopening_hours[".arrRecsPerPage"] = $arrRPP;

//fill array of groups per page for report with group fields
$arrGPP = array();
$arrGPP[] = 1;
$arrGPP[] = 3;
$arrGPP[] = 5;
$arrGPP[] = 10;
$arrGPP[] = 50;
$arrGPP[] = 100;
$arrGPP[] = -1;
$tdataopening_hours[".arrGroupsPerPage"] = $arrGPP;

$tdataopening_hours[".highlightSearchResults"] = true;

$tableKeysopening_hours = array();
$tableKeysopening_hours[] = "opening_id";
$tdataopening_hours[".Keys"] = $tableKeysopening_hours;


$tdataopening_hours[".hideMobileList"] = array();




//	opening_id
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 1;
	$fdata["strName"] = "opening_id";
	$fdata["GoodName"] = "opening_id";
	$fdata["ownerTable"] = "opening_hours";
	$fdata["Label"] = GetFieldLabel("opening_hours","opening_id");
	$fdata["FieldType"] = 3;


		$fdata["AutoInc"] = true;

	
			

		$fdata["strField"] = "opening_id";

		$fdata["sourceSingle"] = "opening_id";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "opening_id";

	
	
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


	$tdataopening_hours["opening_id"] = $fdata;
		$tdataopening_hours[".searchableFields"][] = "opening_id";
//	center_id
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 2;
	$fdata["strName"] = "center_id";
	$fdata["GoodName"] = "center_id";
	$fdata["ownerTable"] = "opening_hours";
	$fdata["Label"] = GetFieldLabel("opening_hours","center_id");
	$fdata["FieldType"] = 3;


	
	
			

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

	$edata = array("EditFormat" => "Lookup wizard");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	

// Begin Lookup settings
				$edata["LookupType"] = 2;
	$edata["LookupTable"] = "beauty_centers";
			$edata["autoCompleteFieldsOnEdit"] = 0;
	$edata["autoCompleteFields"] = array();
		$edata["LCType"] = 0;

	
		
	$edata["LinkField"] = "center_id";
	$edata["LinkFieldType"] = 3;
	$edata["DisplayField"] = "name";

	

	
	$edata["LookupOrderBy"] = "";

	
	
	
	

	
	
		$edata["SelectSize"] = 1;

// End Lookup Settings


		$edata["IsRequired"] = true;

	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
	
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
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


	$tdataopening_hours["center_id"] = $fdata;
		$tdataopening_hours[".searchableFields"][] = "center_id";
//	day_of_week
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 3;
	$fdata["strName"] = "day_of_week";
	$fdata["GoodName"] = "day_of_week";
	$fdata["ownerTable"] = "opening_hours";
	$fdata["Label"] = GetFieldLabel("opening_hours","day_of_week");
	$fdata["FieldType"] = 16;


	
	
			

		$fdata["strField"] = "day_of_week";

		$fdata["sourceSingle"] = "day_of_week";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "day_of_week";

	
	
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


	$tdataopening_hours["day_of_week"] = $fdata;
		$tdataopening_hours[".searchableFields"][] = "day_of_week";
//	opening_time
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 4;
	$fdata["strName"] = "opening_time";
	$fdata["GoodName"] = "opening_time";
	$fdata["ownerTable"] = "opening_hours";
	$fdata["Label"] = GetFieldLabel("opening_hours","opening_time");
	$fdata["FieldType"] = 134;


	
	
			

		$fdata["strField"] = "opening_time";

		$fdata["sourceSingle"] = "opening_time";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "opening_time";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Time");

	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["timeFormatData"] = array(
		"showSeconds" => false,
		"showDaysInTotals" => false,
		"timeFormat" => 0
	);
	$vdata["timeFormatData"]["showSeconds"] = true;
	$vdata["timeFormatData"]["showDaysInTotals"] = true;

		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Time");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



		$edata["IsRequired"] = true;

	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
						$edata["validateAs"]["basicValidate"][] = "IsRequired";
		
	
//	End validation

	
			
				$hours = 24;
	$edata["FormatTimeAttrs"] = array("useTimePicker" => 0,
									  "hours" => $hours,
									  "minutes" => 1,
									  "showSeconds" => 0);

	
	
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


	$tdataopening_hours["opening_time"] = $fdata;
		$tdataopening_hours[".searchableFields"][] = "opening_time";
//	closing_time
//	Custom field settings
	$fdata = array();
	$fdata["Index"] = 5;
	$fdata["strName"] = "closing_time";
	$fdata["GoodName"] = "closing_time";
	$fdata["ownerTable"] = "opening_hours";
	$fdata["Label"] = GetFieldLabel("opening_hours","closing_time");
	$fdata["FieldType"] = 134;


	
	
			

		$fdata["strField"] = "closing_time";

		$fdata["sourceSingle"] = "closing_time";

	
		$fdata["isSQLExpression"] = true;
	$fdata["FullName"] = "closing_time";

	
	
				$fdata["UploadFolder"] = "files";

//  Begin View Formats
	$fdata["ViewFormats"] = array();

	$vdata = array("ViewFormat" => "Time");

	
	
	
	
	
	
	
	
	
	
	
	
	
		$vdata["timeFormatData"] = array(
		"showSeconds" => false,
		"showDaysInTotals" => false,
		"timeFormat" => 0
	);
	$vdata["timeFormatData"]["showSeconds"] = true;
	$vdata["timeFormatData"]["showDaysInTotals"] = true;

		$vdata["NeedEncode"] = true;

	
		$vdata["truncateText"] = true;
	$vdata["NumberOfChars"] = 80;

	$fdata["ViewFormats"]["view"] = $vdata;
//  End View Formats

//	Begin Edit Formats
	$fdata["EditFormats"] = array();

	$edata = array("EditFormat" => "Time");

	
		$edata["weekdayMessage"] = array("message" => "", "messageType" => "Text");
	$edata["weekdays"] = "[]";


	
	



		$edata["IsRequired"] = true;

	
	
	
			$edata["acceptFileTypesHtml"] = "";

		$edata["maxNumberOfFiles"] = 1;

	
	
	
	
	
		$edata["EditParams"] = "";
		
		$edata["controlWidth"] = 200;

//	Begin validation
	$edata["validateAs"] = array();
	$edata["validateAs"]["basicValidate"] = array();
	$edata["validateAs"]["customMessages"] = array();
						$edata["validateAs"]["basicValidate"][] = "IsRequired";
		
	
//	End validation

	
			
				$hours = 24;
	$edata["FormatTimeAttrs"] = array("useTimePicker" => 0,
									  "hours" => $hours,
									  "minutes" => 1,
									  "showSeconds" => 0);

	
	
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


	$tdataopening_hours["closing_time"] = $fdata;
		$tdataopening_hours[".searchableFields"][] = "closing_time";


$tables_data["opening_hours"]=&$tdataopening_hours;
$field_labels["opening_hours"] = &$fieldLabelsopening_hours;
$fieldToolTips["opening_hours"] = &$fieldToolTipsopening_hours;
$placeHolders["opening_hours"] = &$placeHoldersopening_hours;
$page_titles["opening_hours"] = &$pageTitlesopening_hours;


changeTextControlsToDate( "opening_hours" );

// -----------------start  prepare master-details data arrays ------------------------------//
// tables which are detail tables for current table (master)

//if !@TABLE.bReportCrossTab

$detailsTablesData["opening_hours"] = array();
//endif

// tables which are master tables for current table (detail)
$masterTablesData["opening_hours"] = array();



	
	//if !@t.bReportCrossTab
			$strOriginalDetailsTable="beauty_centers";
	$masterParams = array();
	$masterParams["mDataSourceTable"]="beauty_centers";
	$masterParams["mOriginalTable"]= $strOriginalDetailsTable;
	$masterParams["mShortTable"]= "beauty_centers";
	$masterParams["masterKeys"]= array();
	$masterParams["detailKeys"]= array();

	$masterParams["type"] = PAGE_LIST;
					$masterTablesData["opening_hours"][0] = $masterParams;
				$masterTablesData["opening_hours"][0]["masterKeys"] = array();
	$masterTablesData["opening_hours"][0]["masterKeys"][]="center_id";
				$masterTablesData["opening_hours"][0]["detailKeys"] = array();
	$masterTablesData["opening_hours"][0]["detailKeys"][]="center_id";
		
	//endif
// -----------------end  prepare master-details data arrays ------------------------------//



require_once(getabspath("classes/sql.php"));











function createSqlQuery_opening_hours()
{
$proto0=array();
$proto0["m_strHead"] = "SELECT";
$proto0["m_strFieldList"] = "opening_id,  	center_id,  	day_of_week,  	opening_time,  	closing_time";
$proto0["m_strFrom"] = "FROM opening_hours";
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
	"m_strName" => "opening_id",
	"m_strTable" => "opening_hours",
	"m_srcTableName" => "opening_hours"
));

$proto6["m_sql"] = "opening_id";
$proto6["m_srcTableName"] = "opening_hours";
$proto6["m_expr"]=$obj;
$proto6["m_alias"] = "";
$obj = new SQLFieldListItem($proto6);

$proto0["m_fieldlist"][]=$obj;
						$proto8=array();
			$obj = new SQLField(array(
	"m_strName" => "center_id",
	"m_strTable" => "opening_hours",
	"m_srcTableName" => "opening_hours"
));

$proto8["m_sql"] = "center_id";
$proto8["m_srcTableName"] = "opening_hours";
$proto8["m_expr"]=$obj;
$proto8["m_alias"] = "";
$obj = new SQLFieldListItem($proto8);

$proto0["m_fieldlist"][]=$obj;
						$proto10=array();
			$obj = new SQLField(array(
	"m_strName" => "day_of_week",
	"m_strTable" => "opening_hours",
	"m_srcTableName" => "opening_hours"
));

$proto10["m_sql"] = "day_of_week";
$proto10["m_srcTableName"] = "opening_hours";
$proto10["m_expr"]=$obj;
$proto10["m_alias"] = "";
$obj = new SQLFieldListItem($proto10);

$proto0["m_fieldlist"][]=$obj;
						$proto12=array();
			$obj = new SQLField(array(
	"m_strName" => "opening_time",
	"m_strTable" => "opening_hours",
	"m_srcTableName" => "opening_hours"
));

$proto12["m_sql"] = "opening_time";
$proto12["m_srcTableName"] = "opening_hours";
$proto12["m_expr"]=$obj;
$proto12["m_alias"] = "";
$obj = new SQLFieldListItem($proto12);

$proto0["m_fieldlist"][]=$obj;
						$proto14=array();
			$obj = new SQLField(array(
	"m_strName" => "closing_time",
	"m_strTable" => "opening_hours",
	"m_srcTableName" => "opening_hours"
));

$proto14["m_sql"] = "closing_time";
$proto14["m_srcTableName"] = "opening_hours";
$proto14["m_expr"]=$obj;
$proto14["m_alias"] = "";
$obj = new SQLFieldListItem($proto14);

$proto0["m_fieldlist"][]=$obj;
$proto0["m_fromlist"] = array();
												$proto16=array();
$proto16["m_link"] = "SQLL_MAIN";
			$proto17=array();
$proto17["m_strName"] = "opening_hours";
$proto17["m_srcTableName"] = "opening_hours";
$proto17["m_columns"] = array();
$proto17["m_columns"][] = "opening_id";
$proto17["m_columns"][] = "center_id";
$proto17["m_columns"][] = "day_of_week";
$proto17["m_columns"][] = "opening_time";
$proto17["m_columns"][] = "closing_time";
$obj = new SQLTable($proto17);

$proto16["m_table"] = $obj;
$proto16["m_sql"] = "opening_hours";
$proto16["m_alias"] = "";
$proto16["m_srcTableName"] = "opening_hours";
$proto18=array();
$proto18["m_sql"] = "";
$proto18["m_uniontype"] = "SQLL_UNKNOWN";
	$obj = new SQLNonParsed(array(
	"m_sql" => ""
));

$proto18["m_column"]=$obj;
$proto18["m_contained"] = array();
$proto18["m_strCase"] = "";
$proto18["m_havingmode"] = false;
$proto18["m_inBrackets"] = false;
$proto18["m_useAlias"] = false;
$obj = new SQLLogicalExpr($proto18);

$proto16["m_joinon"] = $obj;
$obj = new SQLFromListItem($proto16);

$proto0["m_fromlist"][]=$obj;
$proto0["m_groupby"] = array();
$proto0["m_orderby"] = array();
$proto0["m_srcTableName"]="opening_hours";		
$obj = new SQLQuery($proto0);

	return $obj;
}
$queryData_opening_hours = createSqlQuery_opening_hours();


	
		;

					

$tdataopening_hours[".sqlquery"] = $queryData_opening_hours;



$tdataopening_hours[".hasEvents"] = false;

?>