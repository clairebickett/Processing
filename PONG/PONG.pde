import ddf.minim.*;  
Minim minim;
AudioSample sound;

int x = 100;
int y = 200; 
int speed = 10;
int ySpeed = 10;
void setup(){
size(800,800);
minim = new Minim (this);
sound = minim.loadSample("pong.wav", 128);

}
void draw(){ 
background(255,191,233);
fill(191,237,255);
stroke(250,8,12);
ellipse(x,y,150,150);
x+= speed;
 rect(mouseX, height-30, 100, 30);
if( x > width || x < 0  ){
  speed = -speed;

}
y += ySpeed; 
if( intersects(x,y,mouseX, height-30, 100) || y < 0 ){
  ySpeed = -ySpeed;
 sound.trigger();
}}
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
     if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
          return true;
     else 
          return false;
}