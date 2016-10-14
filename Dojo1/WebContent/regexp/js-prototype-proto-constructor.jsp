<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

//Parent 中的 this方法，this.属性会被继承 
//Parent.prototype 的 方法和属性会被继承
//继承通过 Child.prototype = new Parent();
//Parent 的 this.方法，this.属性 ，会放到Child的prototype中，
//Parent 的prototype 方法属性，会放到Child的prototype._proto中，

 var Anm = function (name){
	
        this.name =name,

        this.peer = function(){
        	
        	console.log(" peer");
        	
        }
}

Anm.prototype = {
	
		
		drink:function(){
			
			console.log("drink");
		}
		
};

Anm.prototype.eat =function(){
	
	console.log(" eat");
}

var Cat = function(){
	
	
}

Cat.prototype = new Anm("anm");


Cat.prototype.scream = function(){
	
	console.log(" scream");
}

var cat = new Cat();
cat.scream();
cat.eat();
cat.drink();
cat.peer();
console.log(cat.name);
console.log(Cat.prototype);






</script>
</head>
<body>

</body>
</html>