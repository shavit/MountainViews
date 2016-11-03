#
#   Helpers
#
log = (x) ->
  console.log x

getStreamData = ->
  # 0 - {type: lating, data: [])
  # 1 - {type: distance, data: [])
  # 2 - {type: altitude, data: [])
  return JSON.parse $("#streamData").text()


createMap = ->
  # Clean the preloader
  $("#mapView").html ""

  # Get stream
  streamData = getStreamData()
  latings = streamData[0].data


  map = L.map("mapView", {
    center: latings[Math.round((latings.length)/2)],
    zoom: 10
    })

  polyline = L.polyline(streamData[0].data, {color: "blue"})
    .addTo(map)

#
#   Main
#
ready = ->
  waitForL = ->
    if window.L
      createMap()
      clearInterval(waitForLInterval)

  waitForLInterval = setInterval(waitForL, 300)

  log("---> Ready")


#
#   Ready events
#
document.addEventListener("DOMContentLoaded", ready)
document.addEventListener("onreadystatechange", ready)
document.addEventListener("page:load", ready)
document.addEventListener("page:fetch", ready)
document.addEventListener("page:receive", ready)
