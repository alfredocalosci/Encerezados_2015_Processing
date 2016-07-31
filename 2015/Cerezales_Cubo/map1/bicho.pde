class bicho{
  // listado de variables / parametros
  float x,y,w;
  float vx;
  float vy;
  
  // el constructor de la clase bicho
  bicho(float _x, float _y,float _w){
    x = _x;
    y = _y;
    w = _w;
   

    vx = random(-2,2);
    vy = random(-2,2);
  }
  
  void display(){
    // dibuja un bicho en pantalla
    noFill();
    //fill(255,128);
    strokeWeight(1);
    stroke(255,128);

    rect(x,y,w,w);
   
    
     x= x - vx;
     y= y - vy;
    
     if(y+w/2 < 0 || y+w/2 > 600){
     // y = 600;
     vy = vy * -1;
    }
     
      if(x+w > 600 ){
     // y = 600;
     vx = vx * +2;
     vy = vy * -2; 
     w = w +6;
    
    }
  }
  
  
  
  
}
