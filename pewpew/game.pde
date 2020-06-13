void game() {
  background(green);
  fill (0);
     rect (6*width/7, 19*height/20, width/5, height/50); //health bar
   
  
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else { 
      i++;
    }
  
   
  }
  

  
   if (frameCount % 60 == 0) { //spawn
  objects.add (new Enemy());
  }
 
  
  
  
  
  
  
  
 
}

void gameClicks() {
 
}
