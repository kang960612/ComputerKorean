var bugs = [];

function setup() {
  background(0);
  createCanvas(1280, 960);
  noStroke();
  
  for (var i=0; i<50; i++) {
    bugs.push(new Jitter());
  }
}

function draw() {
  background(0);
  for (var i=0; i<bugs.length; i++) {
    var r = random(0, 255);
    var g = random(0, 255);
    var b = random(0, 255);
    fill(r,g,b);
    bugs[i].display();
  }
  /*
  if ( mouseX >= bugs[i].x && mouseX <= bugs[i].x + bugs[i].w &&
    mouseY >= bugs[i].y && mouseY <= bugs[i].y + bugs[i].h) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
  */
}

function Jitter() {
  this.x = random(width);
  this.y = random(height);
  this.diameter = random(10, 50);
  
  this.display = function() {
    ellipse(this.x, this.y, this.diameter, this.diameter);
  };
}

function mousePressed(){
  if(mouseButton == LEFT){
    setup();
  }
  else{
    for (var i=0; i<50; i++) {
      bugs.pop(new Jitter());
    }
  }
}
