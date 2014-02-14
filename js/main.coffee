@delta = 0
@fps = 0


# Entry point
$ ->
  window.inputHandler = new Input();
  window.game = new Game();
  window.game.init()
  int = setInterval ->
    window.game.update()
  , 30
