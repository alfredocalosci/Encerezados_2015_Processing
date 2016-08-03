// pdf
import processing.pdf.*;
boolean record;

void setup() {
  size(800,800);
  smooth();
  
  // no estamos grabando
  record = false;
}

void draw() {
  
  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    // empieza a grabar
    beginRecord(PDF, "frame-####.pdf");
  }
  
  // tu dibujo aqui:
  background(200);
  fill(128,0,0);
  noStroke();
  ellipse(400,400,300,300);
  
  // termina de grabar
  if (record) {
    endRecord();
    record = false;
  }
}


void keyPressed(){
    // tecla S para grabar
    if (key == 's' || key == 'S') {
      record = true;
    }
}