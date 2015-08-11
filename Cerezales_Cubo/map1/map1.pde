bicho este;
ArrayList <bicho> Jaula;//presento el array con la clase que contiene:bicho


void setup(){
  size(1200,600);
  frameRate(24);
   //creo el contenedor:Jaula
  Jaula = new ArrayList();
  
  for(int n= 0; n<10; n++){//hago 1000 bichos mas con el array
   bicho nuevo = new bicho(random (600),random (600), random (50));//random de un valor: entre 0 y 600
   //random 2 valores: entre esos valores
   Jaula.add(nuevo);
  } 
}

void draw(){
  background(0);
  strokeWeight(1);
  stroke(255,128);
  line(600,0,600,600);
  fill(70);
  rect(0,0,600,600);
  
  for(int n=0; n<Jaula.size(); n++){
   //saco el n bicho del cont., 
   bicho este= Jaula.get(n);
    if (n>0){bicho anterior= Jaula.get (n-1);
    line(este.x, este.y, anterior.x, anterior.y);//linea une centro
    }
   este.display();
    strokeWeight(1);
   stroke(255,128);
 }
  
}
void mousePressed(){
   bicho nuevo = new bicho(mouseX,mouseY, random (50));
  Jaula.add(nuevo);
  
}  
  
 




