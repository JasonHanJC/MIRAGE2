public void playerPositionDetect(Player p) {

  //println("currentStair = " + currentStair +  " pairedstair = " + pairedStair + "stairPassed: " + stairPassed);
  println("tempDtime = " + tempDtime + "doorTime = " + doorTime + "nowAtDoor = " + nowAtDoor);


  //println(p.isAtDoor());
  if (p.gameDimen == 2) {                          //2dview
    map2d.play();
    image(map2d, width/2, height/2, width, height);
  }
  if (p.gameDimen == 3) {                          //3dview
    //map3d.play();
    image(map3d, width/2, height/2, width, height);
  }

  /***************************at yellow***************************/
  if (p.isAtYellow() == true) {
    if (p.gameDimen == 2 && stopMove == true) {      //2d
      c2to3.play();
      image(c2to3, width/2, height/2, width, height);
      if (c2to3.duration() == c2to3.time()) {
        c2to3.stop();
        p.setDimen(3);
        stopMove = false;
        p.setMyTurn(false);
        if (p.name == "A") {
          playerB.setMyTurn(true);
          diceThrowed = false;
          nowAtDoor = false;
        } else {
          playerA.setMyTurn(true);
          diceThrowed = false;
          nowAtDoor = false;
        }
      }
    }
    //println(tempYtime);
    if (p.gameDimen == 3 && stopMove == true) {
      c3to2.play();
      image(c3to2, width/2, height/2, width, height);
      if (c3to2.duration() == c3to2.time()) {
        c3to2.stop();
        p.setDimen(2);
        stopMove = false;
        p.setMyTurn(false);
        if (p.name == "A") {
          playerB.setMyTurn(true);
          diceThrowed = false;
          nowAtDoor = false;
        } else {
          playerA.setMyTurn(true);
          diceThrowed = false;
          nowAtDoor = false;
        }
      }
    }
  } 

  /***************************at door***************************/
  if (p.isAtDoor() == true ) {
    if (p.name == "A") {
      if (sameDoor != true) {
        if (!(blockLib.get(last2StepA[0]).name == "door" && blockLib.get(last2StepA[1]).name == "door"))
          chooseDoor(p);
      }
      if (blockLib.get(last2StepA[0]).name != "door" && nowAtDoor != true) {
        doorTime++;
        nowAtDoor = p.isAtDoor();
      }
    } else {
      if (sameDoor != true) {
        if (!(blockLib.get(last2StepB[0]).name == "door" && blockLib.get(last2StepB[1]).name == "door"))
          chooseDoor(p);
      }
      if (blockLib.get(last2StepB[0]).name != "door" && nowAtDoor != true) {
        doorTime++;
        nowAtDoor = p.isAtDoor();
      }
    }

    if (p.gameDimen == 2 && tempDtime != doorTime) { 
      door2D.play();
      image(door2D, width/2, height/2, width, height);
      if (door2D.duration() == door2D.time()) {
        door2D.stop();
        tempDtime = doorTime;
      }
    }

    if (p.gameDimen == 3 && tempDtime != doorTime) { 
      door3D.play();
      image(door3D, width/2, height/2, width, height);
      if (door3D.duration() == door3D.time()) {
        door3D.stop();
        tempDtime = doorTime;
      }
    }
  }

  /***************************at stair***************************/
  //play err video
  if (stairErr == true) {
    if (p.currentBlock.num == 2) {
      stop1.play();
      image(stop1, width/2, height/2, width, height);
      if ( stop1.duration() == stop1.time()) {
        stop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 3) {
      stop1.play();
      image(stop1, width/2, height/2, width, height);
      if ( stop1.duration() == stop1.time()) {
        stop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 4) {
      stop2.play();
      image(stop2, width/2, height/2, width, height);
      if ( stop2.duration() == stop2.time()) {
        stop2.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 5) {
      stop2.play();
      image(stop2, width/2, height/2, width, height);
      if ( stop2.duration() == stop2.time()) {
        stop2.stop();
        stairErr = false;
      }
    }
  }

  /***************************Dead end***************************/
  //stair
  if (p.name == "A") {
    if (p.currentBlock.num == 3 && p.gameDimen == 2) {
      last2StepA[0] = 3;
      last2StepA[1] = 3;
    }
    if (p.currentBlock.num == 4 && p.gameDimen == 2) {
      last2StepA[0] = 4;
      last2StepA[1] = 4;
    }
    if (p.currentBlock.num == 5 && p.gameDimen == 2) {
      last2StepA[0] = 5;
      last2StepA[1] = 5;
    }
  } else {
    if (p.currentBlock.num == 3 && p.gameDimen == 2) {
      last2StepB[0] = 3;
      last2StepB[1] = 3;
    }
    if (p.currentBlock.num == 4 && p.gameDimen == 2) {
      last2StepB[0] = 4;
      last2StepB[1] = 4;
    }
    if (p.currentBlock.num == 5 && p.gameDimen == 2) {
      last2StepB[0] = 5;
      last2StepB[1] = 5;
    }
  }

  //start
  if (p.name == "A") {
    if (p.currentBlock.num == 9) {
      last2StepA[0] = 9;
      last2StepA[1] = 9;
    }
    if (p.currentBlock.num == 10) {
      last2StepA[0] = 10;
      last2StepA[1] = 10;
    }
  } else {
    if (p.currentBlock.num == 9) {
      last2StepB[0] = 9;
      last2StepB[1] = 9;
    }
    if (p.currentBlock.num == 10) {
      last2StepB[0] = 10;
      last2StepB[1] = 10;
    }
  }

  //final
  if (p.name == "A") {
    if (p.currentBlock.num == 46 && steps != 0) {
      last2StepA[0] = 46;
      last2StepA[1] = 46;
    }
  } else {
    if (p.currentBlock.num == 46 && steps != 0) {
      last2StepB[0] = 46;
      last2StepB[1] = 46;
    }
  }


  /***************************at final***************************/
  if (p.name == "A") {
    if (p.isAtFinal() == true && steps == 0) {
      win.play();
      image(win, width/2, height/2, width, height);
      textFont(oswald);
      textSize(75);
      fill(255);
      text("RED", width/2 - 43, height/2 - 40);
      if (win.duration() == win.time()) {
        win.stop();
        gameState = 3;
      }
    }
  } else {
    if (p.isAtFinal() == true && steps == 0) {
      win.play();
      image(win, width/2, height/2, width, height);
      textFont(oswald);
      textSize(75);
      fill(255);
      text("BLUE", width/2 - 43, height/2 - 40);
      if (win.duration() == win.time()) {
        win.stop();
        gameState = 3;
      }
    }
  }
}

