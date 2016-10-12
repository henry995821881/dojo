<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

//1 t promises and Deferreds
/*  request("helloworld.txt").then(
	        function(text){
	            console.log("The file's content is: " + text);
	        },
	        function(error){
	            console.log("An error occurred: " + error);
	        }
	    ); */

//////2  request.post
/*  request.post("post-content.php", {
        data: {
            color: "blue",
            answer: 42
        },
        headers: {
           // "X-Something": "A value"
        }
    }).then(function(text){
        console.log("The server returned: ", text);
    }); */


</script>

</head>
<body>
	<h1>Demo: dojo/request/xhr</h1>
		<p>Click the button below to see dojo/request/xhr in action.</p>
		<div>
			<button id="textButton">Request Text File</button>
		</div>
		<br /><br />
		<div id="resultDiv">
		</div>
		<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="isDebug: 1, async: 1, parseOnLoad: 1"></script>
		<script>
			require(["dojo/dom", "dojo/on", "dojo/request", "dojo/domReady!"],
				function(dom, on, request){
					// Results will be displayed in resultDiv
					var resultDiv = dom.byId("resultDiv");

					// Attach the onclick event handler to the textButton
					on(dom.byId('textButton'), "click", function(evt){
						// Request the text file
						request.get("./getResult.txt").then(
							function(response){
								// Display the text file content
								resultDiv.innerHTML = "<pre>" + response + "</pre>";
							},
							function(error){
								// Display the error returned
								resultDiv.innerHTML = "<div class=\"error\">" + error + "<div>";
							}
						);
					});
				}
			);
		</script>
	</body>
</html>