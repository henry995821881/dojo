<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var str =' sdjflsdfjkljlk[{"name":"a","age":1},{"name":"z","age":1},{"name":"z","age":1},{"name":"z","age":1},{"name":"z","age":1},{"name":"z","age":1},{"name":"z","age":1}]sjdafljj23kjkdf';

var s =str.match(/\[\{.+\}\]/g);
alert(s);
var obj =  eval("("+s+")");
console.log(obj[1].name);

</script>

</head>
<body>





</body>
</html>