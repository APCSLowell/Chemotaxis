class Bacteria{
int myX, myY;
int a, b, c;
Bacteria()
{
  myX = 500;
  myY = 500;
  }
void walk()
{
  if(mouseX > myX){
    myX = myX + (int)(Math.random()*200)-5;
  }
  else{
    myX = myX - (int)(Math.random()*200)-5;
  }
  if(mouseY > myY){
    myY = myY + (int)(Math.random()*200)-5;
  }
  else{
    myY = myY - (int)(Math.random()*200);
  }
}
void show()
{
  fill((int)(Math.random()*360),(int)(Math.random()*360),(int)(Math.random()*360));
  ellipse(myX,myY,50,50);
  }
}

Bacteria [] scatter;
void setup()
{
  size(1000,1000);
  scatter = new Bacteria[7];
  for(int i = 0; i < scatter.length; i++){
  scatter [i] = new Bacteria();
  }
}
void draw(){
  for(int i = 0; i < scatter.length; i++){
  scatter[i].show();
  scatter[i].walk();

  }
}
