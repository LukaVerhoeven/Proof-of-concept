int x = 20;

void setup() {
  size(100, 100);
  textSize(60);
  strokeWeight(4);
  stroke(20,80,80);
}

void draw() {
  background(0);
  text(key, 20, 75); // Draw at coordinate (20,75)

  
  //if keypressed line does move
   if (keyPressed == true) { // If the key is pressed
    x++; // add 1 to x
  } 
  line(x, 20, x-60, 80);
}