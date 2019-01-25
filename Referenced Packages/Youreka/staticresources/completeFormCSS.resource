html,body {
	height:auto;
	/*height:100%; removed, doesnt reach bottom of long forms */
	width:auto;
}

.containerBox input[type=text],[type=number],[type=date],[type=datetime-local],[type=url],[type=phone],[type=email] {
	width: 100%;
	max-width:250px;	
}

/* remove linked section button (X) */
.remove-linked-section {
	margin-left:90%;
	cursor:pointer;
}

/* conatiner for remove linked section button (x) */
.remove-linked-section-container {
	position:absolute;
	right:20px;
}

/*lookup field needs to be smaller due to lookup icon (leave some buffer % for mag glass icon that cant adjust)*/
.lookupInput input[type=text] {
	width:80%;
}
/* lookup mag glass icon*/
.lookupInput a {
	width:12%;
}
/* remove margin right defined for mag glass icon by SF*/
.lookupInput img {
	margin-right:0px;
}

.containerBox textarea {
	max-width:100%;
}

.containerBox select {
	width: 98%;
	max-width: 250px;
}

.containerBox input, .containerBox select {
	padding:0;
	max-height:100px; 
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
/*This was causing issues with select.goToPage.
 I left it commented out incase removing it breaks other things*/
/*.containerBox input, select:not([multiple]) {
	height:28px !important;
}*/

.containerBox {
	height:100%;
	border-bottom: 1px solid black;
}
.containerBox h2 {
	display:block;
	font-size:20px;
	padding-top:10px;
	padding-bottom:10px;	
	margin:0;
	border-top:1px solid black;
}

.answerColumn {
	vertical-align:top;
	display:inline-block;
	width:49%;
}

/* page X of X text*/
.paginationBlock {
	margin:20px auto;
	height:30px;
	line-height:30px;
}
.buttons .paginationBlock .prevPage {
	float:left;
	width:20px;
}
.buttons .paginationBlock .nextPage {
	float:right;
	width:20px;
}

/* fix to make scrollbar on multi-select picklists always display*/
.multiselectList {
    overflow-y: auto;
    border: 1px solid black;
    height: 3em;
    width: 10em;
    line-height: 1em;
}
.multiselectList::-webkit-scrollbar {
    -webkit-appearance: none;
}
.multiselectList::-webkit-scrollbar:vertical {
    width: 11px;
}
.multiselectList::-webkit-scrollbar:horizontal {
    height: 11px;
}
.multiselectList::-webkit-scrollbar-thumb {
    border-radius: 8px;
    border: 2px solid white; /* should match background, can't be transparent */
    background-color: rgba(0, 0, 0, .5);
}

/* override standard required style to not wrap */
.requiredInput {
	display:inline-block;
	width:100%;
}	

/* override salesforce input width for date style */
.dateOnlyInput input {
	width:206px;
}

/* helps with aligning form in the center */
.formContent {		
	display:inline-block;
	text-align:left;	
	margin-bottom:20px;
	width:100%;
}

.helperText {
	font-size:12px;
	font-weight:bold;
}


.requiredBlock {
	width:2%;
	max-width:3px;
	display:inline-block;
	vertical-align:top;
	height:28px;
	background-color:red;
}

.buttons {
	text-align:center;
	padding-top:10px;
	padding-bottom:10px;
	border-top: 1px solid black;
}

.indentOnce {
	padding-left:20px;
}
.indentTwice {
	padding-left:40px;
}
.indentThrice {
	padding-left:60px;
}

.containerBox form {
	width:80%;
	margin: 0 auto;		
	text-align:center;
	min-height:100%;
}

/* don't show SF todays date text */
.dateFormat {
	display:none;
}

/* stop bootstrap from applying width to datepicker modal */
.datePicker select {
	width:auto;
}


       
.lengthError, .blankError, .decimalError, .emailError {
	color:red;
	font-size:12px;
}

/* override standard bootstrap style for disabled input so it stays on the same line */
.uneditable-input {
	display:block !important;
}

.returnLink {
	text-align:left;
	display:block;
	margin-left:5px;
	margin-bottom:5px;
	font-size:16px;
}

/* labels have normal cursors */
label {
	cursor:default;
}

/* proper spacing of long picklist texts */
#completeFormPage label.slds-radio.radio-list ,
#completeFormPage .slds-form-element__control label.slds-checkbox {
    display: flex;
 }

.slds label.slds-radio .slds-form-element__label,
.slds label.slds-checkbox .slds-form-element__label {
    flex: 0 1 auto;
 }

.slds label.slds-radio .slds-radio--faux,
.slds label.slds-checkbox .slds-checkbox--faux {
	margin-top:2px;
	flex: 0 0 auto;
}

/* give color to disabled picklists on form display page by overriding SLDS disabled color*/
#completeFormPage.slds .currentPageContainer .slds-checkbox [type="checkbox"][disabled] + .slds-checkbox--faux:after,
#completeFormPage.slds .currentPageContainer .slds-checkbox [type="checkbox"][disabled] ~ .slds-checkbox--faux:after,
#completeFormPage.slds .currentPageContainer .slds-radio [type="radio"][disabled] + .slds-radio--faux:after,
#completeFormPage.slds .currentPageContainer .slds-radio [type="radio"][disabled] ~ .slds-radio--faux:after {
	border-color: #1589EE;
}

/* format for printing */
@media print {
	#sidebarCell,
	#bPageTitle,
	#chatterfeedshell,
	#AppBodyHeader,
	#section_header,
	#completeFormPage div.buttons {
		display:none;
	}

	#completeFormPage {
		background-color:#fff;
		font-size:12px;
		width: 100%; 
		margin: 0; 
		float: none; 
	}

	#completeFormPage .nav-container {
		display:none;
	}

	#completeFormPage select[multiple] option:checked {
		border: 1px solid #1589EE;
		border-radius: 2px;
	}

	#completeFormPage .slds-radio [type="radio"]:checked + .slds-radio--faux:after,
	#completeFormPage .slds-radio [type="radio"]:checked ~ .slds-radio--faux:after {
		background-color: #1589EE;
		border: 5px solid #1589EE;
	}
}

/*override bootstrap form elements to be percentage based */
.form-horizontal .control-label {
	width:45%;
}
.form-horizontal .controls {
	margin-left:50%;
	width:45%;
}

/* button styles for SF and bootstrap are conflicting, override them here 
.buttons .btn-primary {
	background:none;
	background-color:#006dcc;
	color:white;
	border-color:rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	height:30px;
}
.buttons .btn-primary:hover {
	background-color:#0044cc;
}
.buttons .btn-primary {
	background:none;
	background-color:#006dcc;
	color:white;
	border-color:rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	height:30px;
	width:120px;
	margin: 1px 3px;	
}
.buttons .btn {
	background:none;
	height:30px;
	background-color:#f5f5f5;
	color:#333333;
	width:120px;
	text-shadow:none;
	margin: 1px 3px;
}
.buttons .btn:hover {
	background-color:#e6e6e6;
}
*/
.buttons .btn {
	width: 150px;
	margin: 0 5px;
}
/* media styles ********************************************************/

/* overriding some breakpoint styles */
@media (max-width: 1100px) {

  	
  	.indentOnce {
  		padding-left:10px;
  	}
  	.indentTwice {
  		padding-left:20px;
  	}
  	.indentThrice {
  		padding-left:30px;
  	}

}

@media (max-width: 767px) {
	body {
  		padding:0px !important;
  	}
}

@media (max-width: 680px) {
	.containerBox form, .containerBox {
  		width:100% !important;
  	}  	
}
       


/* re-asserting the bootstrap style to make labels appear over text fields since we expanded the text field length*/
@media (max-width: 480px) {

  	.form-horizontal .indentOnce, .form-horizontal .indentTwice, .form-horizontal .indentThrice {
  		padding-left:0;
  	}

  	.answerColumn {
  		display:block;
  		width:100%;
  	}

  	.form-horizontal .controls {
  		width:95%;
  	}
  	
  	.containerBox form, .containerBox {
  		width:100% !important;
  	}  	
  	
  	.form-horizontal .control-label {
  		text-align:left !important;
  		width:100% !important;
  	}
  	.form-horizontal .controls {
  		margin-left: 0px !important;
  	}
  	body {
  		padding:0px !important;
  	}
}

