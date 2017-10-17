class Particle {

  PVector location;
  PVector acceleration;
  PVector velocity;
  color fillColor;
  float size;

  Particle(float x, float y) {
    location = new PVector(x, y);
  }

  void display() {
    fill(fillColor);
    ellipse(location.x, location.y, size, size);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }
  
  void setSize(float size) {
    this.size = size;
  }

  void setVelocity(PVector vector) {
    velocity = vector;
  }

  void setVelocity(float x, float y) {
    velocity = new PVector(x, y);
  }

  void setAcceleration(PVector vector) {
    acceleration = vector;
  }

  void setAcceleration(float x, float y) {
    acceleration = new PVector(x, y);
  }

  void setColor(color c) {
    fillColor = c;
  }
}