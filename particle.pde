class Particle {
  PVector p, v, a, f;
  int radius = 5;
  Particle (PVector _p, PVector _v, PVector _a){
    p = _p;
    v = _v;
    a = _a;
  }
  
  void update (){
  }
  
  void display(){
    fill(200);
    noStroke();
    ellipse(p.x,p.y,radius*2,radius*2);
  }
  
}
