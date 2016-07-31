class bolas{
  
 float x,y,w;
color c;

bolas (float _x, float _y, float _w){
x = _x;
y = _y;
w= _w;
c = color(0,200,0);
}
void display(){
  fill(c);
noStroke();
ellipse(x,y,w,w);




}

}
