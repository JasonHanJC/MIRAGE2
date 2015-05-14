int turnCount = 0;
boolean mirageChange = false;
boolean mirageChanged = false;
boolean fiveOrNot = true;



void changeMirage() {
  //turn count 5 or 7
  if (turnCount == 5 && fiveOrNot == true) {

    mirageChange = true;
    changeBlock();
  }

  if (turnCount == 7 && fiveOrNot == false) {
    mirageChange = true;
    changeBlock();
  }
}


void changeBlock() {

  if (mirageChanged == false && mirageChange == true) {
    image(ychange1to2, width/2, height/2, width, height);
    ychange1to2.play();
    if ( ychange1to2.duration() == ychange1to2.time()) {
      ychange1to2.stop();
      b12.setName("normal");
      b13.setName("normal");
      b15.setName("normal");
      b16.setName("normal");
      b118.setName("yellow");
      b120.setName("yellow");
      b112.setName("yellow");
      b86.setName("yellow");
      //println(b12.name + b12.name+b13.name+b15.name+b16.name+b118.name+b120.name+b112.name+b86.name);
      if (fiveOrNot == true) {
        fiveOrNot = false;
      } else {
        fiveOrNot = true;
      }
      turnCount = 0;
      mirageChanged = true;
      mirageChange = false;
    }
  }
  if (mirageChanged == true && mirageChange == true) {
    image(ychange2to1, width/2, height/2, width, height);
    ychange2to1.play();
    if ( ychange2to1.duration() == ychange2to1.time()) {
      ychange2to1.stop();
      b12.setName("yellow");
      b13.setName("yellow");
      b15.setName("yellow");
      b16.setName("yellow");
      b118.setName("normal");
      b120.setName("normal");
      b112.setName("normal");
      b86.setName("normal");
      //println(b12.name + b12.name+b13.name+b15.name+b16.name+b118.name+b120.name+b112.name+b86.name);
      if (fiveOrNot == true) {
        fiveOrNot = false;
      } else {
        fiveOrNot = true;
      }
      turnCount = 0;
      mirageChanged = false;
      mirageChange = false;
    }
  }
}

