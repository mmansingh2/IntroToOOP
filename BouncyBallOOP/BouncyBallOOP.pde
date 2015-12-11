Ball b;                //declare a new ball called b
Ball n;

void setup() {
  size(800, 600);
  b = new Ball(); //initialize b as a new object of the Ball class
  n = new Ball();
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  n.display();
  b.move();
  n.move();
}