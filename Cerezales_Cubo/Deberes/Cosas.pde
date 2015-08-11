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
    fill(#45E358);
    ellipse(x,y,w,w);
    // ellipse() = random(x,y,w,w);
  //  y = y + vy;
//   x = x +vx;
   
   /*
   if(y < 0){
     vy = vy * -1; }
     
     if(y > 600){
       vy = vy /-1; }
       
       
       if(x < 0){
         vx = vx  +5; }
         
         if(x >1200){ 
           vx = vx -5; }
           */
       
     
     
  }
  
  
}
