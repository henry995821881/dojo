<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo: Dijit Select</title>
	
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dijit/themes/claro/claro.css" media="screen">
</head>
<body class="claro">
<div style="width:540px;">
	<h1 style="text-align: center;">Programmatic Example</h1>
	<div style="width:50%;float: left;">
		<h1>dijit/form/Select</h1>
		<label for="stateSelect">State:</label>
		<div id="stateSelect"></div>
	</div>
	<div style="width:50%;float: right;"><h1>Values:</h1>
		<div><strong>value:</strong> <span id="value"></span></div>
		<div><strong>displayedValue:</strong> <span id="displayedValue"></span></div>
		<h5>*Note how the submitted value will be the identity of the store item</h5>
	</div>
</div>

<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: true, async: true"></script>
<script>

	require(["dijit/form/Select", "dojo/store/Memory",
				 "dojo/domReady!"],
			function(Select, Memory){

				// create store instance referencing data from states.json
				var stateStore = new Memory({
					idProperty: "id_prop",//id属性
					data: d
				});

				// create Select widget, populating its options from the store
				var select = new Select({
					name: "stateSelect",
					store: stateStore,
					style: "width: 200px;",
					labelAttr: "name",//label属性
					maxHeight: -1, // tells _HasDropDown to fit menu within viewport
					onChange: function(value){
						document.getElementById("value").innerHTML = value;
						document.getElementById("displayedValue").innerHTML = this.get("displayedValue");
					}
				}, "stateSelect");
				select.startup();
			});

</script>

<script type="text/javascript">

var d =[
    	{ "id_prop": "AL", "name": "Alabama" },
    	{ "id_prop": "AK", "name": "Alaska" },
    	{ "id_prop": "AZ", "name": "Arizona" },
    	{ "id_prop": "AR", "name": "Arkansas" },
    	{ "id_prop": "CA", "name": "California" },
    	{ "id_prop": "CO", "name": "Colorado" },
    	{ "id_prop": "CT", "name": "Connecticut" },
    	{ "id_prop": "DE", "name": "Delaware" },
    	{ "id_prop": "FL", "name": "Florida" },
    	{ "id_prop": "GA", "name": "Georgia" },
    	{ "id_prop": "HI", "name": "Hawaii" },
    	{ "id_prop": "ID", "name": "Idaho" },
    	{ "id_prop": "IL", "name": "Illinois" },
    	{ "id_prop": "IN", "name": "Indiana" },
    	{ "id_prop": "IA", "name": "Iowa" },
    	{ "id_prop": "KS", "name": "Kansas" },
    	{ "id_prop": "KY", "name": "Kentucky" },
    	{ "id_prop": "LA", "name": "Louisiana" },
    	{ "id_prop": "ME", "name": "Maine" },
    	{ "id_prop": "MD", "name": "Maryland" },
    	{ "id_prop": "MA", "name": "Massachusetts" },
    	{ "id_prop": "MI", "name": "Michigan" },
    	{ "id_prop": "MN", "name": "Minnesota" },
    	{ "id_prop": "MS", "name": "Mississippi" },
    	{ "id_prop": "MO", "name": "Missouri" },
    	{ "id_prop": "MT", "name": "Montana" },
    	{ "id_prop": "NE", "name": "Nebraska" },
    	{ "id_prop": "NV", "name": "Nevada" },
    	{ "id_prop": "NH", "name": "New Hampshire" },
    	{ "id_prop": "NJ", "name": "New Jersey" },
    	{ "id_prop": "NM", "name": "New Mexico" },
    	{ "id_prop": "NY", "name": "New York" },
    	{ "id_prop": "NC", "name": "North Carolina" },
    	{ "id_prop": "ND", "name": "North Dakota" },
    	{ "id_prop": "OH", "name": "Ohio" },
    	{ "id_prop": "OK", "name": "Oklahoma" },
    	{ "id_prop": "OR", "name": "Oregon" },
    	{ "id_prop": "PA", "name": "Pennsylvania" },
    	{ "id_prop": "RI", "name": "Rhode Island" },
    	{ "id_prop": "SC", "name": "South Carolina" },
    	{ "id_prop": "SD", "name": "South Dakota" },
    	{ "id_prop": "TN", "name": "Tennessee" },
    	{ "id_prop": "TX", "name": "Texas" },
    	{ "id_prop": "UT", "name": "Utah" },
    	{ "id_prop": "VT", "name": "Vermont" },
    	{ "id_prop": "VA", "name": "Virginia" },
    	{ "id_prop": "WA", "name": "Washington" },
    	{ "id_prop": "WV", "name": "West Virginia" },
    	{ "id_prop": "WI", "name": "Wisconsin" },
    	{ "id_prop": "WY", "name": "Wyoming" }
    ];

</script>
</body>
</html>
