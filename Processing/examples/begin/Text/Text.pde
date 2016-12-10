PFont zigBlack, sourceLight;

void setup() {
  size(100, 100);
  zigBlack = createFont("3290D7_0_0.eot", 24);
  sourceLight = createFont("3290DE_0_0.eot", 34);
  fill(0);
}

void draw() {
  background(204);
  textFont(zigBlack);
  text("LAX", 0, 40);
  textFont(sourceLight);
  text("LHR", 0, 70);
  textFont(zigBlack);
  text("TXL", 0, 100);
}