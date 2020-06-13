class Enemy extends GameObject{
  
  int transparency;
  int shootTime;
  
  Enemy () {
    super (random(0, width), random(0, height), 20, 1, black);
    while (touchingObstacle()) {
      x = random(0, width);
      y = random(0, height);
    }
    transparency = 0;
    shootTime = 0;
  }
  
  void act() {
   super.act();
    shootTime++;
   if (transparency < 255) {
   transparency++;
   } else {
     
     if (shootTime % 10 == 0) {
     objects.add(new Bullet(x, y, 5, 1, black));
     }
     
   }
 
  }
  
  void show() {
   fill(myColor, transparency);
    ellipse(x, y, size, size);
  }
}
