jQuery ($) ->
  $(".owl-carousel").owlCarousel
	  autoplay: true
	  autoplayTimeout: 2000
	  items: 4
	  itemsDesktop: [
	    1199
	    3
	  ]
	  itemsDesktopSmall: [
	    979
	    3
	  ] 
  $(".owl-prev").html("<i class='fa fa-chevron-left fa-2x' aria-hidden='true'></i>")
  $(".owl-next").html("<i class='fa fa-chevron-right fa-2x' aria-hidden='true'></i>")
  $(".owl-dots").hide()
  