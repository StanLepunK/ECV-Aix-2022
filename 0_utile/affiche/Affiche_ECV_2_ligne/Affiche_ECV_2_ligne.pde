void setup() {
  size(400,600);
  background(0);
  titre();
  ligne(75, 255, 2);
  ligne(200, 200, 5);
  ligne(300, 150, 10);
  ligne(350, 90, 18);
  ligne(450, 60, 25);
  ligne(550, 20, 35);
}

void ligne(int pos_y, int gris, int epaisseur) {
  stroke(gris);
  strokeWeight(epaisseur);
  int line_pos_y = pos_y;
  line(0,line_pos_y, width,line_pos_y);
}

void titre() {
  textSize(40);
  textAlign(CENTER);
  int text_pos_x = width /2;
  int text_pos_y = height /4;
  text("Ecosystème",text_pos_x,text_pos_y);
}
  
