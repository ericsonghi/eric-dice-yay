int counter = 0;

void setup(){
  noLoop();
  size(500, 500);
  background(255, 255, 255);
}

void draw(){
  background(255);
  counter = 0;
  
  for(int j = 5; j <= 250; j += 60){
    for(int i = 5; i <= 450; i += 60){
      Die cheese = new Die(j, i); 
      cheese.roll();
      cheese.show();
    }
  }

  textSize(15);
  fill(0, 0, 0);
  text("fuel your gambling addiction", 312, 100);
  text("0.1% chance of getting gold", 312, 130);

  if(counter > 150){
    text("wow u have good luck", 312, 160);
  }else{
    text("better luck next time", 312, 160);
  }

  text("Total sum of rolls: " + counter, 312, 200);
}

void mousePressed(){
  redraw();
}

class Die {
  int posX;
  int posY;
  int rollNum;
  boolean jackpot = false;

  Die(int x, int y) {
    posX = x;
    posY = y;
  }

  void roll() {
    rollNum = (int)(Math.random() * 6 + 1);
    counter += rollNum;

    if ((int)(Math.random() * 1000) == 1) {
      jackpot = true;
    } else {
      jackpot = false;
    }
  }

  void show(){
    strokeWeight(2);
    if(jackpot) {
      fill(255, 215, 0);
    } else {
      fill(255);
    }
    rect(posX, posY, 50, 50);
    
    fill(0, 0, 0);

    if(rollNum == 1){
      ellipse(posX + 25, posY + 25, 10, 10);
    }
    if(rollNum == 2){
      ellipse(posX + 12.5, posY + 12.5, 10, 10);
      ellipse(posX + 37.5, posY + 37.5, 10, 10);
    }
    if(rollNum == 3){
      ellipse(posX + 12, posY + 12, 10, 10);
      ellipse(posX + 25, posY + 25, 10, 10);
      ellipse(posX + 38, posY + 38, 10, 10);
    }
    if(rollNum == 4){
      ellipse(posX + 12.5, posY + 12.5, 10, 10);
      ellipse(posX + 12.5, posY + 37.5, 10, 10);
      ellipse(posX + 38, posY + 12.5, 10, 10);
      ellipse(posX + 38, posY + 38, 10, 10);
    }
    if(rollNum == 5){
      ellipse(posX + 10, posY + 10, 8, 8);
      ellipse(posX + 10, posY + 40, 8, 8);
      ellipse(posX + 25, posY + 25, 8, 8);
      ellipse(posX + 40, posY + 40, 8, 8);
      ellipse(posX + 40, posY + 10, 8, 8);
    }
    if(rollNum == 6){
      ellipse(posX + 12.5, posY + 12.5, 8, 8);
      ellipse(posX + 12.5, posY + 25, 8, 8);
      ellipse(posX + 12.5, posY + 37.5, 8, 8);
      ellipse(posX + 37.5, posY + 12.5, 8, 8);
      ellipse(posX + 37.5, posY + 25, 8, 8);
      ellipse(posX + 37.5, posY + 37.5, 8, 8);
    }
  }
}
