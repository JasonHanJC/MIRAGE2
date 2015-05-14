void pieceMove(Player p) {
  if (p.name == "A") {
    if (diceThrowed == true) {
      //2d move
      if (p.gameDimen == 2) {
        if (keyCode == UP && p.currentBlock.aviBloc2d[0] != -1 && p.currentBlock.aviBloc2d[0] != last2StepA[0]) {
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[0]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == DOWN && p.currentBlock.aviBloc2d[1] != -1 && p.currentBlock.aviBloc2d[1] != last2StepA[0]) {
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[1]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == LEFT && p.currentBlock.aviBloc2d[2] != -1 && p.currentBlock.aviBloc2d[2] != last2StepA[0]) {
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[2]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == RIGHT && p.currentBlock.aviBloc2d[3] != -1 && p.currentBlock.aviBloc2d[3] != last2StepA[0]) {
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[3]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else {

          //Stair Err Play define
          //stair 2
          if (gameState == 5) {
            if (p.currentBlock.num == 15 && (keyCode == LEFT || keyCode == UP)) {
              stairErr = true;
            }
          }

          if (gameState == 2) {
            if (p.currentBlock.num == 2 && (keyCode == LEFT || keyCode == UP)) {
              stairErr = true;
            }
            //stair 3
            if (p.currentBlock.num == 3 && (keyCode == RIGHT || keyCode == DOWN)) {
              stairErr = true;
            }
            //stair 4
            if (p.currentBlock.num == 4 && (keyCode == UP || keyCode == LEFT)) {
              stairErr = true;
            }
            //stair 5
            if (p.currentBlock.num == 5 && (keyCode == RIGHT || keyCode == DOWN)) {
              stairErr = true;
            }
          }
          
          if (gameState == 3) {
            if (p.currentBlock.num == 5 && (keyCode == RIGHT || keyCode == UP)) {
              stairErr = true;
            }
            if (p.currentBlock.num == 6 && (keyCode == LEFT || keyCode == DOWN)) {
              stairErr = true;
            }
            if (p.currentBlock.num == 7 && keyCode == UP) {
              stairErr = true;
            }
            if (p.currentBlock.num == 8 && keyCode == DOWN) {
              stairErr = true;
            }
            if (p.currentBlock.num == 9 && (keyCode == RIGHT || keyCode == DOWN)) {
              stairErr = true;
            }
            if (p.currentBlock.num == 10 && (keyCode == LEFT || keyCode == UP)) {
              stairErr = true;
            }
          }
        }
      } else {  //3d move
        if (keyCode == UP && p.currentBlock.aviBloc3d[0] != -1 && p.currentBlock.aviBloc3d[0] != last2StepA[0]) {
          //          directionA = 0;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[0]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == DOWN && p.currentBlock.aviBloc3d[1] != -1 && p.currentBlock.aviBloc3d[1] != last2StepA[0]) {
          //          directionA = 1;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[1]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == LEFT && p.currentBlock.aviBloc3d[2] != -1 && p.currentBlock.aviBloc3d[2] != last2StepA[0]) {
          //          directionA = 2;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[2]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        } else if (keyCode == RIGHT && p.currentBlock.aviBloc3d[3] != -1 && p.currentBlock.aviBloc3d[3] != last2StepA[0]) {
          //          directionA = 3;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[3]));
          steps--;
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = p.currentBlock.num;
        }
      }
    }
  } else {

    //BLUE MOVE
    if (diceThrowed == true) {
      //2d move
      if (p.gameDimen == 2) {
        if ((key == 'w' || key == 'W') && p.currentBlock.aviBloc2d[0] != -1 && p.currentBlock.aviBloc2d[0] != last2StepB[0]) {
          //          directionB = 0;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[0]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 's' || key == 'S') && p.currentBlock.aviBloc2d[1] != -1 && p.currentBlock.aviBloc2d[1] != last2StepB[0]) {
          //          directionB = 1;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[1]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 'a' || key == 'A') && p.currentBlock.aviBloc2d[2] != -1 && p.currentBlock.aviBloc2d[2] != last2StepB[0]) {
          //          directionB = 2;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[2]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 'd' || key == 'D') && p.currentBlock.aviBloc2d[3] != -1 && p.currentBlock.aviBloc2d[3] != last2StepB[0]) {
          //          directionB = 3;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc2d[3]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else {
          //Stair Err Play define

            if (gameState == 5) {
            if (p.currentBlock.num == 4 && (key == 'w' || key == 'W' || key == 'a' || key == 'A')) {
              stairErr = true;
            }
          }

          if (gameState == 2) {
            if (p.currentBlock.num == 2 && (key == 'a' || key == 'A' || key == 'w' ||  key == 'W')) {
              stairErr = true;
            } else if (p.currentBlock.num == 3 && (key == 'd' || key == 'D' || key == 's' ||  key == 'S')) {
              stairErr = true;
            } else if (p.currentBlock.num == 4 && (key == 'w' || key == 'W' || key == 'a' ||  key == 'A')) {
              stairErr = true;
            } else if (p.currentBlock.num == 5 && (key == 's' || key == 'S' || key == 'D' ||  key == 'd')) {
              stairErr = true;
            }
          }
          
          if (gameState == 3) {
            if (p.currentBlock.num == 5 && (key == 'a' || key == 'A' || key == 'D' ||  key == 'd')) {
              stairErr = true;
            } 
            if (p.currentBlock.num == 6 && (key == 'A' || key == 'a' || key == 's' ||  key == 'S')) {
              stairErr = true;
            } 
            if (p.currentBlock.num == 7 && (key == 'w' || key == 'W')) {
              stairErr = true;
            } 
            if (p.currentBlock.num == 8 && (key == 'D' ||  key == 'd')) {
              stairErr = true;
            }
            if (p.currentBlock.num == 9 && (key == 'S' || key == 's' || key == 'D' ||  key == 'd')) {
              stairErr = true;
            } 
            if (p.currentBlock.num == 10 && (key == 'A' || key == 'a' || key == 'W' ||  key == 'w')) {
              stairErr = true;
            }
          }
        }
      } else {  //3d move
        if ((key == 'w' || key == 'W') && p.currentBlock.aviBloc3d[0] != -1 && p.currentBlock.aviBloc3d[0] != last2StepB[0]) {
          //          directionB = 0;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[0]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 's' || key == 'S') && p.currentBlock.aviBloc3d[1] != -1 && p.currentBlock.aviBloc3d[1] != last2StepB[0]) {
          //          directionB = 1;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[1]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 'a' || key == 'A') && p.currentBlock.aviBloc3d[2] != -1 && p.currentBlock.aviBloc3d[2] != last2StepB[0]) {
          //          directionB = 2;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[2]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        } else if ((key == 'd' || key == 'D') && p.currentBlock.aviBloc3d[3] != -1 && p.currentBlock.aviBloc3d[3] != last2StepB[0]) {
          //          directionB = 3;
          p.setCurrentBlock(blockLib.get(p.currentBlock.aviBloc3d[3]));
          steps--;
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = p.currentBlock.num;
        }
      }
    }
  }
}

