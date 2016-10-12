<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dijit/themes/claro/claro.css" />

<link rel="stylesheet" href="../css/common/demo.css">
<style type="text/css">
/* Any demo specific styling needed for this tutorial only */
#target-node-id {
	width: 420px;
}

.column {
	float:left;
	width:35%;
}
#divTree
{
	width:20em;
}
</style>
</head>
<body class="claro">
<h1>Demo: Dijit Tree</h1>
<div class="column" id="tree">
	<h1>Tree</h1>
	<div id="divTree"></div>
</div>
<div class="column">
	<h1>Image</h1>
	<img id="image" />
</div>

<!-- load dojo -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js"></script>
<script>
	require([
		"dojo/dom",
		"dojo/json",
		"dojo/store/Memory",
		"dijit/tree/ObjectStoreModel",
		"dijit/Tree",
		//"dojo/text!./data/small.json",
		"dojo/domReady!"
	], function(dom, json, Memory, ObjectStoreModel, Tree/* ,data */){

		// set up the store to get the tree data
		var governmentStore = new Memory({
			//data: [ json.parse(data) ],
			data : [data1],
			getChildren: function(object){
				return object.children || [];
			}
		});

		// set up the model, assigning governmentStore, and assigning method to identify leaf nodes of tree
		var governmentModel = new ObjectStoreModel({
			store: governmentStore,
			query: {id: 'root'},
			mayHaveChildren: function(item){
				return "children" in item;
			}
		});

		// set up the tree, assigning governmentModel;
		var governmentTree = new Tree({
			model: governmentModel,
			onOpenClick: true,
			onLoad: function(){
				dom.byId('image').src = '../image/root.jpg';
			},
			onClick: function(item){
				dom.byId('image').src = '../image/'+item.id+'.jpg';

			},
			persist: false
		}, "divTree");
		governmentTree.startup();
	});
</script>

<script type="text/javascript">
var data1 ={
		"name": "US Government",
		"id": "root",
		"children": [
			{
				"name": "Congress",
				"id": "congress"
			},
			{
				"name": "Executive",
				"id": "exec"
			},
			{
				"name": "Judicial",
				"id": "judicial"
			}
		]
	}
;

</script>
</body>
</html>
