void setup() {
  size(100, 100);
  stroke(0);
}

void draw() {
  if (keyPressed == true) {
    int x = key - 32; // Basic on the number in the ASCII table
    line(x, 0, x, height);
  }
}