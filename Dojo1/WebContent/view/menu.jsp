<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo: Dijit Menus</title>
	
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dijit/themes/claro/claro.css" media="screen">
</head>
<body class="claro">
<h3>Menu Demo</h3>
<div id="mainMenu" data-dojo-type="dijit/Menu">
	<div id="edit" data-dojo-type="dijit/MenuItem">Edit</div>
	<div id="view" data-dojo-type="dijit/MenuItem">View</div>
	<div id="task" data-dojo-type="dijit/MenuItem">Task</div>
</div>
<p>Last selected: <span id="lastSelected">none</span></p>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug:1, async:1"></script>
<script>
	require([
		"dijit/registry",
		"dojo/parser",
		"dojo/dom",
		"dijit/WidgetSet", // for registry.byClass
		"dijit/Menu",
		"dijit/MenuItem",
		"dojo/domReady!"
	], function(registry, parser, dom){
		// a menu item selection handler
		var onItemSelect = function(event){
			dom.byId("lastSelected").innerHTML = this.get("label");
		};

		parser.parse();

		registry.byClass("dijit.MenuItem").forEach(function(item){
			item.on('click', onItemSelect);
		});
	});
</script>
</body>
</html>