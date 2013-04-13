# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
(($) ->
  $(window).load ->
    map = undefined
    useragent = navigator.userAgent
    mapdiv = document.getElementById("report_map")
    if useragent.indexOf("iPhone") isnt -1 or useragent.indexOf("Android") isnt -1
      mapdiv.style.width = "100%"
      mapdiv.style.height = "100%"
    else
      mapdiv.style.width = "850px"
      mapdiv.style.height = "500px"
    map = new GMaps(
      zoom: 11
      div: 'report_map'
      lat: 40.744819
      lng: -73.990133
    )
    $("input[type='hidden']").each ->
      map.addMarker
        lat: parseFloat($(this).data('latitude'))
        lng: parseFloat($(this).data('longitude'))

    map = undefined
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
    map = new GMaps(
      div: "#map"
      lat: latitude
      lng: longitude
    )

    map.addMarker
      lat: latitude
      lng: longitude
      title: "Marker with InfoWindow"
) jQuery
