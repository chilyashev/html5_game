class @Sprite
  sprite: null
  width: 16
  height: 16
  x: 40
  y: 50
  image: new Image()
  constructor: (@context, @sprite, @x, @y) ->
    @image = new Image()
    @image.onload = () =>
      @context.drawImage(@image, @x, @y); # @TODO Make it use width and height
      @context.fillText("x: #{@x}", @x+@width, @y)
    @image.src = @sprite;

  draw: () =>
    @context.drawImage(@image, @x, @y); # @TODO Make it use width and height
    @context.font = "Arial, 10px"
    @context.fillText("x: #{@x.toFixed(2)}, y: #{@y.toFixed(2)}", @x+@width, @y)

  getBounds: () =>

