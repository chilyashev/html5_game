class @Cloud extends Sprite
  period: 1
  amplitude: 100
  update: (delta) ->
    @x -= 100*delta
    @y =  200 + @amplitude * Math.cos(@x * @period *3.14/180);
    if @x <= -16
      @x = 801-Math.random()*100
      @y = Math.random() * 300

