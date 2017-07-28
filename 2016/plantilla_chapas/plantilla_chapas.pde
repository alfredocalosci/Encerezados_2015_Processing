// pdf
import processing.pdf.*;
boolean record;

// elementos gráficos
ArrayList <punto> Puntos;
ArrayList <linea> Lineas;
ArrayList <aro> Aros;
ArrayList <texto> Textos;

// font
PFont font;

// imagen
PImage imagen;

// palabras del quijote
String Palabras[]; 

void setup() {
  size(600, 600);

  // no estamos grabando
  record = false;
  // HSB
  colorMode(HSB, 360, 100, 100);

  // font
  font = createFont("bebasneue_bold-webfont.ttf", 48);
  textFont(font, 48);
  textAlign(CENTER, CENTER);

  // carga las palabras
  Palabras = new String[1];
  cargaPalabras();

  // carga la imagen
  imagen = loadImage("vaca.jpg");
  
  // crea ...
  creaOtro();
}

void draw() {
  if (record) {
    // empieza a grabar
    beginRecord(PDF, "frame-####.pdf");
    colorMode(HSB, 360, 100, 100);
  }

  // tu dibujo aqui:
  background(0, 0, 100);

  // la imagen
  // image(imagen,0,0);

  // borde de la chapa
  noFill();
  strokeWeight(1);
  stroke(0, 0, 0);
  ellipse(300, 300, 500, 500);

  // los puntos
  for (int n = 0; n< Puntos.size(); n++) {
    punto p = Puntos.get(n);
    // p.display();
  }
  
  // las lineas
  for (int n = 0; n< Lineas.size(); n++) {
    linea l = Lineas.get(n);
    l.display();
  }

  // los aros
  for (int n = 0; n< Aros.size(); n++) {
    aro a = Aros.get(n);
    a.display();
  }

  // los textos
  for (int n = 0; n< Textos.size(); n++) {
    texto t = Textos.get(n);
    t.display();
  }

  // termina de grabar
  if (record) {
    endRecord();
    record = false;
  }
}


void keyPressed() {
  // tecla S para grabar
  if (key == 's' || key == 'S') {
    record = true;
    println("grabando ...");
  }

  if (key == ' ') {
    creaOtro();
  }
}

void cargaPalabras() {
  String miTexto[] = loadStrings("elTexto.txt");

  for (int n = 0; n< miTexto.length; n++) {
    String s = miTexto[n];
    // println( n + ". " + s);
    String[] porPalabras = split(s, " ");

    for (int i = 0; i < porPalabras.length; i++ ) {
      // println(p_list[i]);
      Palabras = append(Palabras, porPalabras[i]);
    }
  }
}

void creaOtro() {
  println("otro");
  
  // contenedores
  Puntos = new ArrayList();
  Lineas = new ArrayList();
  Aros = new ArrayList();
  Textos = new ArrayList();

  // crea los objetos: puntos
  for (int n = 0; n < 2500; n++) {
    punto p = new punto(random(width), random(height));
    Puntos.add(p);
  }
  
  // mas puntos en circulo
  int tot = 180; // cuantos
  int radio = 150; // radio
  for (int n = 0; n < tot; n++) {
    float a = (TWO_PI / tot)* n; // angulo
    float x = 300 + cos(a)*radio;
    float y = 300 + sin(a)*radio;
    punto p = new punto(x, y);
    Puntos.add(p);
  }
  
  // crea los objetos: lineas
  for (int n = 0; n < 64; n++) {
    // un punto al azar
    int R1 = floor(random(Puntos.size()));
    int R2 = floor(random(Puntos.size()));
    
    punto p1 = Puntos.get(R1);
    punto p2 = Puntos.get(R2);
    
    // x1,y1,x2,y2,g
    linea l = new linea(p1.x, p1.y, p2.x, p2.y, random(3, 12));
    Lineas.add(l);
  }

  // crea los objetos: aros
  for (int n = 0; n < 64; n++) {
    // un punto al azar
    int R = floor(random(Puntos.size()));
    punto p1 = Puntos.get(R);
    // x,y,g,t
    aro a = new aro(p1.x, p1.y, random(4, 24), random(24, 120));
    Aros.add(a);
  }

  // crea los objetos: textos
  for (int n = 0; n < 12; n++) {
    int v = floor(random(Palabras.length));
    String nuevaPalabra =  Palabras[v];
    int R = floor(random(Puntos.size()));
    punto p1 = Puntos.get(R);
    texto t = new texto(p1.x, p1.y, nuevaPalabra);
    Textos.add(t);
  }
  
  // colorea los puntos
  for (int n = 0; n< Puntos.size(); n++) {
    punto p = Puntos.get(n);
    
    
    color c = imagen.get(floor(p.x), floor(p.y));
    float h = hue(c);
    float s = saturation(c);
    float b = brightness(c);
   // p.c = color(h,s,b);
    
  }
  
}