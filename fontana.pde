ArrayList<Particle> _particles = new ArrayList();
PImage photo;

void setup() {
  size(720, 720);
  background(0);
  fill(255);
  noStroke();
  photo = loadImage("linux.png");
  photo.loadPixels();
  _row = photo.height;
}

// Current displayed row of image
int _row; 

// Drop particle's parameters
float VELOCITY = 3;
float ACCELERATION = 0.09;
float DROP_SIZE = 3;

// Space between two drops
float STEP = 1; 

void draw() {
  background(0);
  
  if (frameCount % 2 == 0) { // FREQUENCY OF WATER
    for (int i = 0; i < width; i += STEP + DROP_SIZE) {
      Particle newParticle = new Particle(i, 0);
      
      newParticle.setColor(photo.get(i, _row));
      newParticle.setVelocity(new PVector(0, VELOCITY));
      newParticle.setAcceleration(new PVector(0, ACCELERATION));
      newParticle.setSize(DROP_SIZE);
      
      _particles.add(newParticle);
    }
    // From bottom to the top
    _row -= 10; //  
  }


  for (Particle p : _particles) {
    p.display();
  }


  for (Particle p : _particles) {
    p.update();
    p.acceleration.add(new PVector(0, random(-0.001, 0.001)));
  }
}