var Entity = Class.extend({
    init: function(){
        log('yes!');
    }
});
var Player = Entity.extend({
    name: "Playa",
    x: 0,
    y: 0,
    max_hp: 0,
    hp: 0,
    update: function(){
        log("called")
    },
    init: function(stuff){
        this.stuff = stuff;
        log(stuff);
    }
});

var game = {
    canvas: null,
    context: null,
    body: null,
    entities: [],
    g1: 0,
    init: function () {
        this.body = document.body;
        this.canvas = document.getElementById('canvas');
        this.canvas.width = w = 800;
        this.canvas.height = h = 600;
        this.canvas.style.margin = "0 auto";

        //this.body.appendChild(this.canvas);

        var ctx = this.context = this.canvas.getContext('2d');
        ctx.canvas.width  = w;
        ctx.canvas.height = h;
        ctx.fillStyle = "#6666FF";
        ctx.fillRect(0, 0, w, h);
        ctx.fillStyle = "#000000";
        ctx.font="30px Arial";
        var str = "And thus some stuff shall happen.";
        ctx.fillText(str, w/2-(str.length*8), 50);
        this.loadPlayer();
    },
    loadPlayer: function () {
        var playerStuff = getAsset('entities', 'player');
        this.player = new Player(playerStuff);
        this.entities.push(this.player)
    },
    update: function(){
        for(var entity in this.entities){
            this.entities[entity].update();
        }
    },
    render: function(){
        this.update();
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