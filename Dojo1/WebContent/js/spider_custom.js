/**
 * 
 * 火狐共通 param items condition
 * 前提是使用了jquery
 * item_text item 取text（）的属性 item_link item 取 href的属性
 * 
 * 
 */
function parseDom(items, item_text, item_link) {

	var items_ = $(items);

	var items_json = [];

	items_.each(function(index, ele) {

		var item = $(this);
		var item_ = {};

		for (name in item_text) {

			item_[name] = item.find(item_text[name]).text();

		}

		for (name in item_link) {

			item_[name] = item.find(item_link[name]).attr("href");

		}

		items_json.push(item_);

	});

	return items_json;

}

var item_text = {
	title : ".t > a",
	content : ".c-abstract"

};
var item_link = {
	link : ".t > a"
};
var items = "div.result";

var jsonObj = parseDom(items, item_text, item_link);
var str = JSON.stringify(jsonObj);
console.log(str);

$.post("http://10.10.10.31:8080/Dojo1/GetJson", {
	'arr' : str
}, function(data) {

	console.log(data);

});
