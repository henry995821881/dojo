<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1>Demo: dojo/request/xhr</h1>
		<p>Click the button below to see dojo/request/xhr in action.</p>
		<div>
			<form action="" id="formNode">
			<input type="text" name="user"><br>
			<input type="text" name="password"><br>
			<input type="submit" value="submit">
			</form>
		</div>
		<br /><br />
		
		<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: 1, async: 1, parseOnLoad: 1"></script>
		<script>
		
		

		require(["dojo/dom", "dojo/on", "dojo/request", "dojo/dom-form"],
		    function(dom, on, request, domForm){
		        // Results will be displayed in resultDiv

		        var form = dom.byId('formNode');

		        // Attach the onsubmit event handler of the form
		        on(form, "submit", function(evt){

		            // prevent the page from navigating after submit
		            evt.stopPropagation();
		            evt.preventDefault();

		            // Post the data to the server
		            var promise = request.post("../LoginPost", {
		                // Send the username and password
		                data: domForm.toObject("formNode"),
		                // Wait 2 seconds for a response
		                timeout: 2000
		            });

		            // Use promise.response.then, NOT promise.then
		            promise.response.then(function(response){

		                // get the message from the data property
		                var message = response.data;

		                // Access the 'Auth-Token' header
		                var token = response.getHeader('Auth-Token');

		               alert(token);
		               alert(message);
		            });
		        });
		    }
		);
		
		</script>
	</body>
</html>