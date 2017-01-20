import themidibus.*;
MidiBus myBus;
float n = 0;
float c = 35;
int amount = 0;
float prevX;
float prevY;
int colorHue;
int objectsize = 0;
int randomVelocity = 0;
boolean redrawActive = true;
boolean danceActive = false;

ArrayList<Particle> particles;

void setup(){
  size(800,800);
  MidiBus.list();
  myBus = new MidiBus(this,0,1);
  colorMode(HSB);
  background(0);

  particles = new ArrayList<Particle>();
  prevX = width/2;
  prevY = height/2;

}
void draw(){
  //makes black square
  fill(0,80);
  rect(0, 0, width, height);

  //THE SHAPE GENERATOR
  for(int i = 0; i < objectsize; i++){
    if(i==0){
      prevX = width/2;
      prevY = height/2;
    }

    float a = n;
    float r = c * sqrt(n);
    float x = r * cos(a) + width/2;
    float y = r * sin(a) + height/2;
    particles.add(new Particle(x,y,a,r));
    Particle part = particles.get(amount);

    if(redrawActive){
      part.redraw(x,y);
    }
    part.connect();
    part.draw();
    if(danceActive){
      part.dance();
    }

    if(randomVelocity==0){
      part.origin();
    }
    amount++;
    n++;
  }
  n=0;
  amount=0;
}
void controllerChange(int channel, int number, int valueIn){
  //println(channel);
  // println(number);
  println(valueIn);
  if(number==22){
    n = map(valueIn, 0 , 127, 0, width);
  }
  if(number==23){
    c = map(valueIn, 0 , 127, 0, 40);
    redrawActive = true;
    danceActive = false;

  }
  if(number==24){
    objectsize = int(map(valueIn, 0 , 127, 0, 1000));
  }
}
void noteOn (int channelIn, int numberIn, int valueIn){
  // println(channelIn);
  println(numberIn);
  //println(value);
  if(channelIn==0){
   colorHue = int(map(numberIn, 48 , 72, 0, 255));
  }
  if(channelIn==1){
    randomVelocity =int(map(numberIn, 60 , 78, 0, 10));
    redrawActive = false;
    danceActive = true;
  }

}

class Particle{

  float x, y;
  float originX,originY;
  float angle;
  float radius;

  // Constructor
  Particle(float xpos, float ypos, float a, float r) {
    x = xpos;
    y = ypos;
    originX = xpos;
    originY = ypos;
    angle = a;
    radius = r;
  }

  void draw(){
    fill(colorHue, 255, 255);
    noStroke();
    ellipse(x,y,15,15 );
  }
  void redraw(float newX, float newY){
    x = newX;
    y = newY;
    originX = newX;
    originY = newY;
  }

  void connect(){
    beginShape();
    stroke(255);
    strokeWeight(2);
    vertex(prevX,prevY);
    vertex(x,y);
    endShape();

    prevX = x;
    prevY = y;
  }
  void dance() {
    x += random(-randomVelocity,randomVelocity);
    y += random(-randomVelocity,randomVelocity);
  }

  void origin(){
    x = originX;
    y = originY;
  }


}
