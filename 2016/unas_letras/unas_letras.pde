PFont font;
String letra;

void setup(){
  size(600,600);
  font = createFont("bebasneue_bold-webfont.ttf",48);
  textFont(font, 48);
  textAlign(CENTER, CENTER);
  letra = "A";
}

void draw(){
  background(255);
  fill(0);
  text(letra, 300,300);
}