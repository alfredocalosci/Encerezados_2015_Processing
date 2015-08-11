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

void setup(){
  
  float angulo;
  
  size(1200,600);
  
  Reloj = new ArrayList();
    Rebote = new ArrayList();

  
Doce = new Cosas(600,50,90);
  MenosCuarto = new Cosas(350,270,90);
  YMedia = new Cosas(600,530,90);
  YCuarto = new Cosas(850,270,90);
  YCinco = new Cosas(700,120,50);
  YDiez = new Cosas(770,190,50);
  YVeinte = new Cosas(770,370,50);
  YVeinteMasCinco = new Cosas(700,450,50);
  MenosVeinteMasCinco = new Cosas(500,450,50);
  MenosVeinte = new Cosas(420,370,50);
  MenosDiez = new Cosas(420,190,50);
  MenosCinco = new Cosas(500,120,50);
  CENTRO = new Cosas(600,290,10);
  
 Bola1 = new Bolas(200,300,20);
 Bola2 = new Bolas(200,300,20);

for(int n = 0;n<100; n++){
  Bolas bubu = new Bolas(random(1200), random(600), random(12,15));// CREAS EN EL BUCLE 36 NUEVOS BICHOS QUE SON DE GRANDES ALEATORIAMENTE
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

void draw(){
  
  float angulo;
  
 background(#676767);
 

for(int n = 0; n < Rebote.size(); n++){
  Bolas B = Rebote.get(n);
  B.display();
}


 pushMatrix();
 
 translate(600,290);
 angulo = map(second(),0,60,TWO_PI,0);
 rotate(angulo);
 rectMode(CENTER);
 noFill();
 rect(0,0,300,300);
 ellipse(0,-150,32,32);
 
 popMatrix();
 
 
 
noFill();
ellipse(600,290,500,500);



 //for(int n = 0; n<20; n++);
 
    float distancia = 1200 /2;
    
     float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

     float m = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;

     float h = map(hour() % 12, 0, 12, 0, TWO_PI) - HALF_PI;
    
    
    strokeWeight(3);
    stroke(255);
    
     line(600, 290, cos(s) * 72 + 600, sin(s) * 72 + 290);
      line(600, 290, cos(m) * 100 + 600, sin(m) * 100 + 290);
       line(600, 290, cos(h) * 125 + 600, sin(h) * 125 + 290);
     
    //line(600,290,450,350);
   
 
     
     Bola1.display();
     Bola2.display();

 
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
     
     
}

