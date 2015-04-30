void pieceDisplay() {
  //display A
  if (playerA.gameDimen == 2) {

    if (directionA == 0) {
      image(red2dUp, playerA.currentBlock.center.x, playerA.currentBlock.center.y, 30, 50);
    } else if (directionA == 1) {
      image(red2dDown, playerA.currentBlock.center.x, playerA.currentBlock.center.y, 30, 50);
    } else if (directionA == 2) {
      image(red2dLeft, playerA.currentBlock.center.x, playerA.currentBlock.center.y, 30, 50);
    } else {
      image(red2dRight, playerA.currentBlock.center.x, playerA.currentBlock.center.y, 30, 50);
    }
  } else {

    if (directionA == 0) {
      image(red3dForward, playerA.currentBlock.center.x, playerA.currentBlock.center.y-10, 30, 50);
    } else if (directionA == 1) {
      image(red3dBack, playerA.currentBlock.center.x, playerA.currentBlock.center.y-10, 30, 50);
    } else if (directionA == 2) {
      image(red3dLeft, playerA.currentBlock.center.x, playerA.currentBlock.center.y-10, 30, 50);
    } else {
      image(red3dRight, playerA.currentBlock.center.x, playerA.currentBlock.center.y-10, 30, 50);
    }
  }

  if (playerB.gameDimen == 2) {
    if (directionB == 0) {
      image(blue2dUp, playerB.currentBlock.center.x, playerB.currentBlock.center.y, 30, 50);
    } else if (directionB == 1) {
      image(blue2dDown, playerB.currentBlock.center.x, playerB.currentBlock.center.y, 30, 50);
    } else if (directionB == 2) {
      image(blue2dLeft, playerB.currentBlock.center.x, playerB.currentBlock.center.y, 30, 50);
    } else {
      image(blue2dRight, playerB.currentBlock.center.x, playerB.currentBlock.center.y, 30, 50);
    }
  } else {

    if (directionB == 0) {
      image(blue3dForward, playerB.currentBlock.center.x, playerB.currentBlock.center.y-10, 30, 50);
    } else if (directionB == 1) {
      image(blue3dBack, playerB.currentBlock.center.x, playerB.currentBlock.center.y-10, 30, 50);
    } else if (directionB == 2) {
      image(blue3dLeft, playerB.currentBlock.center.x, playerB.currentBlock.center.y-10, 30, 50);
    } else {
      image(blue3dRight, playerB.currentBlock.center.x, playerB.currentBlock.center.y-10, 30, 50);
    }
  }
}

