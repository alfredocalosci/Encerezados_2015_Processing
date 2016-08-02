String letra;
String [] lasLetras = {"A", "B", "C", "D", "E", "F"};

PFont font; // mi font especial
palabra p1;

void setup() {
  size(600, 600);
  letra = "B";
  
  font = createFont("bebasneue_bold-webfont.ttf", 48);
  textFont(font,48);
  
  p1 = new palabra();
}

void draw() {
  background(255);
  line(30, 90, mouseX, mouseY);
  ellipse(120, 120, 90, 90);
  
  fill(0); // en negro
  textSize(96);
  text(letra,50,120);
  
  p1.display();
}

void keyPressed(){
  letra = "M";
  
  // cuantos elementos están metidos en lasLetras ?
  int n = lasLetras.length; // es 3
  float r = random(n);
  letra = lasLetras[floor(r)];
  
   p1 = new palabra();
   p1.miTexto = "son las 19";
  
}