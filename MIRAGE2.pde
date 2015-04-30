/*MIRAGE 2.0 PURE DIGITAL VERSION*/
import processing.video.*;
import gifAnimation.*;
import java.util.*;

int savedTime;
int gameState;


//for move effect
float exponent = 2;   // Determines the curve
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.01;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)

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

//1: scenario 1   2: scenario 2   3: scenario 3  4: game
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
  diceSize = 200;


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
  //println("A : " + last2StepA[0] + " " + last2StepA[1] + "  B : " + last2StepB[0] + " " + last2StepB[1]);
  //int passedTime = millis() - savedTime;
  /******************    State 0 Intro    ******************/
  if (gameState == 0) {                        //startvideo
    title.play();
    image(title, width/2, height/2, 900, 900);
    if (title.time() == title.duration()) {
      scenario1.play();
      image(scenario1, width/2, height/2, width, height);
    }
    if (scenario1.time() == scenario1.duration()) {
      gameState = 4;  //go to scenario 1
      println("In scenario 1");
    }
  }

  /***************    State 1 Choose Dimension    ***************/
  if (gameState == 1) {   
    image(toWin, width/2, height/2, width, height);

    if (toWin.time() == toWin.duration()) {

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
        text("Error! Please Input 2 or 3", width/2-100, 790);
      }

      playerA.setDimen(playerADimen);
      playerB.setDimen(playerBDimen);

      if (playerA.gameDimen != 0 && playerB.gameDimen != 0 && EnterCount == 2 ) {
        delay(2000);
        gameState = 2;
      }
    } else {
      toWin.play();
    }
  } else {
    EnterCount = 0;
  }

  /******************  State 2 Game Start  ********************/

  if (gameState == 2) {   

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

  /******************  State 3 Game Start Over  ********************/
  if (gameState == 3) {
    playerA.setMyTurn(true);
    playerA.setDimen(0);
    playerA.setCurrentBlock(b10);
    playerB.setMyTurn(false);
    playerB.setDimen(0);
    playerB.setCurrentBlock(b9);
    //ssavedTime = millis();

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
        playerA = new Player("A", false, 3, b10);
        playerB = new Player("B", true, 2, b2);
        last2StepA[0] = 10;
        last2StepA[1] = 10;
        last2StepB[0] = 2;
        last2StepB[1] = 2;
        gameState = 5;  //go to scenario 2
        println("In scenario 2");
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
    }
  }
}



void changeTurn() {
  if (playerA.myTurn == true) {
    playerA.setMyTurn(false);
    playerB.setMyTurn(true);
    stopMove = false;
    doorChanged = false;
    if (playerA.currentBlock.name != "door" && playerB.currentBlock.name != "door") {
      sameDoor = false;
      nowAtDoor = false;
    }
  } else {
    playerB.setMyTurn(false);
    playerA.setMyTurn(true);
    stopMove = false;
    doorChanged = false;
    if (playerA.currentBlock.name != "door" && playerB.currentBlock.name != "door") {
      sameDoor = false;
      nowAtDoor = false;
    }
  }
}


void keyPressed() {

  //confirm dimention
  if (gameState == 1 && key == '2') {
    if (playerAChoose == true) {
      playerADimen = 2;
      wrongInput = false;
    } else {
      playerBDimen = 2;
      wrongInput = false;
    }
  } else if (gameState == 1 && key == '3') {
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

  if (gameState == 1 && keyCode == ENTER) {
    if (playerADimen != 0 && playerBDimen != 0)
      EnterCount = 2;
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
  if (gameState == 2 && key == ' ' && diceThrowed == false) {
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
      whichDice = 2;
      scenarioDice++;
      break;
    case 1:
      whichDice = 0;
      scenarioDice++;
      break;
    case 2:
      whichDice = 3;
      scenarioDice ++;
      break;
    case 3:
      whichDice = 1;
      scenarioDice ++;
      break;
    case 4:
      whichDice = 0;
      scenarioDice ++;
      break;
    case 5:
      whichDice = 2;
      scenarioDice ++;
      break;
    case 6:
      whichDice = 1;
      scenarioDice ++;
      break;
    case 7:
      whichDice = 2;
      scenarioDice = 0;
      break;
    }
  }

  //piece move
  if (playerA.myTurn == true && (gameState == 2 || gameState == 4 || gameState == 5)) {
    pieceMove(playerA);
  } else if (playerB.myTurn == true && (gameState == 2 || gameState == 4 || gameState == 5)) {
    pieceMove(playerB);
  }

  //choose door
  if (gameState == 2 && key == 'C'|| key == 'c') {
    doorChooseNo = (doorChooseNo + 1) % numofDoor;
  }
  if ((playerA.isAtDoor() == true || playerB.isAtDoor() == true ) && gameState == 2 && keyCode == ENTER) {
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
    }
  }
}

void mouseClicked() {
  if (gameState == 0) {
    title.pause();
    gameState = 4;
  }
  if (gameState == 4) {
    blockLib.clear();
    blockInitial = 2;
    initialBlock();
    playerA = new Player("A", false, 3, b10);
    playerB = new Player("B", true, 2, b2);
    last2StepA[0] = 10;
    last2StepA[1] = 10;
    last2StepB[0] = 2;
    last2StepB[1] = 2;
    gameState = 5;
  }
  if (gameState == 5) {
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
    gameState = 1;
  }
}

void delay(int delay) {
  int time = millis();
  while (millis () - time <= delay);
}

