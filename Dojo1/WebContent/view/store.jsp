<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/resources/dojo.css" />
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dijit/themes/claro/claro.css" />
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojox/grid/resources/Grid.css" />
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojox/grid/resources/claroGrid.css" />

<style type="text/css">
#target-node-id {
	width: 800px;
	height: 300px;
}
</style>
</head>
<body class="claro">
	<h1>Demo: Connecting DataGrid to a Store</h1>
	<p class="tip">This is a front-end code demonstration and is not connected to a server with data persistence, so while the code provided will work with a server that provides the appropriate REST API, clicking "Save" in this demo will not work.</p>

	<div id="target-node-id"></div>
	<button id="save">Save</button>
	<!-- load dojo and provide config via data attribute -->
	<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true, isDebug: true, parseOnLoad: true"></script>
	<script>
		require(
				[ "dojo/store/JsonRest", "dojo/store/Memory",
						"dojo/store/Cache", "dojox/grid/DataGrid",
						"dojo/data/ObjectStore", "dojo/query", "dojo/domReady!" ],
				function(JsonRest, Memory, Cache, DataGrid, ObjectStore, query) {
					var myStore, dataStore, grid;
					myStore = new Cache(JsonRest({
						target : "../StoreJson"
					}), new Memory());
					grid = new DataGrid({
						store : dataStore = new ObjectStore({
							objectStore : myStore
						}),
						structure : [ {
							name : "id",
							field : "id",
							editable : true,
							width : "150px"
							
						}, {
							name : "capital",
							field : "capital",
							editable : true,
							width : "200px"
						}, {
							name : "State Name",
							field : "name",

							width : "200px"
						}, {
							name : "Abbreviation",
							field : "abbreviation",
							width : "200px",
							editable : true
						} ]
					}, "target-node-id"); // make sure you have a target HTML element with this id
					grid.startup();
					/* query("#save").on("click", function(){
						dataStore.save();
					}); */
				});
	</script>
</body>
</html>
