// start
Particle p1;
Particle p2;

void setup(){
  size(600,400);
  background (0);
  
  p1 = new Particle (new PVector(10,20), new PVector (0,0), new PVector(0,0));
  p2 = new Particle (new PVector(300,200), new PVector (0,0), new PVector(0,0));
}


void draw(){
  p1.update();
  p2.update();
  p1.display();
  p2.display();
}
