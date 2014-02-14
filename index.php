<!doctype html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="js/libs/jquery.min.js"></script>
    <script src="js/sprite.js"></script>
    <script src="js/world.js"></script>
    <script src="js/game.js"></script>
    <script src="js/screen.js"></script>
    <script src="js/cloud.js"></script>
    <script src="js/entity.js"></script>
    <script src="js/player.js"></script>
    <script src="js/core.js"></script>
    <script src="js/input.js"></script>
    <script src="js/main.js"></script>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        html, body {
            width:  100%;
            height: 100%;
            margin: 0;
         }
        #canvas_holder{
            width: 800px;
            height: 600px;
            outline:0;
            border:1px solid #000;
            margin: 0 auto;
        }
    </style>
</head>
<body onkeydown="return inputHandler.keyDown(event)" onkeyup="return inputHandler.keyUp(event)" >
<div id="canvas_holder">
<canvas width="800" height="600" id="canvas"></canvas>
</div>
</body>
</html>
