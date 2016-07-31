PImage miImagen;
ArrayList <punto> Caja;


void setup(){
  size(600,600);
  miImagen = loadImage("leon.jpg");
  
  Caja = new ArrayList();
  
  for(int n = 0; n < 1500; n++){
    int nX = floor(random(width));
    int nY = floor(random(height));
    color nC = miImagen.get(nX,nY);
    
    // crea un nuevo punto
    punto P = new punto(nX, nY, nC);
    Caja.add(P);
  }
  
}

void draw(){
  // image(miImagen,0,0);
  background(0);
  color c = miImagen.get(mouseX,mouseY);
  fill(c);
  rect(0,0,width,48);
  
  for(int n = 0; n < Caja.size(); n++){
    punto P = Caja.get(n);
    P.display();
  }
  
}
