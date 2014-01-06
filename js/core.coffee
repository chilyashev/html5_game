
# For debugging purposes
window.log = (ob) ->
  console.log(ob)

window.getAsset = (type, name) ->
  $.getJSON("assets/#{type}/#{name}.json").then (data) ->
    
