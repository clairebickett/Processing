PImage mustache;
PImage friend;
void setup(){
friend = loadImage ( "friend.jpg" ) ;
size(800,600);
friend.resize(width,height);
mustache = loadImage ( "Mustachee.png" );
mustache.resize(75,75);
}
void draw(){
background(friend);
image(mustache,150,127);
}