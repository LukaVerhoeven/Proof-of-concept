float[] sineWave;

void setup() {
  size(100, 100);
  sineWave = new float[width];
  for (int i = 0; i < sineWave.length; i++) {
   
    // Fill array with values from sin()
    float r = map(i, 0, width, 0, TWO_PI);
     println(abs(sin(r)));
    sineWave[i] = abs(sin(r));
  }
}

void draw() {
  for (int i = 0; i < sineWave.length; i++) {
    // Set stroke values to numbers read from array
    stroke(sineWave[i] * 255);
    line(i, 0, i, height);
  }
}