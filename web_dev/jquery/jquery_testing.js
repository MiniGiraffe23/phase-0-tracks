//check that page is ready for code to work
$(document).ready(function() {
	//script here
	/* $("h2").hide().slidedown();
	var $li = $("li");
	$li.hide().each(function(index) {
		$(this).delay(500 * index).fadeIn(500);
	});
	$li.on("click", function() {
		$(this).fadeOut(500);
	});	*/

	var $h2 = $('h2');
	$('ul').hide();
	$('ol').hide();
	$h2.append('<a class="show">show</a>');

	$h2.on('click', function() {
		$h2.next()
			.fadeIn(600)
			.children()
			.addClass('complete')
		$h2.find('a').fadeOut();
	});

	var backgroundColor = $('body').css('background-color');
	$('body').css({
		'background-color': 'pink',
		'color': 'white',
	});
});