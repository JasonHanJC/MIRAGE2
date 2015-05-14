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
    if (gameState == 3) {
      image(LMmap2d, width/2, height/2, width, height);
      if (mirageChanged == false) {
        image(MirageB1, width/2, height/2, width, height);
      } else {
        image(MirageB2, width/2, height/2, width, height);
      }
    }
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
    if (gameState == 3) {
      image(LMmap3d, width/2, height/2, width, height);
      if (mirageChanged == false) {
        image(MirageB1, width/2, height/2, width, height);
      } else {
        image(MirageB2, width/2, height/2, width, height);
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

    if (p.gameDimen == 2 && tempDtime != doorTime && gameState == 2) { 
      door2D.play();
      doorLockMove = true;
      image(door2D, width/2, height/2, 800, 800);
      if (door2D.duration() == door2D.time()) {
        door2D.stop();
        tempDtime = doorTime;
      }
    }

    if (p.gameDimen == 3 && tempDtime != doorTime && gameState == 2) { 
      door3D.play();
      doorLockMove = true;
      image(door3D, width/2, height/2, 800, 800);
      if (door3D.duration() == door3D.time()) {
        door3D.stop();
        tempDtime = doorTime;
      }
    }

    if (p.gameDimen == 2 && tempDtime != doorTime && gameState == 3) { 
      LM2ddoor.play();
      doorLockMove = true;
      image(LM2ddoor, width/2, height/2, width, height);
      if (mirageChanged == false) {
        image(MirageB1, width/2, height/2, width, height);
      } else {
        image(MirageB2, width/2, height/2, width, height);
      }
      if (LM2ddoor.duration() == LM2ddoor.time()) {
        LM2ddoor.stop();
        tempDtime = doorTime;
      }
    }

    if (p.gameDimen == 3 && tempDtime != doorTime && gameState == 3) { 
      LM3ddoor.play();
      doorLockMove = true;
      image(LM3ddoor, width/2, height/2, width, height);
      if (mirageChanged == false) {
        image(MirageB1, width/2, height/2, width, height);
      } else {
        image(MirageB2, width/2, height/2, width, height);
      }
      if (LM3ddoor.duration() == LM3ddoor.time()) {
        LM3ddoor.stop();
        tempDtime = doorTime;
      }
    }
  }




  /***************************at yellow***************************/

  if (p.isAtYellow() == true && gameState == 2) {
    if (p.gameDimen == 2 && stopMove == true) {      //2d
      c2to3.play();
      image(c2to3, width/2, height/2, 800, 800);
      if (c2to3.duration() == c2to3.time()) {
        c2to3.stop();
        p.setDimen(3);
        changeTurn();
        diceThrowed = false;
        nowAtDoor = false;
      }
    }
    //println(tempYtime);
    if (p.gameDimen == 3 && stopMove == true) {
      c3to2.play();
      image(c3to2, width/2, height/2, 800, 800);
      if (c3to2.duration() == c3to2.time()) {
        c3to2.stop();
        p.setDimen(2);
        changeTurn();
        diceThrowed = false;
        nowAtDoor = false;
      }
    }
  } 

  ////////
  if (p.isAtYellow() == true && gameState == 3) {
    if (p.gameDimen == 2 && stopMove == true) {      //2d
      LM2to3.play();
      image(LM2to3, width/2, height/2, width, height);
      if (LM2to3.duration() == LM2to3.time()) {
        LM2to3.stop();
        p.setDimen(3);
        changeTurn();
        diceThrowed = false;
        nowAtDoor = false;
      }
    }
    //println(tempYtime);
    if (p.gameDimen == 3 && stopMove == true) {
      LM3to2.play();
      image(LM3to2, width/2, height/2, width, height);
      if (LM3to2.duration() == LM3to2.time()) {
        LM3to2.stop();
        p.setDimen(2);
        changeTurn();
        diceThrowed = false;
        nowAtDoor = false;
      }
    }
  } 

  /***************************at stair***************************/
  //play err video
  if (stairErr == true && gameState == 5) {
    if (p.currentBlock.num == 4) {
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
      dsstop1.play();
      image(dsstop1, width/2, height/2, 800, 800);
      if ( dsstop1.duration() == dsstop1.time()) {
        dsstop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 3) {
      dsstop1.play();
      image(dsstop1, width/2, height/2, 800, 800);
      if ( dsstop1.duration() == dsstop1.time()) {
        dsstop1.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 4) {
      dsstop2.play();
      image(dsstop2, width/2, height/2, 800, 800);
      if ( dsstop2.duration() == dsstop2.time()) {
        dsstop2.stop();
        stairErr = false;
      }
    }

    if (p.currentBlock.num == 5) {
      dsstop2.play();
      image(dsstop2, width/2, height/2, 800, 800);
      if ( dsstop2.duration() == dsstop2.time()) {
        dsstop2.stop();
        stairErr = false;
      }
    }
  }

  if (stairErr == true && gameState == 3) {
    if (p.currentBlock.num == 5 || p.currentBlock.num == 6) {
      LMstairsL2d.play();
      image(LMstairsL2d, width/2, height/2, width, height);
      if ( LMstairsL2d.duration() == LMstairsL2d.time()) {
        LMstairsL2d.stop();
        stairErr = false;
      }
    }
    
    if (p.currentBlock.num == 7 || p.currentBlock.num == 8) {
      LMstairsM2d.play();
      image(LMstairsM2d, width/2, height/2, width, height);
      if ( LMstairsM2d.duration() == LMstairsM2d.time()) {
        LMstairsM2d.stop();
        stairErr = false;
      }
    }
    
    if (p.currentBlock.num == 9 || p.currentBlock.num == 10) {
      LMstairsR2d.play();
      image(LMstairsR2d, width/2, height/2, width, height);
      if ( LMstairsR2d.duration() == LMstairsR2d.time()) {
        LMstairsR2d.stop();
        stairErr = false;
      }
    }
  }

  /***************************Dead end***************************/
  if (gameState == 5) {
    if (p.name == "A") {
      if (p.currentBlock.num == 15 && p.gameDimen == 2) {
        last2StepA[0] = 15;
        last2StepA[1] = 15;
      }
      if (p.currentBlock.num == 10 && p.gameDimen == 3) {
        b8 = new Block(8, "start", new PVector(1055, 627), new int[] {
          -1, -1, 9, 18
        }
        , new int[] {
          -1, -1, 10, 17
        }
        );
        blockLib.set(8, b8);
        last2StepA[0] = 10;
        last2StepA[1] = 10;
      }
    } else {
      if (p.currentBlock.num == 7 && p.gameDimen == 3) {
        last2StepB[0] = 7;
        last2StepB[1] = 7;
      }
      if (p.currentBlock.num == 4 && p.gameDimen == 2) {
        b0 = new Block(0, "start", new PVector(308, 625), new int[] {
          -1, -1, 6, 1
        }
        , new int[] {
          -1, -1, 7, 2
        }
        );
        blockLib.set(0, b0);
        last2StepB[0] = 4;
        last2StepB[1] = 4;
      }
    }

    //final
    if (p.name == "A") {
      if (p.currentBlock.num == 14 && steps != 0) {
        last2StepA[0] = 14;
        last2StepA[1] = 14;
      }
    } else {
      if (p.currentBlock.num == 5 && steps != 0) {
        last2StepB[0] = 5;
        last2StepB[1] = 5;
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

  //Mirage block dead end blocks
  if (gameState == 3) {
    //begin
    if (p.name == "A") {
      if ((p.currentBlock.num == 17 || p.currentBlock.num == 18)) {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      }
    } else {
      if ((p.currentBlock.num == 17 || p.currentBlock.num == 18)) {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }

    //yellow
    if (p.currentBlock.num == 14) {
      if (p.name == "A") {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      } else {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }

    //final
    if (p.name == "A") {
      if (p.currentBlock.num == 19) {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      }
    } else {
      if (p.currentBlock.num == 19) {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }

    //stair
    if (p.name == "A") {
      if ((p.currentBlock.num == 5 || p.currentBlock.num == 7 || p.currentBlock.num == 8 || p.currentBlock.num == 10) && p.gameDimen == 2) {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      }
    } else {
      if ((p.currentBlock.num == 5 || p.currentBlock.num == 7 || p.currentBlock.num == 8 || p.currentBlock.num == 10) && p.gameDimen == 2) {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }

    //normal but limit
    if (p.currentBlock.num == 33 || p.currentBlock.num == 35 || p.currentBlock.num == 100 || p.currentBlock.num == 98) {
      if (p.name == "A") {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      } else {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }

    //normal but 3D limit
    if ((p.currentBlock.num == 51 || p.currentBlock.num == 116 || p.currentBlock.num == 108) && p.gameDimen == 3) {
      if (p.name == "A") {
        last2StepA[0] = p.currentBlock.num;
        last2StepA[1] = p.currentBlock.num;
      } else {
        last2StepB[0] = p.currentBlock.num;
        last2StepB[1] = p.currentBlock.num;
      }
    }
  }
}

