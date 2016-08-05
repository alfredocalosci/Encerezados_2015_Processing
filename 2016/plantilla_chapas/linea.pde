class linea {
  float x1, y1, x2, y2;
  float g; // grosor
  color c;

  linea(float _x1, float _y1, float _x2, float _y2, float _g) {
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;

    g = _g;
    c = color(0, 0, 0);
  }

  void display() {
    strokeWeight(g);
    stroke(c);
    line(x1, y1, x2, y2);
  }
}