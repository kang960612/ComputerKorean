class block{
  int x,y;
  int r,g,b;
  
  block(int r, int g, int b, int x, int y){
    this.x = x;
    this.y = y;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  void draw(){
    fill(r,g,b);
    rect(x,y,10,10);
  }
}
