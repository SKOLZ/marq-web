on_load = ->
  load
    controllers:
      webpage: ["about_us"]
  , (controller, action) ->
    $('.nav-link').removeClass('selected-nav-link')
    $('#about-us-link').addClass('selected-nav-link')
$(document).ready on_load
