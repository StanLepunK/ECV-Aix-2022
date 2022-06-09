void setup() {
  size(400,600);
  background(0);
  int pos_titre_x = width /2;
  int pos_titre_y = height /4;
  int titre_size = 40;
  int num_pixel = 100000;
  background(0);
  nuage_pixel(num_pixel);
  titre(pos_titre_x, pos_titre_y, titre_size);

}

void nuage_pixel(int num) {
  for(int i = 0 ; i < num ; i++) {
    int c = color(random(g.colorModeX),random(g.colorModeX),random(g.colorModeX));
    int x = (int)random(width);
    int y = (int)random(height);
    set(x,y,c);
  }
}



void titre(int x, int y, int size) {
  textSize(size);
  textAlign(CENTER);
  text("Ecosystème",x,y);
}
  
