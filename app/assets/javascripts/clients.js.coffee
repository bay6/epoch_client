# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
map = undefined
$(window).load ->

(($) ->
  $.fn.loadmap = ->
    useragent = navigator.userAgent
    mapdiv = document.getElementById("map")
    if useragent.indexOf("iPhone") isnt -1 or useragent.indexOf("Android") isnt -1
      mapdiv.style.width = "100%"
      mapdiv.style.height = "100%"
    else
      mapdiv.style.width = "750px"
      mapdiv.style.height = "400px"
    latitude = parseFloat($('#latitude').val())
    longitude = parseFloat($('#map').data('longitude'))
    console.log(latitude)
    console.log(longitude)
    map = new GMaps(
      div: "#map"
      lat: latitude
      lng: longitude
    )

    #map.addMarker
      #lat: latitude
      #lng: logitude
      #title: "Lima"
      #details:
        #database_id: 42
        #author: "HPNeo"
      #click: (e) ->
        #console.log e  if console.log
        #alert "You clicked in this marker"

    map.addMarker
      lat: latitude
      lng: longitude
      title: "Marker with InfoWindow"
      #infoWindow:
        #content: "<p>HTML Content</p>"
) JQuery
