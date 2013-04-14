# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
(($) ->
  $.fn.loadreportmap = ->
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
      zoom: 11,
      div: 'report_map',
      lat: 40.744819,
      lng: -73.990133,
      style: {
        margin: '5px',
        padding: '1px 6px',
        border: 'solid 1px #717B87',
        background: '#fff'
      }
    )
    $("input[type='hidden']").each ->
      clientName = $(this).data('client')
      map.addMarker
        lat: parseFloat($(this).data('latitude')),
        lng: parseFloat($(this).data('longitude')),
        infoWindow: {
          content: '<p>Client Name:   ' + clientName + '</p>'
        }

  $.fn.loadsinglemap = ->
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
