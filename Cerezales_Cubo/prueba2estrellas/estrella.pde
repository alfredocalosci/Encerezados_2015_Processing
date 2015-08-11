class estrella{
  
  // listado de variables / parametros
  float x,y,w,d;
  float vy, vx;
  int p;
  
  // el constructor de la clase bicho
  estrella(float _x, float _y, float _w, float _d, int _p){
    x = _x;
    y = _y;
    w = _w;
    d = _d;
    p = _p;
    vy = random(-5,-1);
    vx = random(-5,-1);
  }
  
  void display(){
    // dibuja un estrella en pantalla
    fill(255);
    noStroke();
    //ellipse(x,y,w,w);
    star(x,y,w,d,p);

    
    
    y = y + vy;
    x = x + vx;
    
    
    if(y < 0 || y > 600){
     // y = 600;
     vy = vy * -1;
    }
    
    
    
    if(x < 0 || x > 1100){
     // y = 600;
     vx = vx * -1;
    }
  }
  
}
