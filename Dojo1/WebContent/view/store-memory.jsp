<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body class="claro">


<!-- load dojo and provide config via data attribute -->
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" data-dojo-config="async: true, isDebug: true, parseOnLoad: true"></script>
<script>
require(["dojo/store/Memory"], function(Memory){
    var someData = [
        {id:1, name:"One"},
        {id:2, name:"Two"}
    ];
    store = new Memory({data: someData});

    console.log(store.get(1)); // Returns the object with an id of 1

    var a =store.query({name:"One"}) // Returns query results from the array that match the given query
    console.log(a);

    store.query(function(object){
        return object.id > 1;
    }) // Pass a function to do more complex querying

    store.query({name:"One"}, {sort: [{attribute: "id"}]}) // Returns query results and sort by id

    store.put({id:3, name:"Three"}); // store the object with the given identity

    store.remove(3); // delete the obj
});
</script>
</body>
</html>
