import deadpixel.keystone.*;

Keystone ks;
CornerPinSurface surface;
CornerPinSurface surface2;


PGraphics offscreen, offscreen2;
//PGraphics offscreen2;

void setup() {
  size(displayWidth, displayHeight, P3D);

  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(400, 400, 20);
  surface2 = ks.createCornerPinSurface(400, 400, 20);
  
  offscreen = createGraphics(400, 400, P3D);
  offscreen2 = createGraphics(400, 300, P3D);

}

void draw() {

  PVector surfaceMouse = surface.getTransformedMouse();
  PVector surfaceMouse2 = surface2.getTransformedMouse();

  // Draw the scene, offscreen
  offscreen.beginDraw();
  
  offscreen.background(128,0,0);
  // ellisse fissa
  offscreen.fill(255);
  offscreen.ellipse(offscreen.width/2, offscreen.height/2, 120,120);
  
  offscreen.fill(128,128);
  offscreen.ellipse(surfaceMouse.x, surfaceMouse.y, 120, 120);
  
  offscreen.endDraw();
  
  // l' altra superf
  offscreen2.beginDraw();
  
  offscreen2.background(255);
  // disegna altre cose
  offscreen2.fill(128,128);
  offscreen2.ellipse(surfaceMouse2.x, surfaceMouse2.y, 120, 120);
  
  offscreen2.endDraw();
  
 
  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);
 
  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
  surface2.render(offscreen2,0,0,300,300);

  //surface2.render(offscreen2);
}

/*
boolean sketchFullScreen() {
  return true;
}
*/

void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    break;

  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;
  }
}
