body {
	font-size:14px;
}

body#complete-form {
	background-color: #e7e7e7;
}

/* Web's Contact Detail page specific styles */
#contentWrapper #mainForm {
	background-color: #ffffff;
}

#contentWrapper .containerBox{  /* decrease width to allow for padding on right side */
	width:98%;
}
// #contentWrapper select{  /* Remove picklist's selector */
// 	-webkit-appearance: none;
// 	-moz-appearance: none;
// 	-ms-appearance: none;
// 	-o-appearance: none;
// 	appearance: none;
// }
#contentWrapper select::-ms-expand { /* Remove picklist's selector in IE */
	display: none;
}
#contentWrapper .inner-addon .glyphicon { /* Remove calendar icon */
	display: none;
}
#contentWrapper .addPatMedRow{
	display: none;
}
#contentWrapper button.close{
	display: none;
}
#contentWrapper #patientMedsContainer{ /*Fixes weird issue of Pat Meds Table covering the border radius on Form Detail page*/
	width: 97%;
	padding: 0;
}

#contentWrapper select {
	overflow-x: scroll;
	overflow-y: hidden;
}

#contentWrapper select.formInput::-webkit-scrollbar { 
 	height: 5px !important;
 	background-color: red !important;
}

#contentWrapper select::-webkit-scrollbar-track {
    background: #fff;
}
#contentWrapper select::-webkit-scrollbar-thumb {
    background: #d3d3d3;
    border-radius: 5px;
}

#contentWrapper .currentPageContainer {
	background-color: transparent;
}
/********************************************/
span.glyphicon.large {
	font-size:19px;
	padding-left:5px;
	margin-right:10px;
}
span.glyphicon.small {
	font-size:10px;
	line-height: 10px;
}
.contactSearchBox {
	margin: 10px 0;
}
.badge {
	font-size:13px;
	margin-right: 5px;
}
button.btn.prevBtn, button.btn.nextBtn {
	line-height: 10px;
	margin: 0 5px;
	width:45px;
	background-color: #fff;
	border: 1px solid #ccc;
	padding-bottom: 8px;
}
.backButton {
	height:30px;
	background-color:#f5f5f5;
	width:120px;
	margin-top:20px;
}

/* error summary section
div .errorSummary {
	border: 1px solid red;
	margin-top: 5px;
}
div .errorSummary-mobile {
	border: 1px solid red;
	margin: 45px 20px 0 20px;
	border-radius:10px;
	padding:2px 0;
}*/
/* all errors*/
.error {
	color: red;
	font-weight: bold;
}

input.error, select.error, textarea.error {
	border: 1px solid red;
}

/*body.formDisplayApp #savingStatus {
	position:fixed;
	background-color: rgba(161,166,169,0.8);
	z-index:888;
	text-align: center;
	top:0%;
 	left:50%;
 	margin-left:-50%;
 	padding-top:50%;
 	width:100%;
 	height:100%;
 	display:none;
}*/
/*.loader {
  position: absolute;
  top: 100px;
  left: 49%;
  z-index: 100;
  font-size: 20px;
  margin: 5em auto;
  width: 1em;
  height: 1em;
  border-radius: 50%;
  text-indent: -9999em;
  -webkit-animation: load4 1.3s infinite linear;
  animation: load4 1.3s infinite linear;
}
@-webkit-keyframes load4 {
  0%,
  100% {box-shadow: 0em -3em 0em 0.2em #ffffff, 2em -2em 0 0em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 0em #ffffff;}
  12.5% {box-shadow: 0em -3em 0em 0em #ffffff, 2em -2em 0 0.2em #ffffff, 3em 0em 0 0em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  25% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 0em #ffffff, 3em 0em 0 0.2em #ffffff, 2em 2em 0 0em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  37.5% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 0em #ffffff, 2em 2em 0 0.2em #ffffff, 0em 3em 0 0em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  50% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 0em #ffffff, 0em 3em 0 0.2em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  62.5% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 0em #ffffff, -2em 2em 0 0.2em #ffffff, -3em 0em 0 0em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  75% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 0.2em #ffffff, -2em -2em 0 0em #ffffff;}
  87.5% {box-shadow: 0em -3em 0em 0em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 0em #ffffff, -2em -2em 0 0.2em #ffffff;}
}
@keyframes load4 {
  0%,
  100% {box-shadow: 0em -3em 0em 0.2em #ffffff, 2em -2em 0 0em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 0em #ffffff;}
  12.5% {box-shadow: 0em -3em 0em 0em #ffffff, 2em -2em 0 0.2em #ffffff, 3em 0em 0 0em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  25% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 0em #ffffff, 3em 0em 0 0.2em #ffffff, 2em 2em 0 0em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  37.5% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 0em #ffffff, 2em 2em 0 0.2em #ffffff, 0em 3em 0 0em #ffffff, -2em 2em 0 -0.5em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  50% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 0em #ffffff, 0em 3em 0 0.2em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 -0.5em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  62.5% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 0em #ffffff, -2em 2em 0 0.2em #ffffff, -3em 0em 0 0em #ffffff, -2em -2em 0 -0.5em #ffffff;}
  75% {box-shadow: 0em -3em 0em -0.5em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 0.2em #ffffff, -2em -2em 0 0em #ffffff;}
  87.5% {box-shadow: 0em -3em 0em 0em #ffffff, 2em -2em 0 -0.5em #ffffff, 3em 0em 0 -0.5em #ffffff, 2em 2em 0 -0.5em #ffffff, 0em 3em 0 -0.5em #ffffff, -2em 2em 0 0em #ffffff, -3em 0em 0 0em #ffffff, -2em -2em 0 0.2em #ffffff;}
}*/
/*.saveText{
	color: #fff;
	font-weight: bold;
	font-size: 22px;
}*/
/* overriding BS style with older BS style*/
.form-horizontal .control-label {
	float:left;
	padding-top:5px;
	margin-right: 10px;
}
.form-horizontal .control-group {
	padding-bottom:20px;
}
.form-horizontal .controls{
	margin-top: 5px; /* align inputs with label */
	text-align:left;
}
.blank_space {
	height:25px;
	width:100%;
}

.sigWrapper {
	width: 100%;
	margin:0px;
	background-color: #fff;
	color: #16325c;
	border: 1px solid rgb(216, 221, 230);
	border-radius: 4px;
}

.sigWrapper canvas {
	width: 100%;
	border-radius: 4px;
}

.sigNav{
	list-style-type:none;
	display: none;
	margin:0px;
	height:0px;
}
.sigPad{
	display: inline-block;
	width: 100%;
	max-width: 250px;
	position: relative; /* allows for absolute positioning of button */
}
.clearButton{
	position: absolute;
	top: 3px;
	right: 3px;
}
li.clearButton .btn-primary:focus, li.clearButton .btn-primary:hover{
	color: #333 	
}
.requiredBorder{
	border-left: 3px solid red;
}
@media (max-width: 480px) {
	.form-horizontal .control-label {
		float:none;
	}
}
button.navbar-toggle{
	position:absolute;
	left: 5px;
	top:0px;
}
.nav-title{
	position: absolute;
	margin-top:10px;
	width:175px;
	display: none;
	text-align: center;
}
.navmenu-nav > li {
	color: #777;
	margin:10px 0 0 15px;
}
.label-online, .label-offline{
	margin:15px 10px 0 0;
	display: none;
	position: absolute;
}
.text-offline{
	color:#f2f2f2;
}
.btn-circle{
	border-radius: 50%;
	width:50px;
	height:50px;
	padding:0;
	margin-top: 5px;
	border:none;
	background-color: #7f8c8d;
	margin-right:50px;
}
.btn-circle-glyph-with-plus{
	font-size: 1.6em;
	top:5px;
}
.btn-circle-glyph-plus{
	position: absolute;
	font-size: .6em;
	top:15px;
}
.btn-circle-glyph{
	font-size: 1.7em;
}
.btn-deactivated{
	background-color: #f2f2f2;
}
.glyphicon-pre-text{
	margin-right:8px;
}
@media (min-width: 768px) {
	/* Overide bootstrap default of not displaying toggle button at larger widths (needed for tablets) */
	.navbar-default button.navbar-toggle{
		display:initial;
	}
}
.row{
	margin-left: initial; 	/* Overwrite Bootstrap styles, was causing horizontal scroll on iPad home screen */
	margin-right: initial; 	/* Overwrite Bootstrap styles, was causing horizontal scroll on iPad home screen */
}
.title-home{
	margin-left:-15px;
}
.buttons{
	border-top:none;
}
.button-row-home{
	margin-top: 20px;
	padding-right:0px;
}
.button-row-form-mobile{ /* Web version does not have app title bar, so only mobile needs this adjustment. On mobile, all other containers get the 50px padding from 'mobile-container', this is need because the element is fixed */
	top:50px;
	background-color: rgba(242,242,242,.9);
	padding: 10px 0;
}
.form-background-color{
	background-color: transparent;
}
.buttons-fixed{
	position: fixed;
    background-color: rgba(22, 50, 92,.95);
    width: 100%;
    left: 0;
	top: 0;
	padding: 15px 0;
	display: flex;
	flex-direction: column;
	z-index: 100;
}

.currentPageContainer{
	padding-top:70px;
}
.with-pagination{
	padding-top:120px;
}
.paginationBlock{
	margin: 0 0 0 60px;
	color: white;
}
/*.paginationBlock-mobile{
	margin: 40px auto 0 auto;
}*/
select.goToPage{
	width: 9em;
}
span.goToPage{
	padding-left: 20px;
}
.footer-center-1{
	position: absolute;
	left: calc(50% - 25px);
}
.footer-center-2{
	position: absolute;
	left: calc(50% - 75px); /* Move left edge of div 50% then subtract (50 * [(n)+(n-1)])where n = # of buttons (if button width and right margin is 50px) */
}
/* COLORS */
div.navbar-default{
	background-color: rgba(39, 174, 96,1.0);
}
.nav-title{
	color:#f2f2f2;
}
.navbar-default .navbar-toggle{
	border-color: #f2f2f2;
}
.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus{
	background-color: rgba(46, 204, 113,1.0);
}
.navbar-default .navbar-toggle .icon-bar{
	background-color:#f2f2f2;
}
#contactSearchName{
	margin-left: 5px;
}
.navmenu, .navbar-offcanvas {
	width: 200px;
}
.containerBox h2{
	border-top:none;
}
.title-padding{
	padding: 40px 0 10px 0;
}
#sync-fail{
	background-color: red;
}
.childQuestion{
	display: none;
}
.modal-content{ /* Move the modal search box just under the app title */ 
	margin-top:50px;
}
button.close{ /* Make modal close button larger */
font-size: 2.2em;
}
.containerBox{
	border-bottom: none;
}
.containerBox td > input{
	height: 15px !important; /* important needed to overwrite !important in another file... */
	vertical-align: top;
}
.containerBox td > label{
	padding-left: 10px;
	font-weight: normal;
	width: 90%;
}
.answerColumn td.checkbox-list > label{
	width: 85%; /* checkbox list labels width needs to be slightly less than 90% for other label widths (works with triple indented, required checkboxes) */
}
.answerColumn td.radio-list > label{
	width: 88%; /* radio list labels width needs to be slightly less than 90% for other label widths (works with triple indented, required checkboxes) */
}
.containerBox textarea{
	width: 250px;
}
.table-radio td, .table-checkbox td{
	text-align: left;
}
.controls-table{
	display: table;
}
.controls-table-cell{
	display: table-cell;
	width: 3px;
}
.controls-table-cell-margin{
	margin-left:10px
}
.input-group-btn{
	border-radius: 0px;
}
.input-group-btn button{
	padding: 10px 10px 12px 10px;
	border-radius: 0px;
}
div.input-group{
	margin-top: -1px;
}
.mobile-container{ /* Pad all mobile elements to accomodate the app nav/title bar */
	padding: 50px 0 40px 0;
}
.button-row-listview{
	padding: 10px 0;
	width: 720px;
	background-color: rgba(242,242,242,.9);
	z-index:100;
	position: fixed;
}
.button-row-margin{
	margin-top:10px;
}
.btn-top-row{
	margin: 0 5px;
}
.btn-top-row-right{
	margin: 0 0 0 5px;
}
.btn-right{
	margin-right:10px;
}
form.form-default-background{
	background-color: #f2f2f2;
}
#formContent img{
	display: block;
	margin: 0px auto;
}
p.list-group-item{
	text-align: left;
}
.containerBox h2.non-form-title{
	font-size: 30px;
	text-align: left;
	padding-top: 60px;
}
#detailContent .button-row-form{
	width:100%
}
.border-settings{
	border-bottom: 1px solid #d9d9d9;
	width: 80%;
}
.clear-float{
	clear: both;
}
.containerBox textarea{
	min-width:250px;
	max-width:100%;
}
.containerBox form{
	width: 100%;
}
.btn-camera{
	padding-bottom: 7px;
	margin-right: 10px;
}
input[type=datetime-local], input[type=date]{
	-webkit-appearance: none;
}
input:disabled{
	color: rgb(84, 84, 84);
}
.inner-addon { 
    position: relative; 
    display:inline-block;
    width:250px;
}
.answerColumn .inner-addon { 
    width: 98%;
}
/* style icon */
.inner-addon .input-glyphicon-calendar {
  position: absolute;
  padding: 7px 10px;
  pointer-events: none;
}

/* align icon */
.left-addon .glyphicon  { left:  0px;}
.right-addon .glyphicon { right: 0px;}

/* add padding  */
.left-addon input  { padding-left:  30px; }
.right-addon input { padding-right: 30px; }

.inline-text{
	display: inline;
}
.savePhotos{
	display: none;
}
div.savePhotos{
	margin-right:15px;
}
#logout-link{
	display: none;
}

ul#thisContactsForms, ul#div_sfdc_soup_entry_list, ul#formsList{
	padding-left: 0px;
}
.localupdate{
	margin-right: 5px;
}
.hidden{
	display: none;
}

#patientMedsContainer, #patientMedsContainer input, #patientMedsContainer select{
	width: 100%;
	max-width: 100%
}
#patientMedsContainer{
	padding-left: 0px;
}
#patientMedsContainer input{
	height: 25px !important;
}
#patientMedsContainer .removeColumn{
	width: 40px;
}
#patientMedsContainer button.close{
	line-height: .7;
	position: relative;
	bottom: 4px;
}
#patientMedsContainer .mobileTooltip{
	color: #d3d3d3;
	font-size: 20px;
	padding-right: 0px;
}
button.addPatMedRow{
	margin-bottom: 20px;
	margin-left: 10px;	
}


/*!
 * jQuery UI CSS Framework 1.11.4 FOR AUTOCOMPLETE
 */

/* Layout helpers
----------------------------------*/
.ui-helper-hidden {
	display: none;
}
.ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0 0 0 0);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px;
}
.ui-helper-reset {
	margin: 0;
	padding: 0;
	border: 0;
	outline: 0;
	line-height: 1.3;
	text-decoration: none;
	font-size: 100%;
	list-style: none;
}
.ui-helper-clearfix:before,
.ui-helper-clearfix:after {
	content: "";
	display: table;
	border-collapse: collapse;
}
.ui-helper-clearfix:after {
	clear: both;
}
.ui-helper-clearfix {
	min-height: 0; /* support: IE7 */
}
.ui-helper-zfix {
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	position: absolute;
	opacity: 0;
	filter:Alpha(Opacity=0); /* support: IE8 */
}

.ui-front {
	z-index: 100;
}


/* Interaction Cues
----------------------------------*/
.ui-state-disabled {
	cursor: default !important;
}


/* Icons
----------------------------------*/

/* states and images */
.ui-icon {
	display: block;
	text-indent: -99999px;
	overflow: hidden;
	background-repeat: no-repeat;
}


/* Misc visuals
----------------------------------*/

/* Overlays */
.ui-widget-overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.ui-autocomplete {
	position: absolute;
	top: 0;
	left: 0;
	cursor: default;
}
.ui-menu {
	list-style: none;
	padding: 0;
	margin: 0;
	display: block;
	outline: none;
	background-color: #fff;
	border: 1px solid #333;
}
.ui-menu .ui-menu {
	position: absolute;
}
.ui-menu .ui-menu-item {
	position: relative;
	margin: 0;
	padding: 3px 1em 3px .4em;
	cursor: pointer;
	min-height: 0; /* support: IE7 */
	/* support: IE10, see #8844 */
	list-style-image: url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7");
}
.ui-menu .ui-menu-divider {
	margin: 5px 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	border-width: 1px 0 0 0;
}
.ui-menu .ui-state-focus,
.ui-menu .ui-state-active {
	margin: -1px;
	background-color:rgb(244, 246, 249) !important;
	border:1px solid black;
}

/* icon support */
.ui-menu-icons {
	position: relative;
}
.ui-menu-icons .ui-menu-item {
	padding-left: 2em;
}

/* left-aligned */
.ui-menu .ui-icon {
	position: absolute;
	top: 0;
	bottom: 0;
	left: .2em;
	margin: auto 0;
}

/* right-aligned */
.ui-menu .ui-menu-icon {
	left: auto;
	right: 0;
}
.contactDisplay {
	height: 44px;
}
.fsText {
	float: left;
	width: 610px; /* Works for tablet, when updated locally is not present */
  	white-space: nowrap;
  	overflow: hidden;
  	text-overflow: ellipsis;
}
div.updatedLocallyOn{
	width: 500px; /* Works for tablet*/
}
/* Adjust width of text on search modal */
div.contactData{
	width: 500px;
}

@media (max-width: 1052px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-x: scroll;
    overflow-y: hidden;
    -webkit-overflow-scrolling: touch;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
}
table tbody tr td.removeBtn{
	border-left: 1px solid #ddd;
	vertical-align: middle;
	font-weight: bold;
}
.noItems{
	padding-top: 15px;
	padding-left: 10px;
}

/* Overwrite Bootstrap Tooltip stylings*/
.tooltip{
	/* !important needed to overwrite dynamic Bootstrap JS */
	right: 10px !important;
	opacity:100;
	z-index:1;
}

@media (max-width: 899px){
	/* tablets in portrait should use smaller left margin */
	.tooltip{
		/* !important needed to overwrite dynamic Bootstrap JS */
		right: 10px !important;
		opacity:100;
		z-index:1;
	}
}
.tooltip.top .tooltip-arrow{
	/* !important needed to overwrite dynamic Bootstrap JS */
	left: 20px !important;
    border-top-color: rgba(51,51,51,.9);
}
.tooltip-inner {
    max-width: 900px;
    font-size: 20px;
    background-color: #333;
}
#ourPage select, #complete-form select {
	overflow: scroll;
}
div.selectContainer{
	min-width:250px;
	max-width:100%;
}
div.selectContainer select.formInput.answerValue{
	width: auto;
	max-width: none;
}
/*.saveText{
	color: #fff;
	font-weight: bold;
	font-size: 22px;
	position: absolute;
	top: 250px;
	left: 42%;
}*/
#discoPanel {
	text-align: left;
}
#discoPanel .panel-heading {
	background-color: #5FB4E6;
	color: #fff;
	font-weight: bold;
}

/***** SLDS OVERRIDES ******/

/* make the card body background white and have a border at top and bottom */
.slds .slds-card__body.OR-card__body {
	background-color:#fff;
	border-top:2px solid rgb(216, 221, 230);
	border-bottom:2px solid rgb(216, 221, 230);
}

/* There is a bug in chrome 53 on mac where the preview crashes if the widow height is not scrollable
	and the user clicks on a radio button or picklist. Setting a min height forces it to scroll, this class is only used/needed if there is only 1 section on the page, and will be set regardless of browser */
.chrome-preview-fix {
	min-height: 190px;
}

/* format the size of the goToPage select input */
.goToPage .slds-form-element {
	display: inline-block;
	width: 100px;
	margin-left: 20px;
}

/* add border-radius to save modal content */
.slds .slds-modal__content.OR-modal__content {
	border-radius: 4px;
}

/* Center the spinner in the modal */
.slds .slds-spinner--large.OR-spinner-align--center {
	margin-left: auto;
	margin-right: auto;
}

/* Set width for form display question inputs */
.slds .slds-form-element.OR-form-element--width {
	width: 250px;
	max-width: 100%;
}

/* Set width for form display radio button and checkbox list question inputs */
.slds .slds-form-element.OR-form-element--width.table-checkbox,
.slds .slds-form-element.OR-form-element--width.table-radio {
	width: auto;
	max-width:100%;
}

.slds .form-horizontal .slds-form-element__control .slds-select_container {
	max-width: 250px;
}

/* background color for Youreka's body element 
html body.sfdcBody.brandQuaternaryBgr{
	background: none;
	background-color: #e7e7e7;
}*/

.slds div.errorSummary {
	border-radius: 0px;
	margin-bottom: -14px;
}

/* Match font styling for validation errors that do not use SLDS styling (esig, ms-picklist) */
.controls label.error {
	font-weight: normal;
	font-size: 12px;
}

/* add margin to e-sig error message */
.controls .sigPad label.error {
	margin-left: 5px;
}

/* container for save buttons and pagination */
.nav-container {
	display: flex;
	justify-content: center;
}

/* empty div above Form Title that shifts Form Title down when errorSummary is displayed */
.save-error-buffer {
	height: 40px;
	display:none;
}

.slds div.card-background--dark {
    background-color: #39597d;
    color: #fff;
}

.containerBox .text-left-align {
	text-align: left;
}


/****** PREVIEW FORM OVERRIDE STYLES *****/
.tb-modal {
	position:fixed;
	top:15%;
	left:50%;
	transform: translateX(-50%);
	height:auto;
	border: 4px solid black;
	background-color: #e7e7e7;
	display:none;
	border-radius:5px;
	z-index: 888;	
	text-align:center;
	box-sizing: border-box;
	max-height: 450px;
}
.tb-modal #completeFormPage.containerBox {
	max-height: 430px;
	overflow-y: scroll;
}
#fade {
	z-index: 100; /*must be greater than stickyjs index of 10 */
	position: fixed;
	width: 100%;
	height: 100%;
	background-color: rgba(0,0,0,.4);
	top: 0%;
	display: none;
}

.button-row-form {
	background-color: transparent;
}
h1.formName {
	font-size: 30px;
	margin-bottom: 10px;
}
h2.title-form-section {
	font-size: 24px;
	margin: 10px 0;
}

/* adjust modal container to use margin instead of padding so that the spinner fits over just the visible element */
.slds .slds-modal__container.OR-modal-margin {
	padding-top: 0;
	padding-bottom: 0;
	margin-top: 48px;
	margin-bottom: 48px;
}

/* Present autocomplete (typeahead) on top of preview modal-content
	preview modal has z-index of 888 */
.ui-autocomplete {
	z-index: 900;
}


/***** SF1 specific styles (CPG Demo) *****/
.slds.Theme4t .buttons-fixed {
    background-color: transparent;
}
.slds.Theme4t #completeFormPage {
	min-height: calc(100vh - 48px);	// full viewport minus the footer height, so footer is placed at bottom of page, even if page is short
}
.slds.Theme4t .goToPage .slds-badge.js-page-numbering {
	padding: 0px 12px;
	border-radius: 4px;
}

.slds.Theme4t .nav-container {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
}
.slds.Theme4t .template-name, .slds.Theme4t .section-name {
	text-align: left;
	color: #fff;
}
.slds.Theme4t span.goToPage {
	padding: 0px;
	margin-top: 2px;
}
.slds.Theme4t .buttons-fixed {
	padding: 5px 15px;
}
.slds.Theme4t .icon-container {
	display: flex;
	align-items: center;
}

.slds.Theme4t .icon-container-camera {
	width: 40px;
}

.slds.Theme4t .footer {
	width: 100%;
	bottom: 0;
	height: 48px;
	padding: 2px 15px;
}
.slds.Theme4t .footer-pagination-container{
	display: flex;
	justify-content: space-between;
}
.slds.Theme4t .footer-pagination {
	width: 100%;
}
.slds.Theme4t .scroll-message {
	min-height: 36px;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #fff;
	font-size: 14px;
}
.slds.Theme4t .scroll-down-icon {
	padding: 0 5px;
}
.slds.Theme4t .sf1-footer-margin {
    margin-bottom: 47px;
}
.slds.Theme4t .footer-camera-container {
	width: 44px;
	height: 40px;
}
.slds.Theme4t .footer-camera-icon {
	position: absolute;
	top: 4px;
	left: 4px;
}
.slds.Theme4t .footer-icons-left {
    margin-top: 4px;
}
.slds.Theme4t .footer-icons-right {
    margin-top: 2px;
}
.slds.Theme4t button.button-large, .slds.Theme4t button.button-large {
	height: 40px;
	width: 40px;
}

.slds.Theme4t .button-marging-large {
	margin-right: 15px;
}
.slds.Theme4t span.control-label, .slds.Theme4t .template-name, .slds.Theme4t .section-name {
	font-size: 18px;
}
.slds.Theme4t .pagination-container {
	text-align: left;
	display: flex;
	flex-direction: column;
}
.slds.Theme4t .footer-pagination .OR-footer-buttons-width{
	width: 140px;
}
.slds.Theme4t span#normalSaver {
	border-radius: 6px;
	height: 40px;
	padding-right: 12px;
	padding-left: 12px;
}

.slds.Theme4t button.button-finish {
	width: 72px;
}

.slds.Theme4t #normalSaver p {
	margin-top: 6px;
	font-weight: bold;
}

.slds.Theme4t .slds-card__header {
    padding: 0px;
}

.slds.Theme4t .slds-card.sf1-section {
    background-color: transparent;
    margin: 10px;
    border: 0px;
}

.slds.Theme4t .slds-card__body.OR-card__body.sf1-section {
    background-color: transparent;
    border: 0px;
}

.slds.Theme4t .slds-card__body.OR-card__body.sf1-section-linked {
    border-bottom: 1px solid #39597d;
    border-radius: 0px;
}

.slds.Theme4t .form-horizontal .control-group {
    padding-bottom: 0px;
}

/* Make inputs full width */
.slds.Theme4t .controls {
	width: 100%;
	margin: 0;
}

.slds.Theme4t .containerBox div.slds-form-element__control input,
.slds.Theme4t .form-horizontal .slds-form-element__control .slds-select_container,
.slds.Theme4t .containerBox select{
	max-width: 100%;
}

.slds.Theme4t .slds-form-element.OR-form-element--width {
	width: 100%;
}
.slds.Theme4t span.control-label {
	width: 100%;
	max-width: 100%;
	margin: 3px 0;
	text-align: left;
}
.slds.Theme4t span.slds-form-element__label {
	font-size: 18px;
	font-weight: normal;
}
@media (max-width: 480px) {
	.slds.Theme4t .form-horizontal .control-label {
		float: left;
	}
	.slds.Theme4t .pagination-container {
		max-width: 310px;
	}
}
/* add more specificity to make sure slds-hide is hiding items it is placed on */
.slds.Theme4t .slds-hide {
	display: none;
}
/*************************/