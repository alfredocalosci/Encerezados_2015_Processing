PFont font;
String letra;
String[] Letras = { "A", "B", "C", "D", "E" }; 

String miTexto[]; // frase por frase
String Palabras[]; // frase por frase

void setup() {
  size(600, 600);
  font = createFont("bebasneue_bold-webfont.ttf", 48);
  textFont(font, 48);
  textAlign(CENTER, CENTER);
  letra = "A";
  frameRate(2);
  
  miTexto = loadStrings("elTexto.txt");
  Palabras = new String[1];
  
  for(int n = 0; n< miTexto.length; n++){
    String s = miTexto[n];
    // println( n + ". " + s);
    String[] porPalabras = split(s, " ");
    
    for(int i = 0; i < porPalabras.length; i++ ){
     // println(p_list[i]);
     Palabras = append(Palabras, porPalabras[i]);
    }
    
  }
  
  println(Palabras.length);
  
}

void draw() {
  background(255);
  fill(0);
  //letra = Letras[1];
  
  // una letra al azar
  //int n = floor(random(Letras.length));
  //letra = miTexto[n];
  
  int n = floor(random(Palabras.length));
  letra = Palabras[n];
  
  // tamaños variables
  int tSize = floor(random(12, 128));
  textFont(font, tSize);
  
  text(letra, 300, 300);
}