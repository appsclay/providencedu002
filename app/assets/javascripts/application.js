// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require chosen-jquery
//= require owl.carousel
//= require bootstrap-material-design
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function () {
   $("#owl-example").owlCarousel({
   	 autoplay: true,
  autoplayTimeout: 2000,
 
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]

   });
  $("#owl-demo2").owlCarousel({
  	autoplay: true,
  	autoplayTimeout: 2000,
  	items : 5,
    navigation : true
  });
});
