# Proof of concept Luka Verhoeven
## Start Project
-Zoeken naar programma’s/software of via code visuals te maken <br />
-Zoeken naar een programma / plugin / library die midi kan integreren <br />
*	Kodelife ( coding tool )
*	Processing ( coding tool ) valt te vergelijken met arduino.
*	TheMidiBus ( midi library )
* p5js.org library. javascript gebaseerd op processing voor web.

Veel midi library's die ik vond zijn outdated of bestaan zelfs gewoon niet meer. <br/>
Ik ga voor Processing kiezen om dat hierover precies meer documentatie te vinden valt dan Kodelife. <br/>
Processing is voornamelijk java maar ik denk dat het ook mogelijk is om andere talen te importeren

## Eerste tryout

Proberen importeren van TheMidiBus library en deze te gebruiken.
* sketchbook is waar je processing folder is opgeslaan ( standaard is dit id je documenten )
* een sketch is een stuk code dat je maakt. ( .pde )
* Leren library importeren ( => problemen met het vinden van library)

## logging

* println("test");
* printArray(south);

## Shapes

* create window: size(200,200);
* create point: point( 50, 50);
* create line: line(90,150,80,160);
* create ellipse: ellipse(119,70,16,32);
* create rectangle: rect(100,100,20,100);
* create pie-diagram: arc(50, 50, 66, 66, 0, radians(angle));

## Colors

* fill: fill(0,0,255,127); => needs to be placed before creating a shape. (R G B A)
* noStroke: noStroke(); => verwijderd de rand van een figuur.
* stroke: stroke(v1, v2, v3, alpha); v1 = hue / v2 = saturation / v3 = brigthness

## functions

* Setup : Initialize objects.
* Draw : Display/Draw objects.

## text
* textSize(30) : Size of the text textsize(int)
* text(key, 20, 75) : text( string, width, height )
* PFont f : create font variables
* f = createFont("Arial",20,true): Initialize font
* textFont(f): set font
* textAlign(CENTER): align textAlign

## key-code
* keyCode == UP
* keyCode == DOWN
* key == CODED : Is used when key is not included is the ASCII table

## keyboard

* key : pressed key
* keyPressed == true : Check if key is pressed
* void keyReleased(){} :  function activate when keyreleased

## start/stop
* noLoop() : stops the program
* loop()   : starts the program

## movements
* rotate(theta):
* translate(width/2,height/2): Translate to center
* pushMatrix(); //replace or animate a shape between push and pop</br>
translate(30, 20); </br>
fill(0);   </br>
rect(0, 0, 50, 50);  </br>
popMatrix();</br>

## int / Math
* random(12,36)
* sin(2)
* abs() : getallen absolute maken ( geen - )
* map(value, start1, stop1, start2, stop2): maps value( which is between start/stop1) to a value between start/stop 2

## String
* charAt(i) : gets a letter from a string

## Arrays
* create array: int[] x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 } Or spots = new Spot[numSpots];
* arrayCopy(north, south): copies array north to south;
* printArray(south) : prints an array;
* float[] halve(float[] d) {}: array function;

# TheMidiBus
## Functions
* void controllerChange(int channelIn, int numberIn, int valueIn){}; detects and retreives data when turning knobs.
* void noteOn (int channelIn, int numberIn, int valueIn){}; detects and retreives data when touching keys.
