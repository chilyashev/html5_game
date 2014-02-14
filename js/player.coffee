class @Player extends Entity
  xSpeed: 4
  ySpeed: 4
  name: "Playa"
  context: null
  sprite: null
  defaultSprite: null
  downSprite: null
  upSprite: null

  constructor: (@context) ->
    @context.font = "Arial, 10px"
    @context.fillText("Player text", 10, 100);
    @defaultSprite = new Sprite(@context, 'assets/images/player.png', @x, @y, "Player")
    @sprite = @defaultSprite
    @downSprite = new Sprite(@context, 'assets/images/player_down.png', @x, @y, "Player")
    @upSprite = new Sprite(@context, 'assets/images/player_up.png', @x, @y, "Player")

  update: (delta) ->
    delta = 1
    @sprite = @defaultSprite
    if window.inputHandler.keys[Input.RIGHT]
      @x+=delta*@xSpeed
    if window.inputHandler.keys[Input.LEFT] and @x - delta*@xSpeed > 0
      @x-=delta*@xSpeed
    if window.inputHandler.keys[Input.UP] and @y - delta*@ySpeed > 0
      @y-=delta*@ySpeed
      @sprite = @upSprite
    if window.inputHandler.keys[Input.DOWN]
      @y+=delta*@ySpeed
      @sprite = @downSprite
    @sprite.x = @x
    @sprite.y = @y
  draw: () ->
   @context.font = "Arial 10px"
   #@context.fillText("Player  Stuff!", @x, @y);
   @sprite.draw();
