<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
		#three {
			background:#e3e3e3;
		}
	</style>
</head>
<body>
<h1>Demo: place</h1>

<h4>Move "Three" to the following position</h4>
<button id="moveFirst">The first item</button>
<button id="moveBeforeTwo">Before Two</button>
<button id="moveAfterFour">After Four</button>
<button id="moveLast">The last item</button>

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
		function moveFirst(){
			var list = dom.byId("list"),
					three = dom.byId("three");

			domConstruct.place(three, list, "first");
		}

		function moveBeforeTwo(){
			var two = dom.byId("two"),
					three = dom.byId("three");

			domConstruct.place(three, two, "before");
		}

		function moveAfterFour(){
			var four = dom.byId("four"),
					three = dom.byId("three");

			domConstruct.place(three, four, "after");
		}

		function moveLast(){
			var list = dom.byId("list"),
					three = dom.byId("three");

			domConstruct.place(three, list);
		}

		// Connect the buttons
		on(dom.byId("moveFirst"), "click", moveFirst);
		on(dom.byId("moveBeforeTwo"), "click", moveBeforeTwo);
		on(dom.byId("moveAfterFour"), "click", moveAfterFour);
		on(dom.byId("moveLast"), "click", moveLast);
	});
</script>
</body>
</html>
