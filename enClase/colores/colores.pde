void setup(){
  size(600,600);
  colorMode(HSB,360,100,100);
}


void draw(){
  
  //background(0,0,100);
  
  stroke(0,0,0);
  strokeWeight(5);
  line(0,0,600,600);
  
  fill(240,50,90,20);
  noStroke();
  rect(0,0,600,600);
  //background(240,50,90,200);

  float H = 0;
  
  if(mouseX > 75 && mouseX < 600-75){
     H = map(mouseX,75,525,0,360);
  }
 // float H = map(mouseX,0,600,0,360);
  color c = color(H,90,75,25);
  
  fill(c);
  ellipse(mouseX,mouseY,450,450);
}
