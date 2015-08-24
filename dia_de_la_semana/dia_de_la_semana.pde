// importa algo sobre fechas desde Java
import java.util.Date;
// numero variable de 0 a 6 (domingo a lunes)
int diaDeLaSemana;

// Array (cadena) con los nombres de los día en Castellano
String[] nombreDias = { 
  "Domingo", "Lunes", "Martes", "Míercoles", "Jueves", 
  "Viernes", "Sabado"
};

void setup() {
  size(600, 600);
  
  // obtiene en dia de la semana (como numero)
  diaDeLaSemana = new Date().getDay();
}

void draw() {
  background(200);
  
  textAlign(CENTER);
  textSize(48);
  
  // el texto correspondiente al día de hoy
  // nombreDias[0] >> es domingo
  // nombreDias[5] >> es viernes
  // mientras que hoy es ...
  String hoyEs = nombreDias[diaDeLaSemana];

  text(hoyEs, 300,300);
  
  //println(nombreDias[diaDeLaSemana]);
  //println(diaDeLaSemana);
}

