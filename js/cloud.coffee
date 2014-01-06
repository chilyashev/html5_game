class @Cloud extends Sprite
  update: (delta) ->
    @x -= 100*delta
    if @x <= -16
      @x = 801-Math.random()*100
      @y = Math.random() * 300

