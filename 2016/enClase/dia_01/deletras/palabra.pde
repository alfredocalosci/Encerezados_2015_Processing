class palabra {

  String miTexto;
  float x, y;
  float s; // el tamaño de la letra



  palabra() {
    miTexto = "hola";
    x = random(width);
    y = random(height);

    s = random(12, 148);
  }


  void display() {
    fill(0); // en negro
    textSize(s);
    text(miTexto, x, y);
  }
}