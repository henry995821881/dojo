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
<div id="mainMenu"></div>
<p>Last selected: <span id="lastSelected">none</span></p>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug:1, async:1"></script>
<script>
	require([
		"dojo/dom",
		"dijit/registry",
		"dijit/Menu",
		"dijit/MenuItem",
		"dojo/domReady!"
	], function(dom, registry, Menu, MenuItem){
		// a menu item selection handler
		var onItemSelect = function(event){
			dom.byId("lastSelected").innerHTML = this.get("label");
		};
		// create the Menu container
		var menu = new Menu({}, "mainMenu");

		// create and add child item widgets
		// for each of "edit", "view", "task"
		menu.addChild(new MenuItem({
			id: "edit",
			label: "Edit",
			onClick: onItemSelect
		}));

		menu.addChild(new MenuItem({
			id: "view",
			label: "View",
			onClick: onItemSelect
		}));

		menu.addChild(new MenuItem({
			id: "task",
			label: "Task",
			onClick: onItemSelect
		}));

		menu.startup();
	});
</script>
</body>
</html>
