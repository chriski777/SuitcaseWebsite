// Disable animations/transitions until the page has loaded.
$( document ).on('turbolinks:load', function() {
	var	$body = $('body');
	if ($body.hasClass('loaded')) {
		$body.removeClass('loaded');
		console.log('we made it');
	}
	$body.addClass('loaded');

  //to enable smooth scrolling upon anchor click
  $("a").on('click', function(event) {
    //this.hash must override default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();
      // Store hash
      var hash = this.hash;
      // Using jQuery's animate() method to implement smooth scroll
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){ 
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } 
  });
  var bannerHeight = $('.view').height();
  $(window).scroll(function(){                          
    if ($(this).scrollTop() >= bannerHeight) {
        $('.navbar').addClass('fixed');
    } else {
        $('.navbar').removeClass('fixed');
    }
  });
});

