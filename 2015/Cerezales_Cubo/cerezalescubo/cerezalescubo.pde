bicho Bea;
bicho Bruno;
bicho Ana;
bicho Alfredo;
bicho Juan;
bicho Maria;
bicho Pepe;


float n = 0;
float r = 0;

ArrayList <bicho> Jaula;  //lo llamamos como queramos. creamos un contenedor

void setup() {
  // aqui las cosas que se ejecutan una vez al principio
  size(1200, 600);
  //crea el contenedor vacia: Jaula. Podremos meter bichos
  
  
  Jaula = new ArrayList();
  
  Bea = new bicho(random(10,150),100,200);
  Bruno = new bicho(120, 500, 100);
  Ana = new bicho(450, 500, 150);
  Alfredo = new bicho(300, 500, 90);
  Juan = new bicho(200,100,80);
  Maria = new bicho(90,50,20);
  Pepe = new bicho(30,80,40);
  
  
  
  //meto los bichos en la jaula 
  Jaula.add(Bea);
  Jaula.add(Bruno);
  Jaula.add(Ana);
  Jaula.add(Alfredo);
  Jaula.add(Juan);
  Jaula.add(Maria);
  Jaula.add(Pepe);
  
}

void draw() {
  // 60 veces por segundo
  background(0);
  strokeWeight(1);
  stroke(255,128);
  fill(0,50,150);
  rect(0, 0, 600, 600);
 
  //line(Juan.x, Juan.y, Ana.x, Ana.y);
  //line(Juan.x, Juan.y, Pepe.x, Pepe.y);
  //line(Pepe.x, Pepe.y, Maria.x, Maria.y);
  //line(Maria.x, Maria.y, Bruno.x, Bruno.y);
  //line(Bruno.x, Bruno.y, Ana.x, Ana.y);
  //line(Bruno.x, Bruno.y, Alfredo.x, Alfredo.y);
  //line(Alfredo.x, Alfredo.y, Ana.x, Ana.y);
  //line(Bruno.x, Bruno.y, 0, 0);
  //line(Ana.x, Ana.y, 600, 600);
     line(600,0,600,600);

  // dibuja los bichos
  
  //Bruno.display();
  //Ana.display();
  //Alfredo.display();
  
  for(int n = 0; n< Jaula.size(); n++){//jaula.size es el numero de bichos que hay
    //saco el "enesimo" bicho del contenedor
    bicho este = Jaula.get(n);//saca el enesimo bicho de la caja, es el primero
    este.display();
  }
  
}

void mousePressed(){//fuera de void draw
bicho otromas = new bicho(mouseX,mouseY, random(10,100));
 Jaula.add(otromas);
 
}
 
void mouseDragged(){
  fill(0,0,200);
}
  

