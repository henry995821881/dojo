<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
<h1>Demo: create</h1>

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
	require(["dojo/dom", "dojo/dom-construct", "dojo/domReady!"], function(dom, domConstruct) {
		var list = dom.byId("list"),
				three = dom.byId("three");

		domConstruct.create("li", {
			innerHTML: "Six"
		}, list);

		domConstruct.create("li", {
			innerHTML: "Seven",
			className: "seven",
			style: {
				fontWeight: "bold"
			}
		}, list);

		domConstruct.create("li", {
			innerHTML: "Three and a half"
		}, three, "after");

	});
</script>
</body>
</html>