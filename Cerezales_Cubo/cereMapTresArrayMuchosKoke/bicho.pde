class bicho{
  
  // listado de variables / parametros
  float x,y,w;
  float vy, vx;
  
  // el constructor de la clase bicho
  bicho(float _x, float _y, float _w){
    x = _x;
    y = _y;
    w = _w;
    vy = random(-2,-1);
    vx = random(-2,-1);
  }
  
  void display(){
    // dibuja un bicho en pantalla
    //fill(255,0,0,128);
    noFill();
     strokeWeight(1);
  stroke(255,128);

    //ellipse(x,y,w,w);
    ellipse(x,y,w*2/3,w*2/3);
     ellipse(x,y,w/6,w/6);
      ellipse(x,y,w/3,w/3);
    
    y = y + vy;
    x = x + vx;
    
    
    if(y< w/2 || y > 600- w/2){
     // y = 600;
     vy = vy * -1;
    }
    
    if(x < w/2 || x > 600-w/2){
     // y = 600;
     vx = vx * -1;
    }
  }
  
}
