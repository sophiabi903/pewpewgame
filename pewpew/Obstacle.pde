class Obstacle extends GameObject {
  Obstacle() {
   super(purple); 
    while (touching(myPlayer)) {
     //touching player or health bar
      x = random(0, width);
      y = random(0, height);
    }
  //    int i = 0;
  //   while (i < objects.size()) {
  //  GameObject obj = objects.get(i);
  //if (obj instanceof Obstacle) {
  //  while (obj.x + obj.size/2 >  6*width/7 - width/10 && obj.x - obj.size/2 <  6*width/7 + width/10 && obj.y + obj.size > 19*height/20 - height/100 && obj.y - obj.size < 19*height/20 + height/100) {
  //     x = random(0, width);
  //    y = random(0, height);
  //  }

  //}
    }  
  }
  
  void act() {
    super.act();
    if (touching(myPlayer)) {
      PVector bounce = new PVector(myPlayer.x-x, myPlayer.y-y);
      bounce.setMag (1);
      myPlayer.vx=bounce.x;
      myPlayer.vy=bounce.y;
    }
   
  }
    

}
