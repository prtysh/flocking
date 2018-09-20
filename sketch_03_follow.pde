// start
Particle [] system;
int leader;
int timer = 0;


void setup(){
  size(600,400);
  background (0);
  
  system = new Particle[3];
  for (int i = 0; i < 3; i ++){
    system[i] = new Particle (new PVector(random(width),random(height)), new PVector (0,0), new PVector(0,0));
  }
}


void draw(){
  background(0);
  for (int i = 0; i < 3; i ++){
    system[i].update();
    system[i].display();
  }
  
  // choose leader
  timer ++;
  if(timer % 50 == 0){
    leader = (int)random(3);
    system[leader].v.set(random(-2,2), random(-2,2));
    system[leader].col = color (255,0,0);
  }
  
  for (int i = 0; i < 3; i ++){
    if(i != leader){
      system[i].dir = PVector.sub(system[leader].p, system[i].p).normalize();
      system[i].maxVel = 0.7*system[leader].v.mag();
      system[i].v = system[i].dir.setMag(system[i].maxVel);
      system[i].col = color (255,255,255);
    }
  }
}
