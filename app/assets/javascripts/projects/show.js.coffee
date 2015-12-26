on_load = ->
  load
    controllers:
      projects: ["show"]
  , (controller, action) ->
    $('#project-images').slick
      dots: true
$(document).ready on_load
