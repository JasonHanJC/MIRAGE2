public void chooseDoor(Player p) { 

  if (doorChanged == false) {
    if (doorChooseNo == 0) {
      dDoor0.drawDoor();
    }
    if (doorChooseNo == 1) {
      dDoor1.drawDoor();
    }
  }
}

