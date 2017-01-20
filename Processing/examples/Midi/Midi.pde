import themidibus.*;
MidiBus myBus;
spot[] spots;
float newDiameter;
float newX;
float newY;
float newtranslateX;
float newtranslateY;
float newScale;
float newGrow;
float newGrowFactor;

float grow;


void setup() {
  size(800,800);
  background(0);
  MidiBus.list();
  myBus = new MidiBus(this,0,1);
  grow = 0;
  
}
void draw (){
  //line(0, value , width, value );
  fill(0,12);
  rect(0, 0, width, height);
  fill(255);
  float everypixel= newScale;
  int amountwidth = round(width/everypixel);
  int amountheight = round(height/everypixel);
  spots = new spot[amountwidth * amountheight];
  
  if(everypixel>0){
  for(int i = 1; i < amountwidth; i++){
    for(int j = 1; j < amountheight; j++){
          
         
       
        
         spots[j*i] = new spot(everypixel*i+newX, everypixel*j+newY, newDiameter+grow );
         spots[j*i].display();
         spots[j*i].grow();

      translate(newtranslateX,newtranslateY);
     
    }
  }
  }
  
 //translate(width/2, height/2);
 
   
}
void controllerChange(int channel, int number, int valueIn){
  //println(channel);
  //println(number);
  println(valueIn);
if(number==22){
  newDiameter = map(valueIn, 0 , 127, 0, width);
}
if(number==23){
  newX = map(valueIn, 0 , 127, -width, width);
}
if(number==24){
  newY = map(valueIn, 0 , 127, -width, width);
}
if(number==25){
  newtranslateX = map(valueIn, 0 , 127,0 , 100);
}
if(number==26){
  newtranslateY = map(valueIn, 0 , 127, 0, 100);
}
if(number==27){
  newScale = map(valueIn, 0 , 127, 0, 100);
}
if(number==28){
  newGrow = map(valueIn, 0 , 127, 0, 100);
}
if(number==29){
  newGrowFactor = map(valueIn, 0 , 127, 0, 10);
}
   
}
void noteOn (int channelIn, int numberIn, int valueIn){
  //println(channelIn);
  //println(numberIn);
  //println(value);
   newDiameter = map(valueIn, 0 , 127, 0, height);
}

class spot {
  float x , y;
  float diameter;
  
  spot(float xpos, float ypos, float dia) {
    x = xpos;
    y = ypos;
    diameter = dia;
  }
  
  void display(){   
      
     ellipse( x, y , diameter, diameter);
    
  
  }
  
  void grow(){
        grow = grow+ newGrowFactor;       
         if(grow > newGrow){
           grow = 0;
         }
  }
  
  
}