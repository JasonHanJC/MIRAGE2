//block
Block b0;
Block b1;
Block b2;
Block b3;
Block b4;
Block b5;
Block b6;
Block b7;
Block b8;
Block b9;
Block b10;
Block b11;
Block b12;
Block b13;
Block b14;
Block b15;
Block b16;
Block b17;
Block b18;
Block b19;
Block b20;
Block b21;
Block b22;
Block b23;
Block b24;
Block b25;
Block b26;
Block b27;
Block b28;
Block b29;
Block b30;
Block b31;
Block b32;
Block b33;
Block b34;
Block b35;
Block b36;
Block b37;
Block b38;
Block b39;
Block b40;
Block b41;
Block b42;
Block b43;
Block b44;
Block b45;
Block b46;
drawDoor dDoor0;
drawDoor dDoor1;

ArrayList<Block> blockLib = new ArrayList<Block>();
ArrayList<drawDoor> doorLib = new ArrayList<drawDoor>();

void initialBlock() {

  //doors
  b0 = new Block(0, "door", new PVector(433, 496), new int[] {
    100, 21, 100, 22
  }
  , new int[] {
    100, 20, 100, 23
  }
  );
  blockLib.add(b0);

  b1 = new Block(1, "door", new PVector(339, 174), new int[] {
    100, 39, 100, 40
  }
  , new int[] {
    100, 38, 100, 8
  }
  );
  blockLib.add(b1);

  //Stairs
  b2 = new Block(2, "stair", new PVector(260, 348), new int[] {
    100, 14, 100, 15
  }
  , new int[] {
    16, 13, 3, 100
  }
  );
  blockLib.add(b2);

  b3 = new Block(3, "stair", new PVector(178, 324), new int[] {
    33, 100, 100, 100
  }
  , new int[] {
    34, 100, 100, 2
  }
  );
  blockLib.add(b3);

  b4 = new Block(4, "stair", new PVector(648, 270), new int[] {
    100, 29, 100, 100
  }
  , new int[] {
    5, 28, 100, 100
  }
  );
  blockLib.add(b4);

  b5 = new Block(5, "stair", new PVector(585, 167), new int[] {
    100, 100, 45, 100
  }
  , new int[] {
    100, 4, 44, 100
  }
  );
  blockLib.add(b5);

  //yellow
  b6 = new Block(6, "yellow", new PVector(180, 604), new int[] {
    12, 11, 100, 100
  }
  , new int[] {
    13, 9, 100, 100
  }
  );
  blockLib.add(b6);

  b7 = new Block(7, "yellow", new PVector(583, 449), new int[] {
    26, 30, 100, 27
  }
  , new int[] {
    25, 31, 100, 28
  }
  );
  blockLib.add(b7);

  b8 = new Block(8, "yellow", new PVector(400, 240), new int[] {
    100, 100, 40, 41
  }
  , new int[] {
    100, 100, 1, 42
  }
  );
  blockLib.add(b8);

  //start
  b9 = new Block(9, "start", new PVector(137, 703), new int[] {
    11, 100, 100, 100
  }
  , new int[] {
    6, 100, 100, 100
  }
  );
  blockLib.add(b9);       

  b10 = new Block(10, "start", new PVector(662, 704), new int[] {
    32, 100, 100, 100
  }
  , new int[] {
    31, 100, 100, 100
  }
  );
  blockLib.add(b10);


  //normal
  b11 = new Block(11, "normal", new PVector(159, 656), new int[] {
    6, 9, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b11);

  b12 = new Block(12, "normal", new PVector(200, 526), new int[] {
    13, 6, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b12);

  b13 = new Block(13, "normal", new PVector(220, 445), new int[] {
    14, 12, 100, 15
  }
  , new int[] {
    2, 6, 100, 100
  }
  );
  blockLib.add(b13);

  b14 = new Block(14, "normal", new PVector(240, 395), new int[] {
    2, 13, 100, 15
  }
  , new int[] {
  }
  );
  blockLib.add(b14);

  b15 = new Block(15, "normal", new PVector(291, 394), new int[] {
    2, 100, 14, 16
  }
  , new int[] {
  }
  );
  blockLib.add(b15);

  b16 = new Block(16, "normal", new PVector(323, 431), new int[] {
    100, 17, 15, 17
  }
  , new int[] {
    100, 2, 100, 18
  }
  );
  blockLib.add(b16);

  b17 = new Block(17, "normal", new PVector(334, 496), new int[] {
    16, 18, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b17);

  b18 = new Block(18, "normal", new PVector(366, 560), new int[] {
    100, 100, 17, 19
  }
  , new int[] {
    100, 100, 16, 20
  }
  );
  blockLib.add(b18);

  b19 = new Block(19, "normal", new PVector(401, 610), new int[] {
    18, 20, 100, 21
  }
  , new int[] {
  }
  );
  blockLib.add(b19);

  b20 = new Block(20, "normal", new PVector(430, 655), new int[] {
    21, 100, 19, 100
  }
  , new int[] {
    0, 100, 18, 100
  }
  );
  blockLib.add(b20);

  b21 = new Block(21, "normal", new PVector(450, 580), new int[] {
    0, 20, 19, 100
  }
  , new int[] {
    0, 100, 18, 100
  }
  );
  blockLib.add(b21);

  b22 = new Block(22, "normal", new PVector(465, 437), new int[] {
    23, 0, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b22);

  b23 = new Block(23, "normal", new PVector(474, 369), new int[] {
    100, 22, 22, 24
  }
  , new int[] {
    100, 25, 0, 100
  }
  );
  blockLib.add(b23);

  b24 = new Block(24, "normal", new PVector(507, 377), new int[] {
    25, 100, 23, 26
  }
  , new int[] {
  }
  );
  blockLib.add(b24);

  b25 = new Block(25, "normal", new PVector(541, 354), new int[] {
    100, 26, 24, 100
  }
  , new int[] {
    23, 7, 100, 100
  }
  );
  blockLib.add(b25);

  b26 = new Block(26, "normal", new PVector(560, 400), new int[] {
    25, 7, 24, 27
  }
  , new int[] {
  }
  );
  blockLib.add(b26);

  b27 = new Block(27, "normal", new PVector(610, 420), new int[] {
    28, 7, 26, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b27);

  b28 = new Block(28, "normal", new PVector(645, 390), new int[] {
    100, 100, 27, 29
  }
  , new int[] {
    4, 100, 7, 4
  }
  );
  blockLib.add(b28);

  b29 = new Block(29, "normal", new PVector(675, 332), new int[] {
    4, 28, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b29);

  b30 = new Block(30, "normal", new PVector(600, 500), new int[] {
    7, 31, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b30);

  b31 = new Block(31, "normal", new PVector(623, 550), new int[] {
    30, 32, 100, 100
  }
  , new int[] {
    7, 10, 100, 100
  }
  );
  blockLib.add(b31);

  b32 = new Block(32, "normal", new PVector(640, 630), new int[] {
    31, 10, 100, 100
  }
  , new int[] {
  }
  );
  blockLib.add(b32);

  b33 = new Block(33, "normal", new PVector(197, 244), new int[] {
    34, 3, 100, 35
  }
  , new int[] {
  }
  );
  blockLib.add(b33);

  b34 = new Block(34, "normal", new PVector(216, 167), new int[] {
    100, 33, 100, 35
  }
  , new int[] {
    36, 3, 100, 100
  }
  );
  blockLib.add(b34);

  b35 = new Block(35, "normal", new PVector(249, 184), new int[] {
    34, 100, 33, 36
  }
  , new int[] {
  }
  );
  blockLib.add(b35);

  b36 = new Block(36, "normal", new PVector(277, 183), new int[] {
    100, 37, 35, 37
  }
  , new int[] {
    38, 34, 100, 100
  }
  );
  blockLib.add(b36);

  b37 = new Block(37, "normal", new PVector(277, 246), new int[] {
    36, 38, 35, 39
  }
  , new int[] {
  }
  );
  blockLib.add(b37);

  b38 = new Block(38, "normal", new PVector(321, 269), new int[] {
    39, 100, 37, 100
  }
  , new int[] {
    1, 36, 100, 100
  }
  );
  blockLib.add(b38);

  b39 = new Block(39, "normal", new PVector(326, 228), new int[] {
    1, 38, 37, 40
  }
  , new int[] {
  }
  );
  blockLib.add(b39);

  b40 = new Block(40, "normal", new PVector(369, 205), new int[] {
    1, 8, 39, 8
  }
  , new int[] {
  }
  );
  blockLib.add(b40);

  b41 = new Block(41, "normal", new PVector(435, 270), new int[] {
    8, 42, 8, 43
  }
  , new int[] {
  }
  );
  blockLib.add(b41);

  b42 = new Block(42, "normal", new PVector(467, 300), new int[] {
    43, 100, 41, 100
  }
  , new int[] {
    46, 100, 8, 44
  }
  );
  blockLib.add(b42);

  b43 = new Block(43, "normal", new PVector(486, 185), new int[] {
    46, 42, 41, 44
  }
  , new int[] {
  }
  );
  blockLib.add(b43);

  b44 = new Block(44, "normal", new PVector(519, 230), new int[] {
    43, 43, 43, 45
  }
  , new int[] {
    46, 100, 42, 5
  }
  );
  blockLib.add(b44);

  b45 = new Block(45, "normal", new PVector(548, 200), new int[] {
    5, 44, 44, 5
  }
  , new int[] {
  }
  );
  blockLib.add(b45);

  //final
  b46 = new Block(46, "final", new PVector(505, 145), new int[] {
    100, 43, 100, 100
  }
  , new int[] {
    100, 44, 100, 42
  }
  );
  blockLib.add(b46);

  dDoor0 = new drawDoor(new int[] {
    379, 478, 412, 478, 412, 444, 452, 444, 452, 485, 484, 514, 419, 514, 379, 478
  }
  );
  doorLib.add(dDoor0);

  dDoor1 = new drawDoor(new int[] {
    320, 128, 360, 128, 360, 161, 388, 161, 349, 197, 310, 197, 310, 174, 320, 166, 320, 128
  }
  );

  doorLib.add(dDoor1);
}

