class @Player extends Entity
  name: "Playa"
  context: null

  constructor: (@context) ->
    @context.font = "Arial, 10px"
    @context.fillText("Stuff", 10, 100);

  update: () ->

  draw: () ->
   @context.font = "Arial 10px"
   @context.fillText("Stuff", @x, @y);
