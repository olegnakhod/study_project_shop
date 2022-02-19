let articlesObj = null;

$.get('articles', function(data) {
	if (data !== '') {
		articlesObj = data;
	}
}).done(function() {

	let cardsContent = "";
	jQuery.each(articlesObj, function(i, value) {

		cardsContent += "<div class='card text-white bg-dark col-10 mb-3'>" +
			"<div class='card-body'>" +
			"<h5 class='card-title'>" + value.name + "</h5>" +
			"<h6 class='card-subtitle mb-2 text-muted'>" + value.price + "</h6>" +
			"<p class='card-text'>" + value.description + "</p>" +
			"<a href='article?id=" + value.id + "' class='card-link productCardElement'>View</a>" +
			"</div>" +
			"</div>" +
			"</div>"
	});

	$('#articleCards').html(cardsContent);
}).done(function() {
	$.get("user-role", function(data) {
		if (data !== '') {
			userRole = data;
		}
	}).done(function() {
		if(userRole === 'ADMINISTRATOR'){
			$('a.productCardElement').hide();
		}
	});
});
