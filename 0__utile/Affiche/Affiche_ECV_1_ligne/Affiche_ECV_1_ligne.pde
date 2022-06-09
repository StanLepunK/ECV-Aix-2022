void setup() {
  size(400,600);
  background(0);
  titre();
  stroke(255);
  strokeWeight(5);
  int line_pos_y = 50;
  line(0,line_pos_y, width,line_pos_y);
}

void titre() {
  textSize(40);
  textAlign(CENTER);
  int text_pos_x = width /2;
  int text_pos_y = height /4;
  text("Ecosystème",text_pos_x,text_pos_y);
}
  
