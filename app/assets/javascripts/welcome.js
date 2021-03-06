
// Avoid `console` errors in browsers that lack a console.
console.log("testing js");
(function() {
    var method;
    var noop = function () {};
    var methods = [
        'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
        'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
        'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
        'timeStamp', 'trace', 'warn'
    ];
    var length = methods.length;
    var console = (window.console = window.console || {});

    while (length--) {
        method = methods[length];

        // Only stub undefined methods.
        if (!console[method]) {
            console[method] = noop;
        }
    }
}());

// Place any jQuery/helper plugins in here.

/*global jQuery */
/*!
* FitText.js 1.2
*
* Copyright 2011, Dave Rupert http://daverupert.com
* Released under the WTFPL license
* http://sam.zoy.org/wtfpl/
*
* Date: Thu May 05 14:23:00 2011 -0600
*/

(function( $ ){

  $.fn.fitText = function( kompressor, options ) {

    // Setup options
    var compressor = kompressor || 1,
        settings = $.extend({
          'minFontSize' : Number.NEGATIVE_INFINITY,
          'maxFontSize' : Number.POSITIVE_INFINITY
        }, options);

    return this.each(function(){

      // Store the object
      var $this = $(this);

      // Resizer() resizes items based on the object width divided by the compressor * 10
      var resizer = function () {
        $this.css('font-size', Math.max(Math.min($this.width() / (compressor*10), parseFloat(settings.maxFontSize)), parseFloat(settings.minFontSize)));
      };

      // Call once to set.
      resizer();

      // Call on resize. Opera debounces their resize by default.
      $(window).on('resize.fittext orientationchange.fittext', resizer);

    });

  };

})( jQuery );

$(document).ready(function(){
	$('#mobile-menu').height($('#mobile-menu').height()+10);
	console.log($('#mobile-menu').height()+40);
	$(window).resize(function(){
	  if ($(window).width()>=845){
	    $("#mobile-menu").hide();
	  }
	});
  $("#mobile-menu-img").click(function(event){
 	event.stopPropagation();
    $("#mobile-menu").slideDown("slow");
  });
  $('#mobile-menu').click(function(event){
    event.stopPropagation();
    $(this).slideUp("slow");
  });
 
});
$(document).on('page:load',function(){
	console.log("page load triggered");

  $('#basque').bind('scroll', function() {
    console.log($(this).innerHeight)
    console.log($(this).scrollTop());
        if($(this).scrollTop() + $(this).innerHeight() >= this.scrollHeight) {
            console.log('end reached');
        }
    })
	$(window).resize(function(){
	  if ($(window).width()>=845){
	    $("#mobile-menu").hide();
	  }
	});
  $("#mobile-menu-img").click(function(event){
  	console.log('event trigger');
    event.stopPropagation();
    $("#mobile-menu").slideDown("slow");
  });
  $('body').click(function(event){
    event.stopPropagation();
    $("#mobile-menu").slideUp("slow");
  });
  
})