class monstruo{
  
  float x,y,w;
  
  monstruo(float _x, float _y, float _w){
    x = _x;
    y = _y;
    w = _w;
  }
   
  
  void display(){
    fill(0,0,200);
     ellipse(x,y + w/2, w*1.5,w*1.5);
    ellipse(x,y,w,w);
    
   
    
    fill(255);
    ellipse(x,y,w*2/3, w*2/3);
    
    fill(0);
    ellipse(x,y,w/6,w/6);
  }
  
}
