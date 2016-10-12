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
<h1>Demo: Tree Drag & Drop, and Dynamic Changes</h1>
<p>Double-click on an item to edit it</p>
<div id="tree"></div>
<p><button id="add-new-child">Add new child to selected item</button></p>
<p><button id="remove">Remove selected item</button></p>

<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
<script>
	require([
		"dojo/aspect",
		"dojo/json",
		"dojo/query",
		"dojo/store/Memory",
		"dojo/store/Observable",
		"dijit/Tree",
		"dijit/tree/ObjectStoreModel",
		"dijit/tree/dndSource",
	/* 	"dojo/text!./data/all.json", */
		"dojo/domReady!"
	], function(aspect, json, query, Memory, Observable,
				Tree, ObjectStoreModel, dndSource/* , data */){

		// set up the store to get the tree data, plus define the method
		// to query the children of a node
		var governmentStore = new Memory({
			//data: json.parse(data),
			data: data1,
			getChildren: function(object){
				return this.query({parent: object.id});
			}
		});

		// To support dynamic data changes, including DnD,
		// the store must support put(child, {parent: parent}).
		// But dojo/store/Memory doesn't, so we have to implement it.
		// Since our store is relational, that just amounts to setting child.parent
		// to the parent's id.
		aspect.around(governmentStore, "put", function(originalPut){
			return function(obj, options){
				if(options && options.parent){
					obj.parent = options.parent.id;
				}
				return originalPut.call(governmentStore, obj, options);
			}
		});

		// give store Observable interface so Tree can track updates
		governmentStore = new Observable(governmentStore);

		// create model to interface Tree to store
		var model = new ObjectStoreModel({
			store: governmentStore,

			// query to get root node
			query: {id: "root"}
		});

		var tree = new Tree({
			model: model,
			dndController: dndSource,
			persist: false
		}, "tree"); // make sure you have a target HTML element with this id
		tree.startup();

		query("#add-new-child").on("click", function(){
			// get the selected object from the tree
			var selectedObject = tree.get("selectedItems")[0];
			if(!selectedObject){
				return alert("No object selected");
			}

			// add a new child item
			var childItem = {
				name: "New child",
				id: Math.random()
			};
			governmentStore.put(childItem, {
				overwrite: true,
				parent: selectedObject
			});
		});

		query("#remove").on("click", function(){
			var selectedObject = tree.get("selectedItems")[0];
			if(!selectedObject){
				return alert("No object selected");
			}
			governmentStore.remove(selectedObject.id);
		});

		tree.on("dblclick", function(object){
			object.name = prompt("Enter a new name for the object");
			governmentStore.put(object);
		}, true);
	});
</script>

<script type="text/javascript"> 
var data1 =[
        	{
        		"name": "US Government",
        		"id": "root"
        	},
        		{
        			"name": "Congress",
        			"id": "congress",
        			"parent": "root"
        		},
        			{
        				"name": "House of Representatives",
        				"id": "house",
        				"parent": "congress"
        			},
        			{
        				"name": "Senate",
        				"id": "senate",
        				"parent": "congress"
        			},
        		{
        			"name": "Executive",
        			"id": "exec",
        			"parent": "root"
        		},
        			{
        				"name": "President",
        				"id": "pres",
        				"parent": "exec"
        			},
        			{
        				"name": "Vice President",
        				"id": "vice-pres",
        				"parent": "exec"
        			},
        			{
        				"name": "Secretary of State",
        				"id": "state",
        				"parent": "exec"
        			},
        			{
        				"name": "Cabinet",
        				"id": "cabinet",
        				"parent": "exec"
        			},
        				{
        					"name": "National Security Council",
        					"id": "security",
        					"parent": "cabinet"
        				},
        				{
        					"name": "Council of Economic Advisers",
        					"id": "economic",
        					"parent": "cabinet"
        				},
        				{
        					"name": "Office of Management and Budget",
        					"id": "budget",
        					"parent": "cabinet"
        				},
        		{
        			"name": "Judicial",
        			"id": "judicial",
        			"parent": "root"
        		}
        ];

</script>
</body>
</html>
