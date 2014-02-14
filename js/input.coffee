class @Input
  @UP: 38
  @DOWN: 40
  @LEFT: 37
  @RIGHT: 39

  keys: {}

  handle: (event) ->
    false


  keyDown: (event) ->
    @keys[event.keyCode] = true
#    log(@keys)
    false


  keyUp: (event) ->
    @keys[event.keyCode] = false
#    log(@keys)
    false

  keyPress: (event) ->
    @keys[event.keyCode] = false
#    log(@keys)
    false
