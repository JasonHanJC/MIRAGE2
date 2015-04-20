/*MIRAGE 2.0 PURE DIGITAL VERSION*/
import processing.video.*;
import gifAnimation.*;

int savedTime;
int gameState;


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
int directionA;
int directionB;

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


Player playerA;
Player playerB;

void setup() {
  size(800, 800);
  frameRate(60);

  initialBlock();
  initialInterface();

  imageMode(CENTER);
  //initial players
  playerA = new Player("A", true, 0, b10);
  playerB = new Player("B", false, 0, b9);

  //savedTime = millis();

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

  last2StepA = new int[] {
    10, 10
  };
  last2StepB = new int[] {
    9, 9
  };

  gameState = 0;
}

void movieEvent(Movie m) {
  m.read();
}

void draw() { 
  //int passedTime = millis() - savedTime;
  /******************    State 0 Intro    ******************/
  if (gameState == 0) {                        //startvideo
    title.play();
    image(title, width/2, height/2, width, height);
    if (title.time() == title.duration()) {
      intro1.play();
      image(intro1, width/2, height/2, width, height);
    }
    if (intro1.time() == intro1.duration()) {
      gameState = 1;
    }
  }

  /***************    State 1 Choose Dimension    ***************/
  if (gameState == 1) {   
    image(toWin, width/2, height/2, width, height);

    if (toWin.time() == toWin.duration()) {
      image(choosed, width/2, height/2, width, height);

      if (playerAChoose == true) {
        textSize(20);
        fill(237, 30, 40);
        text("Red Player Choose Please", 300, 700);
        if (playerADimen != 0) {
          textSize(20);
          fill(255, 0, 0);
          text(playerADimen + "D", width/2, 730);
          if (playerADimen == 2) {
            fill(255, 0, 0, 80);
            strokeWeight(0);
            beginShape();
            vertex(70, 204);
            vertex(463, 204);
            vertex(333, 613);
            vertex(70, 613);
            vertex(70, 204);
            endShape();
          } else if (playerADimen == 3) {
            fill(255, 0, 0, 70);
            strokeWeight(0);
            beginShape();
            vertex(463, 204);
            vertex(730, 204);
            vertex(730, 613);
            vertex(333, 613);
            vertex(463, 204);
            endShape();
          }
        }
      }

      if (playerBChoose == true) {
        textSize(20);
        fill(49, 187, 244);
        text("Blue Player Choose Please", 290, 700);
        if (playerBDimen != 0) {
          textSize(20);
          fill(49, 187, 244);
          text(playerBDimen + "D", width/2, 730);
          if (playerBDimen == 2) {
            fill(42, 171, 266, 80);
            strokeWeight(0);
            beginShape();
            vertex(70, 204);
            vertex(463, 204);
            vertex(333, 613);
            vertex(70, 613);
            vertex(70, 204);
            endShape();
          } else if (playerBDimen == 3) {
            fill(42, 171, 266, 70);
            strokeWeight(0);
            beginShape();
            vertex(463, 204);
            vertex(730, 204);
            vertex(730, 613);
            vertex(333, 613);
            vertex(463, 204);
            endShape();
          }
        }
      }
      if (wrongInput == true) {
        textSize(20);
        fill(255, 239, 0);
        text("Error! Please Input 2 or 3", 280, 760);
      }

      playerA.setDimen(playerADimen);
      playerB.setDimen(playerBDimen);

      if (playerA.gameDimen != 0 && playerB.gameDimen != 0 && EnterCount == 2 )
        gameState = 2;
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

    gameState = 0;
  }
}


void changeTurn() {
  if (playerA.myTurn == true) {
    playerA.setMyTurn(false);
    playerB.setMyTurn(true);
    stopMove = false;
    doorChanged = false;
    if (playerA.currentBlock.name != "door" && playerB.currentBlock.name != "door"){
      sameDoor = false;
      nowAtDoor = false;
    }
  } else {
    playerB.setMyTurn(false);
    playerA.setMyTurn(true);
    stopMove = false;
    doorChanged = false;
    if (playerA.currentBlock.name != "door" && playerB.currentBlock.name != "door"){
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

  //piece move
  if (playerA.myTurn == true && gameState == 2) {
    pieceMove(playerA);
  } else if (playerB.myTurn == true && gameState == 2) {
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
    gameState = 1;
  }
}

