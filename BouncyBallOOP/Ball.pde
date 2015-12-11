class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  //int diam;
  color c;
  float diam;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 100;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel = PVector.random2D();
    vel.mult(3);
  }
  Ball(float tDiam) {
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(4);
    c = color(random(255), random(50), random(100, 255));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }

  void bounce() {

    if (loc.x + .5*diam >= width || loc.x - .5*diam <= 0) {
      vel.x = -1*vel.x;
    }
    if (loc.y + .5*diam >= height || loc.y - .5*diam <= 0 ) {
      vel.y = -1*vel.y;
    }
  }
}