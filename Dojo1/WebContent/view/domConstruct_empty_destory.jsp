<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
<h1>Demo: empty and destroy</h1>

<button id="destroyFirst">Destroy the first list item</button>
<button id="destroyAll">Destroy all list items</button>

<ul id="list">
	<li id="one">One</li>
	<li id="two">Two</li>
	<li id="three">Three</li>
	<li id="four">Four</li>
	<li id="five">Five</li>
</ul>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug:1, async:1"></script>
<script>
	require(["dojo/dom", "dojo/dom-construct", "dojo/on", "dojo/domReady!"], function(dom, domConstruct, on) {
		function destroyFirst(){
			var list = dom.byId("list"),
					items = list.getElementsByTagName("li");

			if(items.length){
				domConstruct.destroy(items[0]);
			}
		}
		function destroyAll(){
			domConstruct.empty("list");
		}

		// Connect buttons
		on(dom.byId("destroyFirst"), "click", destroyFirst);
		on(dom.byId("destroyAll"), "click", destroyAll);

	});
</script>
</body>
</html>