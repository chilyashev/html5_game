class @Game
  context = null
  canvas = null
  entities = []
  screen = null
  world = null
  width = 800
  height = 600
  constructor: (@input) ->

  init: () ->
    @canvas = document.getElementById('canvas')
    @context = @canvas.getContext('2d');
    @screen = new Screen(800, 600, @context);
    @world = new World(@context)

  update: () ->
    #if @entities.length > 0
    #  for entity in @entities
    #    entity.update()
    @screen.update()
    @world.update()

    #msg = "Stuff! And it's running at #{fps.toFixed(2)}fps!"
    msg = "The amazing adventures of Triangle - the only triangle with four angles!"
    @screen.drawText(msg, width/2-(msg.length*4), 100, "18px Arial")
    #@screen.drawText("No flicker!", width/2, 200)
    #log("Updated")
