(function($) {
	$(function() {
		var	$window = $(window),
			$titleCap = $('.titleCaption');
			$body = $('body');
		// Disable animations/transitions until the page has loaded.
			$window.on('load', function() {
				window.setTimeout(function() {
					$body.addClass('loaded');
				}, 100);
			});
	});
})(jQuery);