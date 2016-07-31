PFont font;
String letra;
String[] Letras = { "A", "B", "C", "D", "E" }; 

void setup() {
  size(600, 600);
  font = createFont("bebasneue_bold-webfont.ttf", 48);
  textFont(font, 48);
  textAlign(CENTER, CENTER);
  letra = "A";
  frameRate(2);
}

void draw() {
  background(255);
  fill(0);
  //letra = Letras[1];
  
  // una letra al azar
  int n = floor(random(Letras.length));
  letra = Letras[n];
  
  // tamaños variables
  int tSize = floor(random(12, 128));
  textFont(font, tSize);
  
  text(letra, 300, 300);
}