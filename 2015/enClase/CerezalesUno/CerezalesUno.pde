
float ojoW;
monstruo Bruno, Ana;

void setup(){
  size(600,400);
  ojoW = 180;
  
  Bruno = new monstruo(150,200,300);
  Ana = new monstruo(400,300,120);
}

void draw(){ 
  background(179,185,101);
  
  /*
  stroke(255);
  strokeWeight(5);
 // line(20,400,mouseX,mouseY);
 fill(0,0,200);
 ellipse(300,200,ojoW,ojoW);
 
 fill(255,200);
 ellipse(300,200,ojoW*2/3,ojoW/3*2);
 
 fill(0);
 ellipse(300,200,ojoW/6,ojoW/6);
 */
 
 Bruno.display();
 Ana.display();
 
}

void keyPressed(){
  
  if(key == 'f'){
     ojoW = ojoW * 1.5;
  }
  
  if(key == 'a'){ 
     ojoW = ojoW / 1.5;
  }
 
}

