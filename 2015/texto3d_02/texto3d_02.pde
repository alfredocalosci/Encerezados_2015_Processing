float rotacion;

void setup() {
    // nuevo documento de 900 x 600 en 3d
    size(900,600,P3D);    
    textSize(48);
    
    // 24 fotogramas por segundo
    frameRate(24);
    
    // rotación variable
    rotacion = 0;
} 

void draw() {  
    background(0);
    
    // "graba" la posición actual del punto de origen de los ejes cartesianos
    // normalmente está en la esquina superior izquierda
    pushMatrix();
    // mueve el origen al centro de la pantalla
    translate(width/2, height/2);
    // rotación sobre el eje Y
    rotateY( radians(rotacion));
    //rotateX(map(mouseY,0,height,-PI,PI));
    
    fill(255);
    // escribe algo en 3 dimensiones > x,y,z
    text("un texto largo", -24, 0, 0);
    text("y otro mas", -24, 48, 0);
    
    //fill(128);
    noFill();
    stroke(255);
    strokeWeight(3);
    //crea una caja (un cubo) de 96x96x96 ancho, alto profundidad
    //la nueva caja tiene centro en el punto de origen
    box(96, 96, 96);
    
    // devuelve el punto de origen en su sitio
    // en la posición que "grabamos" con pushMatrix()
    popMatrix();
    
    // aumenta un poco la rotación 
    rotacion += 0.5;
    //println(rotacion);
}
