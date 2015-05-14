Movie title;
Movie c2to3;
Movie c3to2;
Movie LM3to2;
Movie LM2to3;
Movie LM2ddoor;
Movie LM3ddoor;
Movie LMRwin;
Movie LMYwin;
Movie ychange1to2;
Movie ychange2to1;
PImage chooseDoorR;
PImage chooseDoorY;

//door
Movie door2D;
Movie door3D;
Movie LDRwin;
Movie LDYwin;

//stair
Movie LMstairsL2d;
Movie LMstairsM2d;
Movie LMstairsR2d;


//menu
Gif menuChoose;
PImage menu;


Movie doorLevel;
Movie mirageLevel;
Gif keyDice;
PFont oswald;
PImage map2ds;
PImage map3ds;

//dimen choose
//PImage choosed;
PImage chooseR;
PImage chooseY;
PImage chooseRLM;
PImage chooseYLM;
Gif chooseSpinR;
Gif chooseSpinY;

PImage pieceR;
PImage pieceY;
Gif pieceRspin;
Gif pieceYspin;
PImage pieceR3d;
PImage pieceY3d;
Gif pieceR3dspin;
Gif pieceY3dspin;

PImage turnR;
PImage turnB;
PImage keya;
PImage keyb;
PImage dlogo_a2d;
PImage dlogo_a3d;
PImage dlogo_b2d;
PImage dlogo_b3d;
//scenario
PImage scenario12;
PImage scenario13;
PImage bgR;
PImage bgL;
PImage scenario2L2;
PImage scenario2L3;
PImage scenario2R2;
PImage scenario2R3;
Movie scenario1;
Movie scenario2;
Movie S2stairsStop;
Movie S2L2to3;
Movie S2R3to2;
Movie S2wrong;

Movie dsstop1;
Movie dsstop2;
Movie dice1;
Movie dice2;
Movie dice3;
Movie dice4;
Movie dice5;
Movie dice6;

PImage LMmap2d;
PImage LMmap3d;
PImage MirageB1;
PImage MirageB2;

void initialInterface() {
  //door level
  map3ds = loadImage("map3ds.jpg");
  map2ds = loadImage("map2ds.jpg");
  c2to3 = new Movie(this, "2to3.mov");
  c3to2 = new Movie(this, "3to2.mov");
  door2D = new Movie(this, "door2d.mov");
  door3D = new Movie(this, "door3d.mov");
  dsstop1 = new Movie(this, "staireffect1.mov");
  dsstop2 = new Movie(this, "staireffect2.mov");
  doorLevel = new Movie(this, "doorlevel.mov");
  LDRwin = new Movie(this, "LDRwin.mov");
  LDYwin = new Movie(this, "LDYwin.mov");

  //title
  title = new Movie(this, "title.mov");

  //scenario
  scenario12 = loadImage("scenario1.2.jpg");
  scenario13 = loadImage("scenario1.3.jpg");
  bgR = loadImage("bgR.jpg");
  bgL = loadImage("bgL.jpg");
  scenario2L2 = loadImage("senario2_L2d.png");
  scenario2L3 = loadImage("senario2_L3d.png");
  scenario2R2 = loadImage("senario2_R2d.png");
  scenario2R3 = loadImage("senario2_R3d.png");
  scenario1 = new Movie(this, "scenario1.mov");
  scenario2 = new Movie(this, "scenario2.mov");
  S2stairsStop = new Movie(this, "S2stairs.mov");
  S2L2to3 = new Movie(this, "S2L2to3.mov");
  S2R3to2 = new Movie(this, "S2R3to2.mov");
  S2wrong = new Movie(this, "S2wrong.mov");

  //choose dimen
  chooseR = loadImage("chooseR.jpg");
  chooseY = loadImage("chooseY.jpg");
  chooseSpinR = new Gif(this, "chooseSpinR.gif");
  chooseSpinY = new Gif(this, "chooseSpinY.gif");
  chooseRLM = loadImage("chooseRLM.jpg");
  chooseYLM = loadImage("chooseYLM.jpg");


  //Mirage level 
  LMmap2d = loadImage("LMmap2d.jpg");
  LMmap3d = loadImage("LMmap3d.jpg");
  MirageB1 = loadImage("yellow1-06.png");
  MirageB2 = loadImage("yellow2-07.png");
  mirageLevel = new Movie(this, "miragelevel.mov");
  LM3to2 = new Movie(this, "LM3to2.mov");
  LM2to3 = new Movie(this, "LM2to3.mov");
  LM2ddoor = new Movie(this, "LM2ddoor.mov");
  LM3ddoor = new Movie(this, "LM3ddoor.mov");
  ychange1to2 = new Movie(this, "ychange1to2.mov");
  ychange2to1 = new Movie(this, "ychange2to1.mov");
  LMstairsL2d = new Movie(this, "LMstairsL2d.mov");
  LMstairsM2d = new Movie(this, "LMstairsM2d.mov");
  LMstairsR2d = new Movie(this, "LMstairsR2d.mov");
  LMRwin = new Movie(this, "LMRwin.mov");
  LMYwin = new Movie(this, "LMYwin.mov");


  //all time use
  chooseDoorR = loadImage("chooseDoor_R.png");
  chooseDoorY = loadImage("chooseDoor_Y.png");
  pieceR = loadImage("piecer.png");
  pieceY = loadImage("piecey.png");
  pieceRspin = new Gif(this, "piecer_spin.gif");
  pieceYspin = new Gif(this, "piecey_spin.gif");
  pieceR3d = loadImage("piece3d_R.png");
  pieceY3d = loadImage("piece3d_Y.png");
  pieceR3dspin = new Gif(this, "piece3dspin_R.gif");
  pieceY3dspin = new Gif(this, "piece3dspin_Y.gif");
  turnR = loadImage("turnR.png");
  turnB = loadImage("turnB.png");
  oswald = loadFont("Oswald-28.vlw");
  keyDice = new Gif(this, "keySpaceTrow.gif");
  keya = loadImage("keyA.png");
  keyb = loadImage("keyB.png");
  dice1 = new Movie(this, "dice1.mov");
  dice2 = new Movie(this, "dice2.mov");
  dice3 = new Movie(this, "dice3.mov");
  dice4 = new Movie(this, "dice4.mov");
  dice5 = new Movie(this, "dice5.mov");
  dice6 = new Movie(this, "dice6.mov");
  dlogo_a2d = loadImage("dlogo_a2d.png");
  dlogo_a3d = loadImage("dlogo_a3d.png");
  dlogo_b2d = loadImage("dlogo_b2d.png");
  dlogo_b3d = loadImage("dlogo_b3d.png");

  //menu
  menuChoose = new Gif(this, "menuChoose.gif");
  menu = loadImage("menu.jpg");
}

//void cleanDoorM() {
//  map3ds = null;
//  map2ds = null;
//  c2to3 = null;
//  c3to2 = null;
//  door2D = null;
//  door3D = null;
//  dsstop1 = null;
//  dsstop2 = null;
//  doorLevel = null;
//}
//
//void cleanScenarioM() {
//  scenario12 = null;
//  scenario13 = null;
//  bgR = null;
//  bgL = null;
//  scenario2L2 = null;
//  scenario2L3 = null;
//  scenario2R2 = null;
//  scenario2R3 = null;
//  scenario1 = null;
//  scenario2 = null;
//  S2stairsStop = null;
//  S2L2to3 = null;
//  S2R3to2 = null;
//  S2wrong = null;
//}
//
//void cleanTitleM() {
//  title = null;
//}

