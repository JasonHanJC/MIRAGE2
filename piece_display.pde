void pieceDisplay() {
  //display A
  if (playerA.myTurn == true) {
    if (playerA.gameDimen == 2) {
      image(pieceRspin, playerA.currentBlock.center.x, playerA.currentBlock.center.y-30, 35, 60);
      pieceRspin.play();
    } else {
      image(pieceR3dspin, playerA.currentBlock.center.x, playerA.currentBlock.center.y-30, 50, 60);
      pieceR3dspin.play();
    }
  } else { 
    if (playerA.gameDimen == 2) {
      image(pieceR, playerA.currentBlock.center.x, playerA.currentBlock.center.y-25, 35, 50);
    } else {
      image(pieceR3d, playerA.currentBlock.center.x, playerA.currentBlock.center.y-25, 50, 55);
    }
    //rspin.stop();
  }


  if (playerB.myTurn == true) {
    if (playerB.gameDimen == 2) {
      image(pieceYspin, playerB.currentBlock.center.x, playerB.currentBlock.center.y-30, 35, 60);
      pieceYspin.play();
    } else {
      image(pieceY3dspin, playerB.currentBlock.center.x, playerB.currentBlock.center.y-30, 50, 60);
      pieceY3dspin.play();
    }
  } else { 
    if (playerB.gameDimen == 2) {
      image(pieceY, playerB.currentBlock.center.x, playerB.currentBlock.center.y-25, 35, 50);
    } else {
      image(pieceY3d, playerB.currentBlock.center.x, playerB.currentBlock.center.y-25, 50, 55);
    }
    //yspin.stop();
  }
}

