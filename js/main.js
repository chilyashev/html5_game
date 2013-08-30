var Player = Class.extend({
    name: "Playa",
    x: 0,
    y: 0,
    max_hp: 0,
    hp: 0,
    init: function(stuff){
        this.stuff = stuff;
        log(stuff);
    }
});

var game = {
    canvas: null,
    context: null,
    body: null,
    g1: 0,
    init: function () {
        this.body = document.body;
        this.canvas = document.createElement('canvas');
        this.canvas.width = document.width;
        this.canvas.height = document.height;

        this.body.appendChild(this.canvas);

        var ctx = this.context = this.canvas.getContext('2d');
        ctx.font="30px Arial";
        var str = "And thus some stuff shall happen.";
        ctx.fillText(str, document.width/2-(str.length*8), 50);
        this.loadPlayer();
    },
    loadPlayer: function () {
        var playerStuff = getAsset('entities', 'player');
        this.player = new Player(playerStuff);
    },
    render: function(){
        var ctx = this.context;
        ctx.fillStyle = "rgb(200,"+this.g1+",0)";
        this.g1 = (this.g1+10) %  255;
        ctx.fillRect (document.width/2-60, 70, 55, 50);
    }
};


window.onload = function () {
    game.init();
    setInterval(function(){game.render()}, 30);
};

