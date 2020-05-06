void intro() {
  //background
  background(white);
  
  //text title
  
  textSize(100);
  //fill(purple);
  //text("PEW PEW", width/2+shadowOffset, height/4+shadowOffset);
  fill(black);
  text("PEW PEW", width/2, height/4);
  
  rect (width/2, height/2, 100, 100);
  fill(white);
  triangle (width/2-30, height/2-30, width/2-30, height/2+30, width/2+30, height/2);
}

void introClicks() {
  if (mouseX > width/2-50 && mouseX < width/2+50 && mouseY > height/2-50 && mouseY<height/2+50){
  mode = GAME;
  }
}
