Bubble[] bob;

void setup(){
  size(500,500);
  bob=new Bubble[50];
  for(int i=0; i<bob.length; i++){
    bob[i] = new Bubble();
  }
}

void draw(){
  background(255,255,255);
  frameRate(3);
  for(int i=0;i<bob.length;i++){
    bob[i].show();
    bob[i].move();
  }
  
}

class Bubble{
  int myX,myY,myZ;
  Bubble(){
    myX=150;
    myY=300;
    myZ=15;
  }
  void move(){
    myX=myX+(int)(Math.random()*150-70);
    myY=myY-(int)(Math.random()*50);
    myZ=myZ+(int)(Math.random()*4);
    if(myY<=-100){
      myY=300;
      myX=150;
      myZ=15;
    }
  }
  void show(){
    strokeWeight(0);
    fill(237,243,255);
    ellipse(myX,myY,myZ,myZ);
    strokeWeight(1);
    fill(191,191,191);
    rect(90,390,60,150);
    rect(30,300,200,100);
    rect(0,180,70,20);
    rect(50,200,20,40);
    fill(162,192,255);
    rect(50,240,20,60);
    fill(255,255,255);
    textSize(25);
    text("I am a sink",50,360);
    
  }
}
