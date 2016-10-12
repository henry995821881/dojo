<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
<h1>Demo: Event Delegation with dojo/on</h1>
<div id="parentDiv">
	<button id="button1" class="clickMe">Click me</button>
	<button id="button2" class="clickMe">Click me also</button>
	<button id="button3" class="clickMe">Click me too</button>
	<button id="button4" class="clickMe">Please click me</button>
</div>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
<script>

	require(["dojo/on", "dojo/dom", "dojo/query", "dojo/domReady!"], function(on, dom) {
		var myObject = {
			id: "myObject",
			onClick: function(evt){
				alert("The scope of this handler is " + this.id);
			}
		};
		var div = dom.byId("parentDiv");
		on(div, ".clickMe:click", myObject.onClick);
	});
</script>
</body>
</html>
