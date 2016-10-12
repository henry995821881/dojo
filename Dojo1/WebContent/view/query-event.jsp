<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	

	</head>
	<body>
	<h1>Tutorial: NodeList Events</h1>

		<button class="hookUp demoBtn">Click Me!</button>
		<button class="hookUp demoBtn">Click Me!</button>
		<button class="hookUp demoBtn">Click Me!</button>
		<button class="hookUp demoBtn">Click Me!</button>

		<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: 1, async: 1, parseOnLoad: 1"></script>
		<script>
			// Wait for the DOM to be ready before working with it
			require(["dojo/query", "dojo/domReady!"], function(query) {
				query(".hookUp").on("click", function(){
					alert("This button is hooked up!");
				});
			});
		</script>
	</body>
</html>
