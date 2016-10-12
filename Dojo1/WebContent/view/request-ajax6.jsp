<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1>Demo: dojo/request/script ajax跨域 </h1>
		<p>Click the button below to see dojo/request/script request recent pull requests for Dojo's GitHub repo.</p>
		<div>
			<button class="action" id="pullrequestsButton">dojo pull requests</button>
		</div>
		<br /><br />
		<ul id="pullrequests">
		</ul>
		<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: 1, async: 1, parseOnLoad: 1"></script>
		<script>
			require(["dojo/dom", "dojo/on", "dojo/request/script",
					"dojo/dom-construct", "dojo/_base/array",
					"dojo/domReady!"
			], function(dom, on, script, domConstruct, arrayUtil){
				var pullsNode = dom.byId("pullrequests");

				// Attach the onclick event handler to tweetButton
				on(dom.byId("pullrequestsButton"), "click", function(evt){
					// Request the open pull requests from Dojo's GitHub repo
					script.get("https://api.github.com/repos/dojo/dojo/pulls", {
						// Use the "callback" query parameter to tell
						// GitHub's services the name of the function
						// to wrap the data in
						jsonp: "callback"
					}).then(function(response){
						// Empty the tweets node
						domConstruct.empty(pullsNode);

						// Create a document fragment to keep from
						// doing live DOM manipulation
						var fragment = document.createDocumentFragment();

						// Loop through each pull request and create a list item
						// for it
						arrayUtil.forEach(response.data, function(pull){
							var li = domConstruct.create("li", {}, fragment);
							var link = domConstruct.create("a", {href: pull.url, innerHTML: pull.title}, li);
						});

						// Append the document fragment to the list
						domConstruct.place(fragment, pullsNode);
					});
				});
			});
		</script>
	</body>
</html>