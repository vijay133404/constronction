// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require js/bootstrap-3.1.1.min
//= require dropzone
//= require js/modernizr.custom
//= require js/jquery.chocolat
//= require js/jquery.hoverdir
//= require js/responsiveslides.min
//= require js/move-top
//= require js/easing






$(function () {
	$("#slider").responsiveSlides({
		auto: true,
		pager: true,
		nav: true,
		speed: 1000,
		namespace: "callbacks",
		before: function () {
			$('.events').append("<li>before event fired.</li>");
		},
		after: function () {
			$('.events').append("<li>after event fired.</li>");
		}
	});
});

jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});

$(function() {
			
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

			});


	$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});


	$(function() {
			$('.gallery a').Chocolat();
		});