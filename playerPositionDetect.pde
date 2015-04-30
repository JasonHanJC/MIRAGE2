public void playerPositionDetect(Player p) {

  //println("currentStair = " + currentStair +  " pairedstair = " + pairedStair + "stairPassed: " + stairPassed);
  //println("tempDtime = " + tempDtime + "doorTime = " + doorTime + "nowAtDoor = " + nowAtDoor);


   //map display
  if (p.gameDimen == 2) {                          //2dview
    if (gameState == 4)
      image(scenario12, width/2, height/2, width, height);
    if (gameState == 5 && p.name == "A") {
      image(bgR, width/2, height/2, width, height);
      image(scenario2R2, width/2, height/2, width, height);
      if (playerB.gameDimen == 2) {
        image(scenario2L2, width/2, height/2, width, height);
      } else {
        image(scenario2L3, width/2, height/2, width, height);
      }
    } else if (gameState == 5 && p.name == "B") {
      image(bgL, width/2, height/2, width, height);
      image(scenario2L2, width/2, height/2, width, height);
      if (playerA.gameDimen == 2) {
        image(scenario2R2, width/2, height/2, width, height);
      } else {
        image(scenario2R3, width/2, height/2, width, height);
      }
    }
    if (gameState == 2)
      image(map2ds, width/2, height/2, width, height);
  }
  if (p.gameDimen == 3) {     //3dview
    if (gameState == 4)
      image(scenario13, width/2, height/2, width, height);
    if (gameState == 5 && p.name == "A") {
      image(bgR, width/2, height/2, width, height);
      image(scenario2R3, width/2, height/2, width, height);
      if (playerB.gameDimen == 2) {
        image(scenario2L2, width/2, height/2, width, height);
      } else {
        image(scenario2L3, width/2, height/2, width, height);
      }
    } else if (gameState == 5 && p.name == "B") {
      image(bgL, width/2, height/2, width, height);
      image(scenario2L3, width/2, height/2, width, height);
      if (playerA.gameDimen == 2) {
        image(scenario2R2, width/2, height/2, width, height);
      } else {
        image(scenario2R3, width/2, height/2, width, height);
      }
    }
    if (gameState == 2)
      image(map3ds, width/2, height/2, width, height);
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
      image(door2D, width/2, height/2, 800, 800);
      if (door2D.duration() == door2D.time()) {
        door2D.stop();
        tempDtime = doorTime;
      }
    }

    if (p.gameDimen == 3 && tempDtime != doorTime) { 
      door3D.play();
      image(door3D, width/2, height/2, 800, 800);
      if (door3D.duration() == door3D.time()) {
        door3D.stop();
        tempDtime = doorTime;
      }
    }
  }

  /***************************at yellow***************************/
  
  if (p.isAtYellow() == true && gameState == 5) {
    
    if (p.gameDimen == 3 && stopMove == true) {
      S2R3to2.play();
      image(S2R3to2, width/2, height/2, width, height);
      if (S2R3to2.duration() == S2R3to2.time()) {
        S2R3to2.stop();
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
    if (p.gameDimen == 2 && stopMove == true) {      //2d
      S2L2to3.play();
      image(S2L2to3, width/2, height/2, width, height);
      if (S2L2to3.duration() == S2L2to3.time()) {
        S2L2to3.stop();
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
  }
  
  

  if (p.isAtYellow() == true && gameState == 2) {
    if (p.gameDimen == 2 && stopMove == true) {      //2d
      c2to3.play();
      image(c2to3, width/2, height/2, 800, 800);
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
      image(c3to2, width/2, height/2, 800, 800);
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

  /***************************at stair***************************/
  //play err video
  if (stairErr == true && gameState == 5) {
    if (p.currentBlock.num == 0) {
      S2stairsStop.play();
      image(S2stairsStop, width/2, height/2, width, height);
      if ( S2stairsStop.duration() == S2stairsStop.time()) {
        S2stairsStop.stop();
        stairErr = false;
      }
    }
  }


  if (stairErr == true && gameState == 2) {
    if (p.currentBlock.num == 2) {
      stop1.play();
      image(stop1, width/2, height/2, 800, 800);
      if ( stop1.duration() == stop1.time()) {
        stop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 3) {
      stop1.play();
      image(stop1, width/2, height/2, 800, 800);
      if ( stop1.duration() == stop1.time()) {
        stop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 4) {
      stop2.play();
      image(stop2, width/2, height/2, 800, 800);
      if ( stop2.duration() == stop2.time()) {
        stop2.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 5) {
      stop2.play();
      image(stop2, width/2, height/2, 800, 800);
      if ( stop2.duration() == stop2.time()) {
        stop2.stop();
        stairErr = false;
      }
    }
  }

  /***************************Dead end***************************/
  if (gameState == 5) {
    if (p.name == "A") {
      if (p.currentBlock.num == 9 && p.gameDimen == 3) {
        last2StepA[0] = 9;
        last2StepA[1] = 9;
      }
      if (p.currentBlock.num == 10 && p.gameDimen == 3) {
        last2StepA[0] = 10;
        last2StepA[1] = 10;
      }
    } else {
      if (p.currentBlock.num == 0 && p.gameDimen == 2) {
        last2StepB[0] = 0;
        last2StepB[1] = 0;
      }
    }
  }

  if (gameState == 2) {
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
  }


  /***************************at final***************************/
  if (p.name == "A") {
    if (p.isAtFinal() == true && steps == 0 && gameState == 2) {
      win.play();
      image(win, width/2, height/2, 800, 800);
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
    if (p.isAtFinal() == true && steps == 0 && gameState == 2) {
      win.play();
      image(win, width/2, height/2, 800, 800);
      textFont(oswald);
      textSize(75);
      fill(255);
      text("YELLOW", width/2 - 43, height/2 - 40);
      if (win.duration() == win.time()) {
        win.stop();
        gameState = 3;
      }
    }
  }
}

