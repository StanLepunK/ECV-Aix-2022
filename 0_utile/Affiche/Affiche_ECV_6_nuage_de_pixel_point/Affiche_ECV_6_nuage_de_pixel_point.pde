void setup() {
  size(400,600);
  background(0);
  nuage(2000);
  titre();

}

void nuage(int max) {
  stroke(255);
  strokeWeight(2);
  for(int i = 0 ; i < max ; i++) {
    int x = (int)random(width);
    int y = (int)random(height);
    point(x,y);
  }
}



void titre() {
  textSize(40);
  textAlign(CENTER);
  int text_pos_x = width /2;
  int text_pos_y = height /4;
  text("Ecosystème",text_pos_x,text_pos_y);
}
  
