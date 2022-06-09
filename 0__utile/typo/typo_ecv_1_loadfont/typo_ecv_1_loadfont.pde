PFont font;

void setup() {
  size(400,600);
  // textSize(60);
  textAlign(CENTER);
  
  // Il faut créer la typo à la bonne taille
  // Onglet Outil>générer le police
  
  // car après si on l'utilise à une taille différente ça peut faire de drôle d'effet... voir flou !
  font = loadFont("UniversLTStd-XBlackEx-48.vlw");
  textFont(font, 48);
  text("Je suis le titre", width/2,height/2);
}
