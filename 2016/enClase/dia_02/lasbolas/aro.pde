class aro {
  float g; // grosor
  float t; // tamaño
  float x, y; // localizacion

  aro(float _g, float _t) {
    g = _g;
    t = _t;
    x = random(width);
    y = random(height);
  }

  void display() {
    noFill();
    strokeWeight(g);
    stroke(0,64);
    ellipse(x, y, t, t);
    
    t += 0.1;
  }
  
}