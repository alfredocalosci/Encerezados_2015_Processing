bicho Bruno;
bicho Ana;
 
 void setup(){
   // aqui las cosas que se ejecutan una vez al principio
  size(600,600);
  Bruno = new bicho(120,500,300);
  Ana = new bicho(450,500,150);
 }
 
 void draw(){
   // 60 veces por segundo
   background(255);
   strokeWeight(1);
   
   for(int n=0; n<20; n++){
     float distancia = 600/20;
     line(n*distancia,0,n*distancia,600);
     line(0,n*distancia,600,n*distancia);
     
     line(n*distancia,0,600,n*distancia);
     line(0,600-n*distancia,n*distancia,0);
   }
   
   for(int n = 0; n<20; n++){
    strokeWeight(n+1);
    stroke(n*10);
    line(mouseX, mouseY, n*30, 0);
    
    line(Bruno.x, Bruno.y, Ana.x, Ana.y);
  }
  
  line(Bruno.x, Bruno.y, 0, 0);
  line(Ana.x, Ana.y, 600, 600);
   
   // dibuja los bichos
   Bruno.display();
   Ana.display();
 }
 
 
