<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>Demo: array</h1>

<ul id="list1">

</ul>
	<br />
	<br />

	<!-- load dojo and provide config via data attribute -->
	<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true"></script>
	<script>
		require([ "dojo/_base/array", "dojo/dom", "dojo/dom-construct", "dojo/domReady!"], 
				function(arrayUtil,dom,domConstruct) {
			
			
			var arr = ["one", "two", "three", "four"],
		    // dom is from dojo/dom
		    list1 = dom.byId("list1");

		// Skip over index 4, leaving it undefined
		arr[5] = "six";

		arrayUtil.forEach(arr, function(item, index){
		    // This function is called for every item in the array
		    if(index == 3){
		        // this changes the original array,
		        // which changes the item passed to
		        // the sixth invocation of this function
		        arr[5] = "seven";
		    }

		    // domConstruct is available at dojo/dom-construct
		    domConstruct.create("li", {
		        innerHTML: item + " (" + index + ")"
		    }, list1);
		});
			
			
		
		
		//////2返回一个新数组
		var mapped = arrayUtil.map(original, function(item, index){
                return {
                     id: index * 100,
                     text: item
                      };
             }); // [ { id: 0, text: "one" }, { id: 100, text: "two" }, ... ]
			
		});

		
	///////////3 返回过滤后的数组
		var filtered = arrayUtil.filter(mapped, function(item, index){
			
                     return item.id &gt; 50 && item.id &lt; 350;
                     
                 }); // [ { id: 100, text: "two" }, { id: 200, text: "three" },
                  //   { id: 300, text: "four" } ]
		
		/////////////5
		var arr1 = [1,2,3,4,5],
            arr2 = [1,1,1,1,1];

        arrayUtil.every(arr1, function(item){ return item == 1; }); // returns false
        arrayUtil.some(arr1, function(item){ return item == 1; });  // returns true

        arrayUtil.every(arr2, function(item){ return item == 1; }); // returns true
        arrayUtil.some(arr2, function(item){ return item == 1; });  // returns true

        arrayUtil.every(arr2, function(item){ return item == 2; }); // returns false
        arrayUtil.some(arr2, function(item){ return item == 2; });  // returns false
	</script>
</body>
</html>