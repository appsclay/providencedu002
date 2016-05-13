jQuery ($) ->
  $("#ppad").owlCarousel()
  $("#testi").owlCarousel()
  $(".owl-prev").html("<i class='fa fa-long-arrow-left fa-2x' aria-hidden='true'></i>")
  $(".owl-next").html("<i class='fa fa-long-arrow-right fa-2x' aria-hidden='true'></i>")
  $(".owl-dots").hide()
  $( '#mcontainer' ).masonry( { columnWidth: 300 } )