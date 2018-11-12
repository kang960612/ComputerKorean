block[][] b1 = new block[50][50];

void setup(){
  background(255);
  noStroke();
  size(500,500);
  frameRate(20);
  
  for(int i=0; i<50; i++){
    for(int j=0; j<50; j++){
      b1[i][j] = new block(255,255,255,i*10,j*10);
    }
  }

  for(int i=0; i<50; i++){
    int rand = int(random(50));
    if(rand<10){
      for(int j=0; j<50; j++){
        b1[i][j] = new block(255,228,0,i*10, j*10);
      }
    }
  }
  
  for(int j=0; j<50; j++){
    int rand = int(random(50));
    for(int i=0; i<50; i++){
      if(rand<10){
        b1[i][j] = new block(255,228,0,i*10, j*10);
      }
    }
  }
  
  for(int i=0; i<50; i++){
    for(int j=0; j<50; j++){
      int rand2 = int(random(50));
      if(b1[i][j].r==255&&b1[i][j].g==228 && rand2 < 5){
        b1[i][j] = new block(255,61,0,i*10, j*10);
      }
    }
  }
  
  for(int i=0; i<50; i++){
    for(int j=0; j<50; j++){
      int rand2 = int(random(50));
      if(b1[i][j].r==255&&b1[i][j].g==228 && rand2 < 5){
        b1[i][j] = new block(59,143,232,i*10, j*10);
      }
    }
  }
  
  for(int i=0; i<50; i++){
    for(int j=0; j<50; j++){
      int rand2 = int(random(50));
      if(b1[i][j].r==255&&b1[i][j].g==228 && rand2 < 5){
        b1[i][j] = new block(216,216,216,i*10, j*10);
      }
    }
  }
}

void draw(){
  for(int i=0; i<50; i++){
    for(int j=0; j<50; j++){
      b1[i][j].draw();
    }
  }
  
  if(mouseButton == LEFT){
    for(int i=0; i<50; i++){
      for(int j=0; j<50; j++){
        if((b1[i][j].r < 255 || b1[i][j].g < 255 || b1[i][j].b < 255)){
          int randrgb = int(random(10));
          if(randrgb < 6){
            b1[i][j] = new block(254,228,0,i*10,j*10);
          } else if(randrgb == 7){
            b1[i][j] = new block(254,61,0,i*10,j*10);
          } else if(randrgb == 8){
            b1[i][j] = new block(59,143,232,i*10,j*10);
          } else{
            b1[i][j] = new block(216,216,216,i*10, j*10);
          }
        }
      }
    }
  }
  
}

void mousePressed(){
  if(mouseButton == RIGHT){
    setup();
  }
}
