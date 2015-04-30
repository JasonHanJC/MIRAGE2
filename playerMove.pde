void playerMove(Player p) {
  playerPositionDetect(p);

  pieceDisplay();

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
      if (keya.currentFrame() == 74) {
        stopKey = true;
        keya.stop();
      } else if (stopKey == false) {
        keya.play();
        image(keya, width/2, height-85, 130, 130);
      }
    } else {
      if (keyb.currentFrame() == 74) {
        stopKey = true;
        keyb.stop();
      } else if (stopKey == false) {
        keyb.play();
        image(keya, width/2, height-85, 130, 130);
      }
    }
  }
  textFont(oswald);
  textSize(30);
  if (p.name == "A") {
    fill(#C1272D);
    image(turnR, width/2, height/2, width, height);
  } else {
    fill(#00A4E8);
    image(turnB, width/2, height/2, width, height);
  }
  text(p.gameDimen +"D", width/2 - 100, 30);

  if (p.isAtFinal() == false) {
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
    text(steps, width/2 + 105, 30);
}

