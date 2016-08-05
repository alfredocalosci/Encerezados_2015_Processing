float x,y;
float vx, vy;

void setup(){
  size(600,600);
  x = 300;
  y = 300;
  vx = 5;
  vy = 0.5;
}

void draw(){
  background(255);
  
  int veces = 18;
  
  fill(255);
  ellipse(300,300, 500,500);
  
  for(int n = 0; n<12; n++){
    float a = (TWO_PI/12)*n;
    float laX = 300 + cos(a)*250;
    float laY = 300 + sin(a)*250;
    
    // pinta una ellipse
    ellipse(laX,laY,20,20);
  }
  
  for(int n = 0; n<veces; n++){
    // pinta una ellipse
    ellipse(n*(width/veces),300,20,20);
  }
  
  fill(128,0,0);
  ellipse(x,y,20,20);
  x+= vx;
  
  if(x > 600 || x <0){
    // rebota
    vx = vx * -1;
  }
  
}