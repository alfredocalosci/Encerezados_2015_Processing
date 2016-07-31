class punto{
  
  float x,y,w;
  color c;
  
  punto(float _x, float _y, color _c){
    x = _x;
    y = _y;
    c = _c;
    
    // brillo
    float b = brightness(c);
    float ancho = map(b,0,255,3,64);
    w = ancho;
  }
  
  void display(){
    fill(c,128);
    noStroke();
    ellipse(x,y,w,w);
  } 
  
}
