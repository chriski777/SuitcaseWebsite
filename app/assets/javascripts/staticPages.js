// Disable animations/transitions until the page has loaded.
$( document ).on('turbolinks:load', function() {
	var	$body = $('body');
	if ($body.hasClass('loaded')) {
		$body.removeClass('loaded');
		console.log('we made it');
	}
	$body.addClass('loaded');
});
