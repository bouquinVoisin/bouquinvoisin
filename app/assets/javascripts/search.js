document.addEventListener("turbolinks:load", function() {
 $input = $("#mysearchbar")

var options = {
	getValue: "title",
	url: function(phrase) {
		return "/books/autocomplete.json?q=" + phrase;		
	},
	categories: [
	{
		listLocation: "books",
		header: "<strong>Books</strong>",
	}],
	list: {
		onChooseEvent: function() {
			var url = $input.getSelectedItemData().url
			console.log(url)
		}
	}  
}

 $input.easyAutocomplete(options);

}); 