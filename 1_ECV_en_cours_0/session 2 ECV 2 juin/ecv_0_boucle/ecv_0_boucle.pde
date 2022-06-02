void setup() {
  size(400,600);
  strokeWeight(5);
  int max = 20;
  int truc = width / max;
  // for(int i = 0; i < 10 ; i = i + 1) {
  // for(int i = 0; i < 10 ; i += 1) {
  for(int i = 0; i < max ; i++) {
    int x = i * truc;
    int y = i * truc;
    println(i);
    // println("x",x,"y",y);
    point(x,y);
  }
  print("je sors");
}
