class Particle extends GameObject {

  float speed;
  PVector vel;
  PVector gravity;

  Particle(PVector newloc) {
    super();
    loc = newloc.copy();
    speed = 50;
    float vx = random(-5, 5);
    float vy = random(-5, 0);
    float vz = random(-5, 5);
    vel = new PVector(vx, vy, vz);
    vel.setMag(speed);
    gravity = new PVector(0, 5, 0);
    lives = 255;
  }
  void act() {

    if (loc.y >= height) {
      loc.y = height;
    } else if (loc.y <= height-gridSize*3) {
      loc.y = height-gridSize*3;
    } else {
      vel.add(gravity);
      loc.add(vel);
    }
  }

  void show() {
    world.pushMatrix();
    world.translate(loc.x, loc.y, loc.z);
    world.fill(white, lives);
    world.noStroke();
    world.box(size);
    world.popMatrix();
    lives--;
  }
}
