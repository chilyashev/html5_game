@delta = 0
@fps = 0


# Entry point
$ ->
  window.game = new Game(null);
  window.game.init()
  int = setInterval ->
    window.game.update()
  , 30
