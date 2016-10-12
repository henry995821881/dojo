<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>Demo: array</h1>

	<br />
	<br />

	<!-- load dojo and provide config via data attribute -->
	<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
	<script>
		require([ "dojo/_base/array" ], function(arrayUtil) {
			var arr1 = [ 1, 2, 3, 4, 3, 2, 1, 2, 3, 4, 3, 2, 1 ];
			arrayUtil.indexOf(arr1, 2); // returns 1
			arrayUtil.indexOf(arr1, 2, 2); // returns 5
			arrayUtil.lastIndexOf(arr1, 2); // returns 11
			alert(arrayUtil.lastIndexOf(arr1, 2)); // returns 11
			
			
			//////////////////////////////////////////
			
			var obj1 = {
					id : 1
				}, 
				
				arr2 = [ 
				         {
					id : 0
				}, 
				
				obj1, 
				
				{
					id : 2
				},
				
				{
					id : 3
				} 
				
				];

				// This search returns 1, as obj1 is the second item
				// in the array.
				arrayUtil.indexOf(arr2, obj1);

				// This search returns -1. While the objects may look similar,
				// they are entirely different objects, and so this object
				// isn't found in the array.
				arrayUtil.indexOf(arr2, {
					id : 1
				});
		});

		
		
		
		
		
	</script>
</body>
</html>