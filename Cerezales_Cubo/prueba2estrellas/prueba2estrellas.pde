


PImage img;
ArrayList <estrella> Universo;

void setup() {
  // aqui las cosas que se ejecutan una vez al principio
  size(1200, 600);
  img = loadImage("mooncopia.png"); 

  //crea el contenedor: Universo
  Universo = new ArrayList();


  //utilizo un bucle para crear n estrellas
  for (int n = 0; n < 300; n++) {
    //estrella nuevaEstrella = new estrella(random(0), random(600), random(10,15), random (15,20),   random (12, 30));
    estrella nuevaEstrella = new estrella(random(1200), random(600), 1,5,5);
    Universo.add(nuevaEstrella);
  }
}

void draw() {
  frameRate(12);
  // 60 veces por segundo
  background(0);
  //strokeWeight(1);
  //stroke(255, 128);


  for (int n = 0; n < Universo.size (); n ++) {
    //saco la "enesima" estrella del contendor/array
    estrella esta = Universo.get(n);
    esta.display();
    //stroke(255, 128);
    //line(300, 300, esta.x, esta.y);
     
  }
  image(img, 150, 0);
  
  fill(0,200);
  ellipse(mouseX,300,600,600);
}



void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

