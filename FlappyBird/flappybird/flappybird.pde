PImage background;
PImage topPipe;
PImage bottomPipe;
PImage bird;
int bird_x = 50;
int bird_y = 350;
int rect_x = 700;
int rect_width = 75;
int pipeGap = 210;
int upperPipeHeight = (int)random(100, 400);
int lowerPipeHeight = 700;
int lower_y = upperPipeHeight + pipeGap;
int velocity = 70;
int gravity = 5;
int score = 0;
boolean gameOver = false;  

void setup() {
  size(700, 700);
  background = loadImage("flappyBackground.jpg");
  topPipe = loadImage("topPipe.png");
  bottomPipe = loadImage("bottomPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50, 50);
}

void draw() {

  if (gameOver == false) {

    background(#8CF2F9);
    image(bird, bird_x, bird_y);
    bird_y += gravity;

    fill(#2BE944);
    stroke(0, 0, 0);
    image(topPipe, rect_x, 0);
    rect_x -= 6;
    teleportPipes();

    image(bottomPipe, rect_x, lower_y);

    fill(#009900);
    stroke(0, 0, 0);
    rect(0, 600, 700, 100);

    fill(0, 0, 0);
    textSize(20);
    text("Score: " + score, 600, 100);

    if (intersectsPipes()==true) {
      gameOver = true;
    }
  }
}

void mousePressed() {
  bird_y -= velocity;
}

void teleportPipes() {
  if (rect_x < -50) {
    rect_x = 700;
    upperPipeHeight = (int)random(100, 400);
    topPipe.resize(75, upperPipeHeight);
    bottomPipe.resize(75, 500);
    lower_y = upperPipeHeight + pipeGap;
    score += 1;
  }
}

boolean intersectsPipes() { 
  if (bird_y < upperPipeHeight && bird_x > rect_x && bird_x < (rect_x+rect_width)) {
    return true;
  } else if (bird_y>lower_y && bird_x > rect_x && bird_x < (rect_x+rect_width)) {
    return true;
  } else if (bird_y > 600) { 
    return true;
  } else { 
    return false;
  }
}
