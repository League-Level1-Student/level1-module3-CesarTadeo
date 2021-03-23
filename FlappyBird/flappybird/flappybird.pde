int bird_x = 350;
int bird_y = 350;
int rect_x = 700;
int rect_width = 75;
int pipeGap = 210;
int upperPipeHeight = (int)random(100, 400);
int lowerPipeHeight = 700;
int lower_y = upperPipeHeight + pipeGap;
int velocity = 70;
int gravity = 5;
boolean gameOver = false;

void mousePressed() {
  bird_y -= velocity;
}

void teleportPipes() {
  if (rect_x < 0) {
    rect_x = 700;
    upperPipeHeight = (int)random(100, 400);
  }
}  

void setup() {
  size(700, 700);
}

void draw() {
  
  if (gameOver == false){
  
    background(#8CF2F9);
    fill(#F9ED48);
    stroke(0, 0, 0);
    ellipse(bird_x, bird_y, 50, 50);
    bird_y += gravity;

    fill(#2BE944);
    stroke(0, 0, 0);
    rect(rect_x, 0, rect_width, upperPipeHeight);
    rect_x -= 5;
    rect(rect_x, lower_y, rect_width, lowerPipeHeight);
    teleportPipes();
  
    if (intersectsPipes()==true) {
      gameOver = true;
    }
  }
}
boolean intersectsPipes() { 
  if (bird_y < upperPipeHeight && bird_x > rect_x && bird_x < (rect_x+rect_width)){
    return true; }
  else if (bird_y>lower_y && bird_x > rect_x && bird_x < (rect_x+rect_width)) {
    return true; }
  else if (bird_y > 600){ 
    return true;}
  else { return false; }
}
