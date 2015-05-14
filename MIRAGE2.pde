/*MIRAGE 2.0 PURE DIGITAL VERSION*/
import processing.video.*;
import gifAnimation.*;

int savedTime;
int gameState;
int chooseStage = 0;
boolean choosedStage = false;

float beginAx;
float beginAy;
float beginBx;
float beginBy;


boolean playerAChoose;
boolean playerBChoose;
int playerADimen;
int playerBDimen;
boolean wrongInput;
int EnterCount;

//about dice
boolean diceThrowed;
boolean stopKey = false;
int currentDice;
int whichDice;
int diceSize;
int steps;

//up 0 down 1 left 2 right 3
//int directionA;
//int directionB;

//store you steps
int[] last2StepA;
int[] last2StepB;

//about door
int doorChooseNo;
int numofDoor;
boolean doorChanged;
boolean nowAtDoor;
boolean sameDoor;

//about stair
boolean stairErr;

int doorTime;
int tempDtime;

boolean stopMove;

//1: scenario 1   2: scenario 2   3: scenario 3  4: game  5:full game
int blockInitial = 0;
int scenarioDice = 0;
int S2wrongTime = 0;


Player playerA;
Player playerB;

void setup() {
  size(1440, 900);
  frameRate(60);

  initialInterface();

  background(0);

  imageMode(CENTER);

  playerAChoose = true;
  playerBChoose = false;
  playerADimen = 0;
  playerBDimen = 0;
  wrongInput = false;
  EnterCount = 0;
  diceThrowed = false;
  whichDice = 7;
  steps = 0;

  doorTime = 0;
  tempDtime = 0;
  doorChooseNo = 0;
  numofDoor = 2;
  doorChanged = false;
  nowAtDoor = false;
  sameDoor = false;

  stairErr = false;

  stopMove = false;
  diceSize = 300;

  blockInitial = 1;
  initialBlock();

  playerA = new Player("A", false, 3, b7);
  playerB = new Player("B", true, 2, b0);
  last2StepA = new int[] {
    7, 7
  };
  last2StepB = new int[] {
    0, 0
  };

  gameState = 0;
}

void movieEvent(Movie m) {
  m.read();
}

void draw() { 
  //println("gameState " + gameState);

  //println("A : " + last2StepA[0] + " " + last2StepA[1] + "  B : " + last2StepB[0] + " " + last2StepB[1]);

  /******************    State 0 Intro    ******************/
  if (gameState == 0) {                        //startvideo
    title.play();
    image(title, width/2, height/2, width, height);
    if (title.time() == title.duration()) {
      gameState = 8;  //menu
      title.stop();
    }
  }

  /***************    State 1 Door level Choose Dimension    ***************/
  if (gameState == 1) {   
    image(doorLevel, width/2, height/2, width, height);

    if (doorLevel.time() == doorLevel.duration()) {

      if (playerAChoose == true) {

        image(chooseR, width/2, height/2, width, height);
        image(chooseSpinR, width/4*3, height/2-20, 230, 360);
        chooseSpinR.play();
        if (playerADimen != 0) {
          if (playerADimen == 2) {
            image(dlogo_a2d, width/4*3, height/2-100, 71*0.5, 92*0.5);
          } else if (playerADimen == 3) {
            image(dlogo_a3d, width/4*3, height/2-100, 79*0.5, 92*0.5);
          }
        }
        if (playerBDimen != 0) {
          if (playerBDimen == 2) {
            image(dlogo_b2d, width/4, height/2-100, 71*0.5, 92*0.5);
          } else if (playerBDimen == 3) {
            image(dlogo_b3d, width/4, height/2-100, 79*0.5, 92*0.5);
          }
        }
      }

      if (playerBChoose == true) {
        image(chooseY, width/2, height/2, width, height);
        image(chooseSpinY, width/4, height/2-20, 230, 360);
        chooseSpinY.play();
        if (playerBDimen != 0) {
          if (playerBDimen == 2) {
            image(dlogo_b2d, width/4, height/2-100, 71*0.5, 92*0.5);
          } else if (playerBDimen == 3) {
            image(dlogo_b3d, width/4, height/2-100, 79*0.5, 92*0.5);
          }
        }
        if (playerADimen != 0) {
          if (playerADimen == 2) {
            image(dlogo_a2d, width/4*3, height/2-100, 71*0.5, 92*0.5);
          } else if (playerADimen == 3) {
            image(dlogo_a3d, width/4*3, height/2-100, 79*0.5, 92*0.5);
          }
        }
      }
      if (wrongInput == true) {
        textSize(20);
        fill(255, 239, 0);
        text("Please Press 2 or 3", width/2-80, 840);
      }

      playerA.setDimen(playerADimen);
      playerB.setDimen(playerBDimen);

      if (playerA.gameDimen != 0 && playerB.gameDimen != 0 && EnterCount == 2 ) {
        //delay(2000);
        gameState = 2;
      }
    } else {
      doorLevel.play();
    }
  }

  /***************    State 6 Full level Choose Dimension    ***************/
  if (gameState == 6) {   
    image(mirageLevel, width/2, height/2, width, height);

    if (mirageLevel.time() == mirageLevel.duration()) {
      if (playerAChoose == true) {

        image(chooseRLM, width/2, height/2, width, height);
        image(chooseSpinR, width/4*3, height/2-20, 230, 360);
        chooseSpinR.play();
        if (playerADimen != 0) {
          if (playerADimen == 2) {
            image(dlogo_a2d, width/4*3, height/2-100, 71*0.5, 92*0.5);
          } else if (playerADimen == 3) {
            image(dlogo_a3d, width/4*3, height/2-100, 79*0.5, 92*0.5);
          }
        }
        if (playerBDimen != 0) {
          if (playerBDimen == 2) {
            image(dlogo_b2d, width/4, height/2-100, 71*0.5, 92*0.5);
          } else if (playerBDimen == 3) {
            image(dlogo_b3d, width/4, height/2-100, 79*0.5, 92*0.5);
          }
        }
      }

      if (playerBChoose == true) {
        image(chooseYLM, width/2, height/2, width, height);
        image(chooseSpinY, width/4, height/2-20, 230, 360);
        chooseSpinY.play();
        if (playerBDimen != 0) {
          if (playerBDimen == 2) {
            image(dlogo_b2d, width/4, height/2-100, 71*0.5, 92*0.5);
          } else if (playerBDimen == 3) {
            image(dlogo_b3d, width/4, height/2-100, 79*0.5, 92*0.5);
          }
        }
        if (playerADimen != 0) {
          if (playerADimen == 2) {
            image(dlogo_a2d, width/4*3, height/2-100, 71*0.5, 92*0.5);
          } else if (playerADimen == 3) {
            image(dlogo_a3d, width/4*3, height/2-100, 79*0.5, 92*0.5);
          }
        }
      }
      if (wrongInput == true) {
        textSize(20);
        fill(255, 239, 0);
        text("Please Press 2 or 3", width/2-80, 840);
      }

      playerA.setDimen(playerADimen);
      playerB.setDimen(playerBDimen);
      //println(playerADimen +"  "+ playerBDimen +"  "+playerA.gameDimen + "  " + playerB.gameDimen + "  " + EnterCount);

      if (playerA.gameDimen != 0 && playerB.gameDimen != 0 && EnterCount == 2 ) {
        //delay(2000);
        mirageLevel = null;
        gameState = 3; // level Mirage
      }
    } else {
      mirageLevel.play();
    }
  } 

  /******************  State 2 door level Start  ********************/

  if (gameState == 2) {   
    //println(turnCount);
    //println(diceThrowed);  

    if (playerA.myTurn == true) {
      //println("PlayerA Move");

      playerMove(playerA);
    }


    if (playerB.myTurn == true) {
      //println("PlayerB Move");
      playerMove(playerB);
    }
  }

  /******************  State 3 Mirage level ********************/
  if (gameState == 3) {   
    //println(mirageChanged);  

    if (playerA.myTurn == true) {
      //println("PlayerA Move");
      playerMove(playerA);
    }


    if (playerB.myTurn == true) {
      //println("PlayerB Move");
      playerMove(playerB);
    }
  }

  /******************  State 7 Game Start Over  ********************/
  if (gameState == 7) {
    playerA.setMyTurn(true);
    playerA.setDimen(0);
    playerA.setCurrentBlock(b10);
    playerB.setMyTurn(false);
    playerB.setDimen(0);
    playerB.setCurrentBlock(b9);
    //ssavedTime = millis();
    turnCount = 0;
    playerAChoose = true;
    playerBChoose = false;
    playerADimen = 0;
    playerBDimen = 0;
    wrongInput = false;
    EnterCount = 0;
    diceThrowed = false;
    whichDice = 7;
    steps = 0;
    doorTime = 0;
    tempDtime = 0;
    doorChooseNo = 0;
    doorChanged = false;
    sameDoor = false;
    nowAtDoor = false;
    stairErr = false;
    stopMove = false;
    last2StepA[0] = 10;
    last2StepA[1] = 10;
    last2StepB[0] = 9;
    last2StepB[1] = 9;
    blockInitial = 0;
    S2wrongTime = 0;
    numofDoor = 2;

    gameState = 0;
  }
  /******************  State 4 scenario 1  ********************/
  if (gameState == 4) {


    //println(playerA.gameDimen +"   "+ playerA.myTurn + " " + playerA.currentBlock.name);
    //println("In scenario 1");
    if (playerA.myTurn == true) {
      //println("PlayerA Move");
      playerMove(playerA);
    }

    if (playerB.myTurn == true) {
      //println("PlayerB Move");
      playerMove(playerB);
    }

    if (playerA.currentBlock.name == "final" && playerB.currentBlock.name == "final") {
      scenario2.play();
      image(scenario2, width/2, height/2, width, height);
      if (scenario2.time() == scenario2.duration()) {
        blockLib.clear();
        blockInitial = 2;
        initialBlock();
        playerA = new Player("A", false, 3, b8);
        playerB = new Player("B", true, 2, b0);
        last2StepA[0] = 8;
        last2StepA[1] = 8;
        last2StepB[0] = 0;
        last2StepB[1] = 0;
        gameState = 5;  //go to scenario 2
      }
    }
  }

  /******************  State 5 scenario 2  ********************/
  if (gameState == 5) {
    //println(playerA.gameDimen +"   "+ playerA.myTurn + " " + playerA.currentBlock.name);


    if (playerA.myTurn == true) {
      //println("PlayerA Move");
      playerMove(playerA);
    }

    if (playerB.myTurn == true) {
      //println("PlayerB Move");
      playerMove(playerB);
    }

    if (playerA.currentBlock.name == "final" && playerB.currentBlock.name == "final") {
      blockLib.clear();
      blockInitial = 4;
      initialBlock();
      playerA = new Player("A", true, 0, b10);
      playerB = new Player("B", false, 0, b9);
      last2StepA = new int[] {
        10, 10
      };
      last2StepB = new int[] {
        9, 9
      };
      gameState = 1;  //go to Dimen choose
      cleanScenarioM();
      System.gc();
    }
  }
  /******************  State 8 Choose Game Level ********************/
  if (gameState == 8) {
    image(menu, width/2, height/2, width, height);
    switch(chooseStage) {
    case 0:
      image(menuChoose, width/2, height/2-180, width, height);
      menuChoose.play();
      break;
    case 1:
      image(menuChoose, width/2, height/2, width, height);
      menuChoose.play();
      break;
    case 2:
      image(menuChoose, width/2, height/2+170, width, height);
      menuChoose.play();
      break;
    }
    textFont(oswald);
    textSize(20);
    fill(255, 239, 0);
    text("Press UP and DOWN Then Hit ENTER", width/2-140, 790);
    if (choosedStage == true) {
      switch(chooseStage) {
      case 0:
        scenario1.play();
        image(scenario1, width/2, height/2, width, height);
        if (scenario1.time() == scenario1.duration()) {
          scenario1.stop();
          cleanTitleM();
          System.gc();
          gameState = 4;
        }
        break;
      case 1:
        blockLib.clear();
        blockInitial = 4;
        cleanTitleM();
        cleanScenarioM();
        System.gc();
        initialBlock();
        playerA = new Player("A", true, 0, b10);
        playerB = new Player("B", false, 0, b9);
        last2StepA = new int[] {
          10, 10
        };
        last2StepB = new int[] {
          9, 9
        };
        gameState = 1;  //go to Dimen choose
        break;
      case 2:
        blockLib.clear();
        doorLib.clear();
        cleanTitleM();
        cleanScenarioM();
        cleanDoorM();
        System.gc();
        blockInitial = 5;
        initialBlock();
        playerA = new Player("A", true, 0, b18);
        playerB = new Player("B", false, 0, b17);
        last2StepA = new int[] {
          18, 18
        };
        last2StepB = new int[] {
          17, 17
        };
        gameState = 6;
        break;
      }
    }
  }
}



void keyPressed() {

  //choose game state
  if (gameState == 8 && (keyCode == UP || keyCode == DOWN)) {
    if (keyCode == UP) {
      if (chooseStage == 0) {
        chooseStage = 2;
      } else {
        chooseStage--;
      }
    }
    if (keyCode == DOWN) {
      if (chooseStage == 2) {
        chooseStage = 0;
      } else {
        chooseStage++;
      }
    }
  }
  if (gameState == 8 && keyCode == ENTER) {
    choosedStage = true;
  }


  //confirm dimention
  if ((gameState == 1 || gameState == 6) && key == '2') {
    if (playerAChoose == true) {
      playerADimen = 2;
      wrongInput = false;
    } else {
      playerBDimen = 2;
      wrongInput = false;
    }
  } else if ((gameState == 1 || gameState == 6) && key == '3') {
    if (playerAChoose == true) {
      playerADimen = 3;
      wrongInput = false;
    } else {
      playerBDimen = 3;
      wrongInput = false;
    }
  } else {
    wrongInput = true;
  }

  if ((gameState == 1 || gameState == 6) && keyCode == ENTER) {
    if (playerADimen != 0 && playerBDimen != 0)
      EnterCount = 2;
    //println(playerADimen + playerBDimen);
    //println("EnterCount " + EnterCount);
    if (playerAChoose == true) {
      playerAChoose = false;
      playerBChoose = true;
      wrongInput = false;
    } else {
      playerBChoose = false;
      playerAChoose = true;
      wrongInput = false;
    }
  }

  //throw dice
  if ((gameState == 2 || gameState == 3) && key == ' ' && diceThrowed == false) {
    whichDice = int(random(-0.5, 6));
  }
  if (gameState == 4 && key == ' ') {
    switch(scenarioDice) {
    case 0:
      whichDice = 1;
      scenarioDice++;
      break;
    case 1:
      whichDice = 2;
      scenarioDice++;
      break;
    case 2:
      whichDice = 3;
      scenarioDice = 0;
      break;
    }
  }
  if (gameState == 5 && key == ' ') {
    switch(scenarioDice) {
    case 0:
      whichDice = 4;
      scenarioDice++;
      break;
    case 1:
      whichDice = 2;
      scenarioDice++;
      break;
    case 2:
      whichDice = 4;
      scenarioDice ++;
      break;
    case 3:
      whichDice = 5;
      scenarioDice ++;
      break;
    case 4:
      whichDice = 3;
      scenarioDice ++;
      break;
    case 5:
      whichDice = 3;
      scenarioDice =0;
      break;
    }
  }

  //piece move
  if (playerA.myTurn == true && (gameState == 2 || gameState == 4 || gameState == 5 || gameState == 3)) {
    pieceMove(playerA);
  } else if (playerB.myTurn == true && (gameState == 2 || gameState == 4 || gameState == 5 || gameState == 3)) {
    pieceMove(playerB);
  }

  //choose door
  if ((gameState == 2 || gameState == 3)&& (key == 'C'|| key == 'c')) {
    doorChooseNo = (doorChooseNo + 1) % numofDoor;
  }
  if ((playerA.isAtDoor() == true || playerB.isAtDoor() == true ) && (gameState == 2 || gameState == 3) && keyCode == ENTER) {
    doorChanged = true;
    //enter door you wanna go
    switch(doorChooseNo) {
    case 0: 

      if (playerA.myTurn == true) {
        if (playerA.currentBlock != b0) {
          playerA.setCurrentBlock(b0);
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = b0.num;
        } else {
          sameDoor = true;
        }
        break;
      } else {
        if (playerB.currentBlock != b0) {
          playerB.setCurrentBlock(b0);
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = b0.num;
        } else {
          sameDoor = true;
        }
        break;
      }

    case 1: 

      if (playerA.myTurn == true) {
        if (playerA.currentBlock != b1) {
          playerA.setCurrentBlock(b1);
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = b1.num;
        } else {
          sameDoor = true;
        }
        break;
      } else {
        if (playerB.currentBlock != b1) {
          playerB.setCurrentBlock(b1);
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = b1.num;
        } else {
          sameDoor = true;
        }
        break;
      }

    case 2: 

      if (playerA.myTurn == true) {
        if (playerA.currentBlock != b2) {
          playerA.setCurrentBlock(b2);
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = b2.num;
        } else {
          sameDoor = true;
        }
        break;
      } else {
        if (playerB.currentBlock != b2) {
          playerB.setCurrentBlock(b2);
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = b2.num;
        } else {
          sameDoor = true;
        }
        break;
      }

    case 3: 

      if (playerA.myTurn == true) {
        if (playerA.currentBlock != b3) {
          playerA.setCurrentBlock(b3);
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = b3.num;
        } else {
          sameDoor = true;
        }
        break;
      } else {
        if (playerB.currentBlock != b3) {
          playerB.setCurrentBlock(b3);
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = b3.num;
        } else {
          sameDoor = true;
        }
        break;
      }

    case 4: 

      if (playerA.myTurn == true) {
        if (playerA.currentBlock != b4) {
          playerA.setCurrentBlock(b4);
          last2StepA[0] = last2StepA[1];
          last2StepA[1] = b4.num;
        } else {
          sameDoor = true;
        }
        break;
      } else {
        if (playerB.currentBlock != b4) {
          playerB.setCurrentBlock(b4);
          last2StepB[0] = last2StepB[1];
          last2StepB[1] = b4.num;
        } else {
          sameDoor = true;
        }
        break;
      }
    }
  }
}


void delay(int delay) {
  int time = millis();
  while (millis () - time <= delay);
}

