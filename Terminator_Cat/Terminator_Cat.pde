int acceleration = 5;
PImage catPic;
int x =405 ;
int y=345 ;
void setup(){ 
size(900,800);
catPic=loadImage("1Cat.jpg"); 
catPic.resize(900,800);
background(catPic);
}
  
 
  
  void draw(){
    if(mousePressed){

println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");}
noStroke();
if(x > width ) {x= 405; 
y=345; 
background(catPic);}
fill(255,3,3);
ellipse(x,y,10,40); 
ellipse(x+128, y, 10, 40);

  }
void keyPressed() {
  x+=2*acceleration;
  y+=2*acceleration;
}