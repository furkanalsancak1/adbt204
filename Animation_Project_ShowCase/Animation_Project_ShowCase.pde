import processing.sound.*;

SoundFile seaSound;

int x = 0;

int y = 125;

int cloudX = 20;

int cloudY = 20;

void setup() {
  size(300, 200);
  
  seaSound = new SoundFile(this, "sea.wav");
  seaSound.play();
}

void draw() {
  background(#CAF0F8);
  //Sun
  noStroke();
  fill(#FFFBB4);
  ellipse(290, 10, 70, 70);
  fill(255, 255, 0);
  ellipse(290, 10, 60, 60);
  //Cloud
  fill(229, 254, 255, 95);
  ellipse(cloudX -10, cloudY, 60, 30);
  ellipse(cloudX + 10, cloudY, 60, 30);
  cloudX = cloudX + 2;
  if (cloudX>=380) {
    cloudX = -80;
  }
  rectMode(CORNER);
  //Sail and Mast
  stroke(#643005);
  strokeWeight(2);
  line(x, y + 5, x, y - 50);
  noStroke();
  fill(#BB1AED);
  triangle(x, y - 50, x, y - 15, x + 50, y - 15);
  //Boat
  fill(#AF6215);
  arc(x, y, 80, 80, 0, PI);
  fill(37, 232, 204, 50);
  //Water
  rect(0, 150, 300, 200);
  x = x + 1;
  if (x >= 380) {
    x = -80;
  }
  keyPressed();
}

void keyPressed(){
  
  if(key=='1'){
    x++;
  }
  if(key=='2'){
    x = x-3;
  }
}
