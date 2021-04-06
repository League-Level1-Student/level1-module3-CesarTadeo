int frog_x = 400;
int frog_y = 550;

void setup() {
  size(800, 600);
}

void draw() {
  background(98, 202, 246);  
  fill(9, 228, 67);
  ellipse(frog_x, frog_y, 50, 50);
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP){
      frog_y -= 50;
    } else if (keyCode == DOWN){
      frog_y += 50;
    } else if (keyCode == RIGHT){
      frog_x += 50;
    } else if (keyCode == LEFT){
      frog_x -= 50;
    }
  }
}
