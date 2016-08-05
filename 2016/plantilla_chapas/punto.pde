class punto{
  float x,y;
  color c;
  
  punto(float _x, float _y){
    x = _x;
    y = _y;
    c = color(0,0,0);
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(x,y,5,5);
  }
}