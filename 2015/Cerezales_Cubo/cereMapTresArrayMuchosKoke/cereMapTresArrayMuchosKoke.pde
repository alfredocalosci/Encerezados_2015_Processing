//bicho Bruno;
//bicho Ana;
//bicho Alfredo;

ArrayList <bicho> Jaula;//presento el array con la clase que contiene:bicho

void setup() {
  // aqui las cosas que se ejecutan una vez al principio
  size(1200, 600);
  
  //creo el contenedor:Jaula
  Jaula = new ArrayList();
  
  
  //Bruno = new bicho(120, 500, 300);
  //Ana = new bicho(450, 500, 150);
  //Alfredo = new bicho(450, 500, 200);
  
  //meto los bichos en la Jaula
  //Jaula.add(Bruno);
  //Jaula.add(Ana);
  //Jaula.add(Alfredo);
      
  for(int n= 0; n<36; n++){//hago 36 bichos mas con el array
   bicho nuevo = new bicho(random (600), random (600), random (12,120));//random de un valor: entre 0 y 600
   //random 2 valores: entre esos valores
   Jaula.add(nuevo);
  } 
for(int n= 0; n<60; n++){//hago 60 bichos mas con el array
   bicho nuevo = new bicho(random (600), random (600), random (12,15));//random de un valor: entre 0 y 600
   //random 2 valores: entre esos valores
   Jaula.add(nuevo);
  }     
    
  }

void draw() {
  // 60 veces por segundo
  background(0);
  strokeWeight(1);
  stroke(255,128);
   line(600,0,600,600);
  fill(70);
  rect(0,0,600,600);

 /* for (int n = 0; n<20; n++) {
    strokeWeight(1);
    line(0, n*30, Bruno.x, Bruno.y);
  }*/

  //line(Bruno.x, Bruno.y, Ana.x, Ana.y);
  //line(Bruno.x, Bruno.y, Alfredo.x, Alfredo.y);
  //line(Alfredo.x, Alfredo.y, Ana.x, Ana.y);
  //line(Ana.x, Ana.y, 600, 600);

  // dibuja los bichos
  //Bruno.display();
  //Ana.display();
 // Alfredo.display();
 
 for(int n=1; n<Jaula.size(); n++){
   //saco el n bicho del cont., 
   bicho este= Jaula.get(n);
   if (n>0){bicho anterior= Jaula.get (n-1);
    line(este.x, este.y, anterior.x, anterior.y);//linea une centros
  }
   
  
   
   este.display();

   
   strokeWeight(1);
   stroke(255,128);
     
   
 }
  
  
}

void mousePressed(){
  bicho otromas =new bicho(mouseX,mouseY,30);
  Jaula.add(otromas);
  
}
