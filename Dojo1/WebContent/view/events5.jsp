<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
<h1>Demo: Publish and Subscribe with dojo/topic</h1>
<button id="alertButton">Alert the user</button>
<button id="createAlert">Create another alert button</button>
<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
<script>

	require(["dojo/on", "dojo/topic", "dojo/dom", "dojo/dom-construct", "dojo/domReady!"], function(on, topic, dom, domConstruct) {
		var alertButton = dom.byId("alertButton"),
				createAlert = dom.byId("createAlert");

		on(alertButton, "click", function() {
			// When this button is clicked,
			// publish to the "alertUser" topic
			topic.publish("alertUser", "I am alerting you.");
		});

		on(createAlert, "click", function(evt){
			// Create another button
			var anotherButton = domConstruct.create("button", {
				innerHTML: "Another alert button"
			}, createAlert, "after");

			// When the other button is clicked,
			// publish to the "alertUser" topic
			on(anotherButton, "click", function(evt){
				topic.publish("alertUser", "I am also alerting you.");
			});
		});

		// Register the alerting routine with the "alertUser"
		// topic.
		topic.subscribe("alertUser", function(text){
			alert(text);
		});
	});

</script>
</body>
</html>