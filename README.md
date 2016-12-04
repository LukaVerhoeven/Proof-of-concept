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

## Shapes

* create window: size(200,200);
* create point: point( 50, 50);
* create line: line(90,150,80,160);
* create ellipse: ellipse(119,70,16,32);
* create rectangle: rect(100,100,20,100);

## Colors

* fill: fill(0,0,255,127); => needs to be placed before creating a shape. (R G B A)
* noStroke: noStroke(); => verwijderd de rand van een figuur.
* stroke: stroke(v1, v2, v3, alpha); v1 = hue / v2 = saturation / v3 = brigthness
