var request = require('request');
var fs = require('fs');
var cheerio = require('cheerio');

var path = "test8.html";






fs.readFile(path,'utf-8',function(err,data){
	
	if(err){
		
		console.log("parse :"+path+"  fail");
		return;
	}
	
	console.log(data);
	      var $ =  cheerio.load(data);
	
	    var $items_div =   $("#content_left");
	   
	    $items_div.each(function(i,elem){
	    	console.log("****---->");
	    	console.log(elem.innerHTML);
	    	
	    });
	
});