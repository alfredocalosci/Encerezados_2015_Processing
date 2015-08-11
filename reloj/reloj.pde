void setup(){
  size(600,600);
  
}

void draw(){
  background(255);
  
 
  float s = second();
  float m = minute();
  ellipse(s*6,300,32,32);
  ellipse(m*6,360,32,32);
  
  
  
  //minute();
  second(); // 0 > 59
 // hour();
}
