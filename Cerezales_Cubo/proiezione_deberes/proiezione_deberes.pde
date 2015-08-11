import deadpixel.keystone.*;

Keystone ks;
CornerPinSurface surface;
CornerPinSurface surface2;


PGraphics offscreen, offscreen2;
//PGraphics offscreen2;

// reloj 1
Cosas MenosCuarto;
Cosas Doce; 
Cosas YMedia;
Cosas YCuarto;
Cosas YCinco;
Cosas YDiez;
Cosas YVeinte;
Cosas YVeinteMasCinco;
Cosas MenosVeinteMasCinco;
Cosas MenosVeinte;
Cosas MenosDiez;
Cosas MenosCinco;
Cosas CENTRO;

Bolas Bola1;
Bolas Bola2;

ArrayList <Cosas> Reloj;
ArrayList <Bolas> Rebote;

void setup() {
  size(displayWidth, displayHeight, P3D);
  frameRate(24);

  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(600, 600, 20);
  surface2 = ks.createCornerPinSurface(600, 600, 20);

  offscreen = createGraphics(600, 600, P3D);
  offscreen2 = createGraphics(600, 600, P3D);


  // r1
  float angulo;
  Reloj = new ArrayList();
  Rebote = new ArrayList();

  Doce = new Cosas(600, 50, 90);
  MenosCuarto = new Cosas(350, 270, 90);
  YMedia = new Cosas(600, 530, 90);
  YCuarto = new Cosas(850, 270, 90);
  YCinco = new Cosas(700, 120, 50);
  YDiez = new Cosas(770, 190, 50);
  YVeinte = new Cosas(770, 370, 50);
  YVeinteMasCinco = new Cosas(700, 450, 50);
  MenosVeinteMasCinco = new Cosas(500, 450, 50);
  MenosVeinte = new Cosas(420, 370, 50);
  MenosDiez = new Cosas(420, 190, 50);
  MenosCinco = new Cosas(500, 120, 50);
  CENTRO = new Cosas(600, 290, 10);

  Bola1 = new Bolas(200, 300, 20);
  Bola2 = new Bolas(200, 300, 20);

  for (int n = 0; n<100; n++) {
    Bolas bubu = new Bolas(random(1200), random(600), random(12, 15));// CREAS EN EL BUCLE 36 NUEVOS BICHOS QUE SON DE GRANDES ALEATORIAMENTE
    Rebote.add(bubu);//AÑADES AL NUEVO BICHO A LA "JAULA"
  }



  Reloj.add(MenosCuarto);
  Reloj.add(YMedia);
  Reloj.add(YCuarto);
  Reloj.add(YDiez);
  Reloj.add(YCinco);
  Reloj.add(YVeinte);
  Reloj.add(YVeinteMasCinco);
  Reloj.add(MenosVeinteMasCinco);
  Reloj.add(MenosVeinte);
  Reloj.add(MenosDiez);
  Reloj.add(MenosCinco);

  angulo = 0;
}

void draw() {

  PVector surfaceMouse = surface.getTransformedMouse();
  PVector surfaceMouse2 = surface2.getTransformedMouse();


  float distancia = 1200 /2;
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;


  // Draw the scene, offscreen
  offscreen.beginDraw();

  offscreen.background(#676767);

  for (int n = 0; n < Rebote.size (); n++) {
    Bolas B = Rebote.get(n);
    B.display();
  }

  offscreen.pushMatrix();

  offscreen.translate(600, 290);

  float angulo = map(second(), 0, 60, TWO_PI, 0);

  offscreen.rotate(angulo);
  offscreen.rectMode(CENTER);
  offscreen.noFill();
  offscreen.stroke(255);
  offscreen.strokeWeight(3);
  offscreen.rect(0, 0, 300, 300);
  offscreen.ellipse(0, -150, 32, 32);

  offscreen.popMatrix();


  offscreen.noFill();
  offscreen.ellipse(600, 290, 500, 500);

  offscreen.strokeWeight(3);
  offscreen.stroke(255);

  offscreen.line(600, 290, cos(s) * 72 + 600, sin(s) * 72 + 290);
  offscreen.line(600, 290, cos(m) * 100 + 600, sin(m) * 100 + 290);
  offscreen.line(600, 290, cos(h) * 125 + 600, sin(h) * 125 + 290);



  Doce.display();
  MenosCuarto.display();
  YMedia.display();
  YCuarto.display();
  YCinco.display();
  YDiez.display();
  YVeinte.display();
  YVeinteMasCinco.display();
  MenosVeinteMasCinco.display();
  MenosVeinte.display();
  MenosDiez.display();
  MenosCinco.display();
  CENTRO.display();


  offscreen.endDraw();

  // l' altra superf
  offscreen2.beginDraw();

  offscreen2.background(#676767);

  for (int n = 0; n < Rebote.size (); n++) {
    Bolas B = Rebote.get(n);
    B.display2();
  }

  offscreen2.pushMatrix();

  offscreen2.translate(0, 290);

  float angulo2 = map(second(), 0, 60, TWO_PI, 0);

  offscreen2.rotate(angulo2);
  offscreen2.rectMode(CENTER);
  offscreen2.noFill();
  offscreen2.stroke(255);
  offscreen2.strokeWeight(3);
  offscreen2.rect(0, 0, 300, 300);
  offscreen2.ellipse(0, -150, 32, 32);

  offscreen2.popMatrix();

  offscreen2.noFill();
  offscreen2.ellipse(0, 290, 500, 500);


  offscreen2.strokeWeight(3);
  offscreen2.stroke(255);

  offscreen2.line(0, 290, cos(s) * 72, sin(s) * 72 + 290);
  offscreen2.line(0, 290, cos(m) * 100, sin(m) * 100 + 290);
  offscreen2.line(0, 290, cos(h) * 125, sin(h) * 125 + 290);

  Doce.display2();
  MenosCuarto.display2();
  YMedia.display2();
  YCuarto.display2();
  YCinco.display2();
  YDiez.display2();
  YVeinte.display2();
  YVeinteMasCinco.display2();
  MenosVeinteMasCinco.display2();
  MenosVeinte.display2();
  MenosDiez.display2();
  MenosCinco.display2();
  CENTRO.display2();

  offscreen2.endDraw();


  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);

  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
  surface2.render(offscreen2, 0, 0, 600, 600);

  //surface2.render(offscreen2);
}


boolean sketchFullScreen() {
 return true;
 }


void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    break;

  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;
  }
}

