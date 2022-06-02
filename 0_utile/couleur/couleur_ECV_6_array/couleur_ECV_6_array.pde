int [] nombre = new int[10];

void setup() {
  println("num", nombre.length);
  printArray(nombre);
  nombre[0] = 100;
  nombre[8] = 888;
  println("encore");
  printArray(nombre);
}
