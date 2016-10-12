<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	

	</head>
	<body>
		<h1>Tutorial: NodeList</h1>

		<p>Click the buttons below to execute the corresponding query and NodeList functions.</p>

		<button id="oddForEach">query(".odd").forEach(...)</button><br />
		<button id="evenAddBlue">query(".even").addClass("blue")</button><br />
		<button id="oddAddBlue">query(".odd").removeClass("red").addClass("blue")</button><br />
		<button id="evenStyle">query(".even").style("color", "white").addClass("italic")</button><br />

		<br />
		<div id="list">
			<div class="odd">One</div>
			<div class="even">Two</div>
			<div class="odd">Three</div>
			<div class="even">Four</div>
			<div class="odd">Five</div>
			<div class="even">Six</div>
		</div>

		<p>This list is rendered from the following markup:</p>
<pre class="brush: html;">&lt;div id="list"&gt;
	&lt;div class="odd"&gt;One&lt;/div&gt;
	&lt;div class="even"&gt;Two&lt;/div&gt;
	&lt;div class="odd"&gt;Three&lt;/div&gt;
	&lt;div class="even"&gt;Four&lt;/div&gt;
	&lt;div class="odd"&gt;Five&lt;/div&gt;
	&lt;div class="even"&gt;Six&lt;/div&gt;
&lt;/div&gt;</pre>

		<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: 1, async: 1, parseOnLoad: 1"></script>
		<script>

			// Wait for the DOM to be ready before working with it
			require(["dojo/query", "dojo/dom-class", "dojo/on",
				"dojo/dom", "dojo/NodeList-dom", "dojo/domReady!"
			], function(query, domClass, on, dom) {

				function oddForEach(){
					query(".odd").forEach(function(node){
						// For each node with a class of "odd",
						// remove the class "blue" and add the class "red"
					
						node.innerHTML ="ood00";
					});
				}

				function oddAddBlue(){
					// For each node with a class of "odd",
					// remove the class "red" and add the class "blue"
					query(".odd").style("color","red");
				}

				function evenAddBlue(){
					// For each node with a class of "even",
					// add the class "blue"
					query(".even").style("color","blue");
				}

				function evenStyle(){
					// For each node with a class of "even",
					// Set its color CSS style to "white" and add a class of "italic"
					query(".even").style("color", "white");
				}

				// Connect the buttons
				on(dom.byId("oddForEach"), "click", oddForEach);
				on(dom.byId("evenAddBlue"), "click", evenAddBlue);
				on(dom.byId("oddAddBlue"), "click", oddAddBlue);
				on(dom.byId("evenStyle"), "click", evenStyle);

			});

		</script>
	</body>
</html>
