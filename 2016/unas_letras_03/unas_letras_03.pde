PFont font;
String letra;
String[] Letras = { "A", "B", "C", "D", "E" }; 

String miTexto[]; // frase por frase
String Palabras[]; // frase por frase

ArrayList <texto> losTextos;

void setup() {
  size(600, 600);
  font = createFont("bebasneue_bold-webfont.ttf", 48);
  textFont(font, 48);
  textAlign(CENTER, CENTER);
  letra = "A";
  frameRate(2);

  miTexto = loadStrings("elTexto.txt");
  Palabras = new String[1];

  losTextos = new ArrayList();

  for (int n = 0; n< miTexto.length; n++) {
    String s = miTexto[n];
    // println( n + ". " + s);
    String[] porPalabras = split(s, " ");

    for (int i = 0; i < porPalabras.length; i++ ) {
      // println(p_list[i]);
      Palabras = append(Palabras, porPalabras[i]);
    }
  }

  println(Palabras.length);

  // crea los textos al azar
  for (int n = 0; n < 120; n++) {
    int v = floor(random(Palabras.length));
    String nuevaPalabra =  Palabras[v];
    texto t = new texto(nuevaPalabra);
    losTextos.add(t);
  }
}

void draw() {
  background(255);

  for (int n = 0; n< losTextos.size(); n++) {
    texto t = losTextos.get(n);
    t.display();
  }
}