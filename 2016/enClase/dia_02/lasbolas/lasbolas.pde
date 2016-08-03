aro a1, a2, a3;
ArrayList <aro> losAros;

void setup() {
  size(600, 600);
  losAros = new ArrayList();
  a1 = new aro(24, 120);
  a2 = new aro(24, 120);
  a3 = new aro(24, 120);

  losAros.add(a1);
  losAros.add(a2);
  losAros.add(a3);

  for (int n = 0; n<12; n++) {
    aro nuevo = new aro(random(8, 32), random(64, 180));
    losAros.add(nuevo);
  }
}

void draw() {
  background(255);

  for (int n = 0; n< losAros.size(); n++) {
    aro anonimo = losAros.get(n);
    anonimo.display();
  }
}

void keyPressed() {
  aro nuevo = new aro(random(8, 32), random(64, 180));
  losAros.add(nuevo);
}