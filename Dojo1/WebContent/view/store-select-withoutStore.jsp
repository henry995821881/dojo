<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo: Dijit Select using options</title>

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
		<h5>*Note how the submitted value will be the internal option value</h5>
	</div>
</div>

<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: true, async: true"></script>
<script>
	require(["dijit/form/Select", "dojo/store/Memory", "dojo/domReady!"],
			function(Select, Memory){
				var select = new Select({
					name: "stateSelect",
					options: [
						{
							value: "",
							label: "Select a state",
							selected: true
						},
						{
							value: "AL",
							label: "Alabama"
						},
						{
							value: "AK",
							label: "Alaska"
						},
						{
							value: "AZ",
							label: "Arizona"
						},
						{
							value: "AR",
							label: "Arkansas"
						},
						// ... more states would go here ...
						{
							value: "DC",
							label: "Washington, D.C.",
							disabled: true // can't pick this; it's not a state!
						},
						{
							value: "WY",
							label: "Wyoming"
						}
					],
					onChange: function(value){
						document.getElementById("value").innerHTML = value;
						document.getElementById("displayedValue").innerHTML = this.get("displayedValue");
					}
				}, "stateSelect");
				select.startup();
			});

</script>
</body>
</html>
