<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo: Nested BorderContainer</title>

<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dijit/themes/claro/claro.css" media="screen">
</head>
<body class="claro">
	<div class="demoLayout" style="height: 300px; width: 300px" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="design: 'headline'">
		<div class="centerPanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region: 'center'">center1</div>
		
		
		
		<div class="demoLayout" style="height: 50%" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="region: 'top', splitter: true, design: 'headline'">
			<div class="centerPanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region: 'center'">center2</div>
			<div class="edgePanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region: 'bottom'">bottom3</div>
		</div>
		
		
		
		<div class="edgePanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter: true, region: 'left'">left4</div>
		
		
		
		<div class="demoLayout" style="width: 50%" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="region: 'right', design: 'headline'">
			<div class="centerPanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region: 'center'">center5</div>
			<div class="edgePanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region: 'left'">left6</div>
		</div>
		
		
		
		<div class="edgePanel" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="splitter: true, region: 'bottom'">bottom7</div>
		
		
		
	</div>
	<!-- load dojo -->
	<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js"></script>
	<script>
		require([ "dojo/parser", "dijit/layout/BorderContainer",
				"dijit/layout/ContentPane", "dojo/domReady!" ],
				function(parser) {
					parser.parse();
				});
	</script>
</body>
</html>
