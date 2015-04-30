void playerMove(Player p) {

  playerPositionDetect(p);

  //display arrows
  if (p.currentBlock.name == "door" && diceThrowed == true) {
    if (doorChanged == true) {
      drawArrow(p);
    }
  } else if (diceThrowed == true) {
    drawArrow(p);
  }

  pieceDisplay();
  
  //scenario 2 playerA 3d can not go up 
  if (p.isAtYellow() == true && gameState == 5) {
    
    if(p.name == "A" && p.gameDimen == 3 && stopMove != true && S2wrongTime == 0){
      S2wrong.play();
      image(S2wrong, width/2, height/2, width, height);
      if (S2wrong.duration() == S2wrong.time()) {
        S2wrong.stop(); 
        S2wrongTime++;
      }
    }
  }


  /**   throw dice   **/
  if (diceThrowed == false && stopMove == false) {
    image(keyDice, width/2, height/2, 300, 300);
    keyDice.play();
    if (keyDice.currentFrame() == 23) {
      keyDice.stop();
    }
    throwDice();
  } else {
    if (p.name == "A") {

      image(keya, width/2, height-120, 263*0.4, 171*0.4);
    } else {

      image(keyb, width/2, height-120, 263*0.4, 171*0.4);
    }
  }
  textFont(oswald);
  textSize(30);

  if (p.name == "A") {
    if (p.gameDimen == 2) {
      image(dlogo_a2d, width/2, 55, 71*0.5, 92*0.5);
    } else {
      image(dlogo_a3d, width/2, 55, 79*0.5, 92*0.5);
    }
    fill(#C1272D);
    image(turnR, width/2, height/2, width, height);
  } else {
    if (p.gameDimen == 2) {
      image(dlogo_b2d, width/2, 55, 71*0.5, 92*0.5);
    } else {
      image(dlogo_b3d, width/2, 55, 79*0.5, 92*0.5);
    }
    fill(#FFFF00);
    image(turnB, width/2, height/2, width, height);
  }

  if (gameState == 2) {
    if (p.isAtFinal() == false) {
      if (diceThrowed == true && steps == 0) {
        stopMove = true;
        diceThrowed = false;
      }
    }
  } else if (gameState == 4 || gameState == 5) {
    if (diceThrowed == true && steps == 0) {
      stopMove = true;
      diceThrowed = false;
    }
  }

  if (p.isAtDoor() == false) {
    if (p.isAtYellow() == false && stopMove == true)
      changeTurn();
  } else {
    if (doorChanged == true && stopMove == true)
      changeTurn();
  }

  if (diceThrowed == true)
    text(steps, width/2-6, 860);
}

