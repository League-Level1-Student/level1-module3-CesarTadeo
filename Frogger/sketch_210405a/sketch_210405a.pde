int frog_x = 400;
int frog_y = 550;
Car one = new Car(400, 300, 100, 50);

void setup() {
  size(800, 600);
}

void draw() {
  background(98, 202, 246);  
  fill(9, 228, 67);
  ellipse(frog_x, frog_y, 50, 50);
  one.display();
}
void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP) {
      if (frog_y > 25) {
        frog_y -= 50;
      } else {
        frog_y = 25;
      }
    } else if (keyCode == DOWN) {
      if (frog_y + 85 <= 600) {
        frog_y += 50;
      } else {
        frog_y = 575;
      }
    } else if (keyCode == RIGHT) {
      if (frog_x + 75 <= 800) {
        frog_x += 50;
      } else {
        frog_x = 775;
      }
    } else if (keyCode == LEFT) {
      if (frog_x > 75) {
        frog_x -= 50;
      } else {
        frog_x = 25;
      }
    }
  }
}
public class Car {
  int car_x;
  int car_y;
  int car_size;
  int car_speed;

  Car(int car_x, int car_y, int car_size, int car_speed) {
    this.car_x = car_x;
    this.car_y = car_y;
    this.car_size = car_size;
    this.car_speed = car_speed;
  }
  void display() {
    fill(0, 255, 0);
    rect(400, 300, 100, 50);
  }
}
