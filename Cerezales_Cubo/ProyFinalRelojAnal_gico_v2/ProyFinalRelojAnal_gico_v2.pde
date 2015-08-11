//Proyecto reloj para proyección ...?

float ls, lm, lh, a, b;  //longitudes aguja segundos, min. y hora. (a,b) centro reloj.
float k = PI/30;  //ángulo mínimo segundero/minutero: pi/30
float kh = k/12;  //ángulo mínimo horas: pi/360
float w = 10;  //ancho círculo central.
int pulsa = 0;  //incremento si pulsación teclas f/a

void setup(){
  size(1200,600);
  ls = 200;
  lm = 150;
  lh = 100;
  a = 900;
  b = 300;
        
}

void draw(){
  background(#96C8E8);
  strokeWeight(1);
  line(600,0,600,600);
  int s = second();  //s variará entre 0 y 59.
  int m = minute();  //m variará entre 0 y 59.
  int h = hour();  //h variará entre 0 y 23.
  
  //Carátula (no terminado):
  for(int i=0; i<12; i++){
    //line(a + (3/4)*ls * cos(i*PI/12), b + (3/4)*ls * sin(i*PI/12), a + (5/4)*ls * sin(i*PI/12), b + (5/4)*ls * sin(i*PI/12));
  }
    
  //Segundero:
  strokeWeight(1);
  float dx = ls * cos(k*s-PI/2);
  float dy = ls * sin(k*s-PI/2);
  line(a, b, a+dx, b+dy);
  
  //Minutero:
  strokeWeight(2);
  dx = lm * cos(k*m-PI/2);
  dy = lm * sin(k*m-PI/2);
  line(a, b, a+dx, b+dy);
  
  //Horas:
  strokeWeight(4);
  dx = lh * cos(kh*h+PI/2);
  dy = lh * sin(kh*h+PI/2);
  line(a, b, a+dx, b+dy);
  
  noFill();
  ellipse(a, b, w + pulsa, w + pulsa);
     
}

void keyPressed(){
 if(key == 'f'){
    pulsa = pulsa + 5; 
  }
 if(key == 'a'){
    pulsa = pulsa -5;
  } 
}
