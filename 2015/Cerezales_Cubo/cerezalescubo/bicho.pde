class bicho{
  
  // listado de variables / parametros
  float x,y,w;
  float vy, vx;
  
  boolean tengohijos;
  
  
  // el constructor de la clase bicho
  bicho(float _x, float _y, float _w){
    x = _x;
    y = _y;
    w = _w;
    vy = random(-1,0);
    vx = random(-1,0);
    
    tengohijos = false;
  }
  
  void display(){
    // dibuja un bicho en pantalla
    fill(0,0,0,50);
    stroke(110);
    ellipse(x,y,w,w);
    
    y = y + vy;
    x = x + vx;
    
    
    if(y - w/2 < 0 || y + w/2 > 600){
     // y = 600;
     vy = vy * -1;
    }
    
    if(x - w/2 < 0 || x + w/2 > 1200){
     // y = 600;
     vx = vx * -1;
    }
    
    if(x - w/2 > 600){
      // otro lado
      vy = vy + 1;
      w = w - 0.5;
      
      // if no tengo hijos
      if(tengohijos == false){
        // crea otro
        
        tengohijos = true;
      }
      // nace otro
      // tengo hijos = true
    }
    
    if(w < 0){
      w = w * 0;
    }
    
    if(x > 600){
      
    }
  }
  
}
