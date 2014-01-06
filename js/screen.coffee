class @Screen
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
    @clear()
    @drawDebug()
    if !lastFrameTime
      lastFrameTime = new Date().getTime()
      fps = 0
      return
    window.delta = (new Date().getTime() - lastFrameTime)/1000
    lastFrameTime = new Date().getTime()
    window.fps = (1/window.delta);
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
    @drawText("fps: #{window.fps}", 10,10)
    @drawText("delta: #{window.delta}", 10, 20)
