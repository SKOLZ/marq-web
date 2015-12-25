on_load = ->
  load
    controllers:
      webpage: ["contact"]
  , (controller, action) ->
    $('.nav-link').removeClass('selected-nav-link')
    $('#contact-link').addClass('selected-nav-link')
$(document).ready on_load()
