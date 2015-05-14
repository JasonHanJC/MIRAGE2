public void chooseDoor(Player p) { 


  if (gameState == 2) {
    if (doorChanged == false) {
      if (doorChooseNo == 0) {
        dDoor0.drawDoor();
      }
      if (doorChooseNo == 1) {
        dDoor1.drawDoor();
      }
    }
  } 

  if (gameState == 3) {
    if (doorChanged == false) {
      if (doorChooseNo == 0) {
        dDoor0.drawDoor();
      }
      if (doorChooseNo == 1) {
        dDoor1.drawDoor();
      }
      if (doorChooseNo == 2) {
        dDoor2.drawDoor();
      }
      if (doorChooseNo == 3) {
        dDoor3.drawDoor();
      }
      if (doorChooseNo == 4) {
        dDoor4.drawDoor();
      }
    }
  }
}

