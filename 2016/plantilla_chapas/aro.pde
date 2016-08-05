class aro {
  float g; // grosor
  float t; // tamaño
  float x, y; // localizacion
  color c;

  aro(float _x, float _y, float _g, float _t) {
    g = _g;
    t = _t;
    x = _x;
    y = _y;
    c = color(240,90,90,128); // HSB + transparencia (0 > 255)
  }

  void display() {
    noFill();
    strokeWeight(g);
    stroke(c);
    ellipse(x, y, t, t);
  }
  
}