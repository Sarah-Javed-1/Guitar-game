float x = 640;
int y = 150; //Values will be 150 or 400
int score = 5;
int x2 = 640;
int y2 = 400;
int screen = 0;

void setup() {
  size(640, 480);
}


void draw() {
  background(0);
  if (screen == 0){
  textSize(50);
  text(score, 100, 100);
  
  if(x < 100 || x2 < 100) fill(109, 196, 143);
  else fill(120, 109, 196);
  
  rect(0,0, 100, 480);
  
  
  x = x - 5;
  fill(255);
  ellipse(x, y, 50, 50);

  if (x < 0) {
    x = 640; //Resets the x position

    //Randomly chooses the y position
    if (random(10) > 5) {
      y = 150;
    } else {
      y = 400;
    }
  }

x2 = x2 - 4;
fill(255);
ellipse(x2, y2, 50, 50);

if(x2<0){
  x2 = 640; //Resets the x position

    //Randomly chooses the y position
    if (random(10) > 5) {
      y2 = 150;
    } else {
      y2 = 400;
    }
  }
  }
  if(score == 10){
    screen = 1;
  }
  if(screen == 1){
    textSize(30);
    text("you win!!", 280, 280);
  }
}


void keyPressed(){
 if ((y < 280 || y2 < 280) && keyCode == UP && (x < 100 || x2 < 100) ){
     score = score+1;
   } else {
     score = score-1;
   }
 if (y < 280 && y2 < 280 && keyCode == UP && x < 100 && x2 < 100){
   score = score + 2;
 }
 
 if (x < 100 && (keyCode == UP || keyCode == DOWN)){
   x = 640;
   if (random(10) > 5) {
      y = 150;
    } else {
      y = 400;
    }
 }
 if (x2 < 100 && (keyCode == UP || keyCode == DOWN)){
   x2 = 640;
   if (random(10) > 5) {
      y2 = 150;
    } else {
      y2 = 400;
    }
 }
  
}
