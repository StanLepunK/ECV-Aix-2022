PFont font;

void setup() {
  size(400,600);
  // textSize(60);
  textAlign(CENTER);
  
  font = createFont("UniversLTStd-XBlack.otf", 48);
  textFont(font, 48);
  text("Je suis le titre", width/2,height/2);
}
