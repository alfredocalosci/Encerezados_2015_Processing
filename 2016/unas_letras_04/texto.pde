class texto {

  String miTexto;
  float x, y; // localización
  float t; // tamaño

  texto(String _texto) {
    miTexto = _texto;
    x = random(width);
    y = random(height);
   // t = floor(random(12, 128));
    
    int tt = floor(random(12));
    t = 12 + (tt* 12);
  }

  void display() {
    textFont(font, t);
    fill(0, 255);
    text(miTexto, x, y);
  }
}