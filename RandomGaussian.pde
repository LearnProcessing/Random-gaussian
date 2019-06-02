boolean recording =false;

void setup(){
 size(600,400);
 background(255);
 noStroke();
 
}
void keyPressed(){
  if( key == 'r'){
   recording = !recording; 
  }
}
void draw(){

float num = randomGaussian()*30+300;
float num2 = randomGaussian()*30+200;
float num3=map(num,330,350,0,100);
float num4=map(num2,170,230,0,100);
println(num);
fill(num3,num4,0);
 ellipse(num,num2,16,16); 
 
 if(recording){
saveFrame("output/randomGaussian_####.png");   
 }
}