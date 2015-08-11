class Cosas{
  
  float x,y,w;
  float vy;
  float vx;
  
  
  Cosas(float _x, float _y, float _w){
    x = _x;
    y = _y;
   w = _w;
   
   vy = random(-5, -1);
   vx = random(0, 5);
 }
  
  
  void display(){
    offscreen.fill(#45E358);
    offscreen.ellipse(x,y,w,w);
 
  }
  
  void display2(){
    offscreen2.fill(#45E358);
    offscreen2.ellipse(x-600,y,w,w);
 
  }
  
  
}
