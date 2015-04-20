public void chooseDoor(Player p) { 

  color c = #E31D8E;
  color cc = #FFC30E;

  noFill();
  strokeWeight(4);
  stroke(c);
  if (doorChanged == false) {
    if (doorChooseNo == 0) {
      stroke(cc);
      dDoor0.drawDoor();
    }
    if (doorChooseNo == 1) {
      stroke(cc);
      dDoor1.drawDoor();
    }
  }
}

