class Bolas {

  float x, y, w;
  float vy;
  float vx;


  Bolas(float _x, float _y, float _w) {
    x = _x;
    y = _y;
    w = _w;

    vy = random(-5, -1);
    vx = random(0, 5);
  }
  
  
  void display() {
    offscreen.fill(#AAB7AC);
    offscreen.ellipse(x, y, w, w);
    // ellipse() = random(x,y,w,w);
    y = y + vy;
    x = x +vx;

    if (y < 0) {
      vy = vy * -1;
    }

    if (y > 600) {
      vy = vy /-1;
    }


    if (x < 0) {
      vx = vx  +5;
    }

    if (x >1200) { 
      vx = vx -5;
    }
  }
  
  
  void display2() {
    offscreen2.fill(#AAB7AC);
    offscreen2.ellipse(x-600, y, w, w);
    // ellipse() = random(x,y,w,w);
    y = y + vy;
    x = x +vx;

    if (y < 0) {
      vy = vy * -1;
    }

    if (y > 600) {
      vy = vy /-1;
    }


    if (x < 0) {
      vx = vx  +5;
    }

    if (x >1200) { 
      vx = vx -5;
    }
  }
}

