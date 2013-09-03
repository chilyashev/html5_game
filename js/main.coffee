delta = 0
fps = 0

class Sprite
  sprite = null
  width = 16
  height = 16
  x = 40
  y = 50
  constructor: (@context, @sprite, @x, @y) ->

  draw: () =>
    image = new Image()
    image.onload = () =>
      @context.drawImage(image, @x, @y); # @TODO Make it use width and height
    image.src = @sprite;

class Cloud extends Sprite
  update: () ->



class Entity
  x = 0;
  y = 0;

class Player extends Entity
  name = "Playa"
  construct: (@context) ->


class Screen
  width = 800
  height = 600
  lastFrameTime = 0
  context = null
  constructor: (@width, @height, @context) ->

  clear: () ->
    oldColor = @context.fillStyle
    @context.fillStyle = '#87CEEB'
    @context.beginPath()
    @context.rect(0, 0, @width, @height);
    @context.closePath();
    @context.fill();
    @context.fillStyle = oldColor

  update: () ->
    @clear();
    @drawDebug()
    if !lastFrameTime
      lastFrameTime = new Date().getTime()
      fps = 0
      return
    delta = (new Date().getTime() - lastFrameTime)/1000
    lastFrameTime = new Date().getTime()
    fps = (1/delta);
  drawText: (text,x,y, font='10px Arial') =>
    @context.font = font
    @context.fillText(text, x, y);
  drawDebug: =>
    @context.fillStyle = 'rgba(0, 0, 0, 0.1)'
    @context.beginPath()
    @context.rect(0, 0, 160, 40);
    @context.closePath();
    @context.fill();
    @context.fillStyle = '#000000'
    @drawText("fps: #{fps}", 10,10)
    @drawText("delta: #{delta}", 10, 20)

class World
  context = null
  clouds = []
  constructor: (@context) ->
    for i in [1..5]
      cx = Math.random() * 800
      cy = Math.random() * 100
      clouds.push(new Cloud(@context, 'assets/images/cloud.png', cx, cy))

  update: () =>
    for cloud in clouds
      log('a')
      cloud.update()
      cloud.draw()

class Game
  context = null
  canvas = null
  entities = []
  screen = null
  world = null
  width = 800
  height = 600

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

    msg = "Stuff! And it's running at #{fps.toFixed(2)}fps!"
    @screen.drawText(msg, width/2-(msg.length*8), 100, "18px Arial")
    @screen.drawText("A bit flickering, but screw it. I'll fix it later", width/2, 200)
    #log("Updated")

# Entry point
$ ->
  game = new Game(null);
  game.init()
  setInterval ->
      game.update()
    , 30