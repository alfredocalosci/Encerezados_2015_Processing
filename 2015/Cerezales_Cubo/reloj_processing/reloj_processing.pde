PImage a;
PImage g;
PImage o;

ArrayList <bolas> horas;

void setup(){
 
 size(1200,600);
  g = loadImage ("gota.jpg");
  a= loadImage ("agua.jpg");
  o = loadImage ("olas.gif");
  
  horas = new ArrayList();
  
  for (int n = 0; n<23; n++){
    bolas nueva = new bolas (600,575,50);
    horas.add(nueva);
  }
}

void draw(){
  background(0);
 
  int s = second(); // 0 >59
 int m = minute();
 int h = hour();
 
 int h12 = h % 12;
 //println(h12);
  
  fill(0,0,200);
  image(a,600,600-(s*(600/60)),600,s*(600/60));
  
  fill (200,0,0);
  image(o,0,600-(m*(600/60)),600,m*(600/60));
 
 // 24 horas
   /*for (int n=0; n<h; n++){
    fill(0,255,0);
    ellipse(600,600/24/2+(600/24)*n,600/24 *0.75,600/24*0.75);
   }*/
   
    // 12 horas
   for (int n=0; n<h12; n++){
    fill(0,255,0);
   image(g,575, 600- 600/12 - (600/12)*n,600/12,600/12);
   }
  
}
