class Particle {
  PVector p, v, a, f;
  PVector dir;
  float maxVel;
  int radius = 5;
  color col = color (255,255,255);
  Particle (PVector _p, PVector _v, PVector _a){
    p = _p;
    v = _v;
    a = _a;
  }
  
  void update (){
    p.add(v);
    v.add(a);
    v.limit(2);
    //a.setMag(0);
  }
  
  void display(){
    fill(col);
    noStroke();
    ellipse(p.x,p.y,radius*2,radius*2);
  }
  
}
