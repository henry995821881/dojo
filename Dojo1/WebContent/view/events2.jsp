<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
<h1>Demo: NodeList.on via dojo/query</h1>
<button id="button1" class="clickMe">Click me</button>
<button id="button2" class="clickMeAlso">Click me also</button>
<button id="button3" class="clickMe">Click me too</button>
<button id="button4" class="clickMeAlso">Please click me</button>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
<script>
	require(["dojo/query", "dojo/_base/lang", "dojo/domReady!"], function(query, lang) {
		var myObject = {
			id: "myObject",
			onClick: function(evt){
				alert("The scope of this handler is " + this.id);
			}
		};
		query(".clickMe").on("click", myObject.onClick);
		query(".clickMeAlso").on("click", lang.hitch(myObject, "onClick"));
	});
</script>
</body>
</html>