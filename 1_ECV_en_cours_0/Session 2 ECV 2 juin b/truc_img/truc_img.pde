PImage img;
void setup() {
  size(400,600);
  img = loadImage("truc_2.png");
  // ça non
  // image(img,0,0);
  // ça oui
  int max = img.pixels.length;
  strokeWeight(15);
  for(int i = 0 ; i < max ; i++) {
    int c = img.get((int)random(img.width), (int)random(img.height));
    stroke(c);
    point((int)random(width), (int)random(height));
    
    // set((int)random(width), (int)random(width), c);
  }

}
