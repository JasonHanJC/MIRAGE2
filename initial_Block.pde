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
  /************************************  scenario 1 ****************************************/
  if (blockInitial == 1) {   // scenario 1 block
    b0 = new Block(0, "start", new PVector(299, 612), new int[] {
      1, 100, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "normal", new PVector(317, 534), new int[] {
      2, 0, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "normal", new PVector(338, 453), new int[] {
      100, 100, 100, 3
    }
    , new int[] {
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "normal", new PVector(370, 474), new int[] {
      100, 100, 100, 4
    }
    , new int[] {
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "normal", new PVector(400, 469), new int[] {
      5, 100, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "normal", new PVector(396, 395), new int[] {
      6, 100, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b5);

    b6 = new Block(6, "final", new PVector(416, 318), new int[] {
      100, 5, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "start", new PVector(1040, 613), new int[] {
    }
    , new int[] {
      8, 100, 100, 100
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "normal", new PVector(1081, 452), new int[] {
    }
    , new int[] {
      9, 100, 100, 100
    }
    );
    blockLib.add(b8);

    b9 = new Block(9, "normal", new PVector(1143, 469), new int[] {
    }
    , new int[] {
      10, 100, 100, 100
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "final", new PVector(1160, 319), new int[] {
    }
    , new int[] {
      100, 100, 100, 100
    }
    );
    blockLib.add(b10);
    println(blockLib);
  }

  /************************************  scenario 2 ****************************************/
  if (blockInitial == 2) {   // scenario 1 block
    b0 = new Block(0, "start", new PVector(308, 625), new int[] {
      100, 100, 100, 1
    }
    , new int[] {
      100, 100, 7, 2
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "normal", new PVector(345, 569), new int[] {
      2, 100, 0, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "normal", new PVector(378, 506), new int[] {
      3, 1, 100, 100
    }
    , new int[] {
      4, 100, 0, 100
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "normal", new PVector(392, 425), new int[] {
      4, 2, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "stair", new PVector(413, 347), new int[] {
      100, 3, 100, 100
    }
    , new int[] {
      100, 2, 5, 100
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "final", new PVector(306, 324), new int[] {
      100, 100, 100, 100
    }
    , new int[] {
      100, 100, 100, 100
    }
    );
    blockLib.add(b5);

    b6 = new Block(6, "normal", new PVector(279, 595), new int[] {
      7, 0, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "yellow", new PVector(246, 561), new int[] {
      100, 100, 100, 6
    }
    , new int[] {
      100, 100, 100, 0
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "start", new PVector(1055, 627), new int[] {
      100, 100, 9, 18
    }
    , new int[] {
      100, 100, 10, 100
    }
    );
    blockLib.add(b8);

    b9 = new Block(9, "normal", new PVector(1028, 593), new int[] {
      10, 8, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "yellow", new PVector(993, 563), new int[] {
      100, 100, 11, 9
    }
    , new int[] {
      100, 100, 100, 8
    }
    );
    blockLib.add(b10);

    b11 = new Block(11, "normal", new PVector(963, 510), new int[] {
      12, 10, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b11);

    b12 = new Block(12, "normal", new PVector(987, 447), new int[] {
      100, 11, 100, 13
    }
    , new int[] {
      100, 100, 100, 14
    }
    );
    blockLib.add(b12);

    b13 = new Block(13, "normal", new PVector(1028, 393), new int[] {
      14, 100, 12, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b13);

    b14 = new Block(14, "final", new PVector(1063, 323), new int[] {
      100, 100, 100, 100
    }
    , new int[] {
      100, 100, 100, 15
    }
    );
    blockLib.add(b14);

    b15 = new Block(15, "stair", new PVector(1163, 347), new int[] {
      100, 16, 100, 100
    }
    , new int[] {
      100, 17, 14, 100
    }
    );
    blockLib.add(b15);

    b16 = new Block(16, "normal", new PVector(1143, 429), new int[] {
      15, 17, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b16);

    b17 = new Block(17, "normal", new PVector(1128, 504), new int[] {
      16, 18, 100, 100
    }
    , new int[] {
      15, 100, 8, 100
    }
    );
    blockLib.add(b17);

    b18 = new Block(18, "normal", new PVector(1094, 572), new int[] {
      17, 100, 8, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b18);

    println(blockLib.size());
  }


  /************************************  game  ****************************************/
  if (blockInitial == 4) {
    //doors
    b0 = new Block(0, "door", new PVector(753, 546), new int[] {
      100, 21, 100, 22
    }
    , new int[] {
      100, 20, 100, 23
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "door", new PVector(658, 227), new int[] {
      100, 39, 100, 40
    }
    , new int[] {
      100, 38, 100, 8
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "stair", new PVector(579, 400), new int[] {
      100, 14, 100, 15
    }
    , new int[] {
      16, 13, 3, 100
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "stair", new PVector(495, 375), new int[] {
      33, 100, 100, 100
    }
    , new int[] {
      34, 100, 100, 2
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "stair", new PVector(966, 318), new int[] {
      100, 29, 100, 100
    }
    , new int[] {
      5, 28, 100, 100
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "stair", new PVector(900, 218), new int[] {
      100, 100, 45, 100
    }
    , new int[] {
      100, 4, 44, 100
    }
    );
    blockLib.add(b5);

    //yellow
    b6 = new Block(6, "yellow", new PVector(500, 654), new int[] {
      12, 11, 100, 100
    }
    , new int[] {
      13, 9, 100, 100
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "yellow", new PVector(900, 500), new int[] {
      26, 30, 100, 27
    }
    , new int[] {
      25, 31, 100, 28
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "yellow", new PVector(722, 288), new int[] {
      100, 100, 40, 41
    }
    , new int[] {
      100, 100, 1, 42
    }
    );
    blockLib.add(b8);

    //start
    b9 = new Block(9, "start", new PVector(460, 755), new int[] {
      11, 100, 100, 100
    }
    , new int[] {
      6, 100, 100, 100
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "start", new PVector(980, 755), new int[] {
      32, 100, 100, 100
    }
    , new int[] {
      31, 100, 100, 100
    }
    );
    blockLib.add(b10);


    //normal
    b11 = new Block(11, "normal", new PVector(480, 700), new int[] {
      6, 9, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b11);

    b12 = new Block(12, "normal", new PVector(517, 583), new int[] {
      13, 6, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b12);

    b13 = new Block(13, "normal", new PVector(539, 497), new int[] {
      14, 12, 100, 15
    }
    , new int[] {
      2, 6, 100, 100
    }
    );
    blockLib.add(b13);

    b14 = new Block(14, "normal", new PVector(559, 448), new int[] {
      2, 13, 100, 15
    }
    , new int[] {
    }
    );
    blockLib.add(b14);

    b15 = new Block(15, "normal", new PVector(611, 446), new int[] {
      2, 100, 14, 16
    }
    , new int[] {
    }
    );
    blockLib.add(b15);

    b16 = new Block(16, "normal", new PVector(644, 483), new int[] {
      100, 17, 15, 100
    }
    , new int[] {
      100, 2, 100, 18
    }
    );
    blockLib.add(b16);

    b17 = new Block(17, "normal", new PVector(652, 553), new int[] {
      16, 18, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b17);

    b18 = new Block(18, "normal", new PVector(688, 610), new int[] {
      100, 100, 17, 19
    }
    , new int[] {
      100, 100, 16, 20
    }
    );
    blockLib.add(b18);

    b19 = new Block(19, "normal", new PVector(720, 661), new int[] {
      18, 20, 100, 21
    }
    , new int[] {
    }
    );
    blockLib.add(b19);

    b20 = new Block(20, "normal", new PVector(750, 707), new int[] {
      21, 100, 19, 100
    }
    , new int[] {
      0, 100, 18, 100
    }
    );
    blockLib.add(b20);

    b21 = new Block(21, "normal", new PVector(771, 630), new int[] {
      0, 20, 19, 100
    }
    , new int[] {
      0, 100, 18, 100
    }
    );
    blockLib.add(b21);

    b22 = new Block(22, "normal", new PVector(785, 489), new int[] {
      23, 0, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b22);

    b23 = new Block(23, "normal", new PVector(792, 422), new int[] {
      100, 22, 100, 24
    }
    , new int[] {
      100, 25, 0, 100
    }
    );
    blockLib.add(b23);

    b24 = new Block(24, "normal", new PVector(827, 427), new int[] {
      25, 100, 23, 26
    }
    , new int[] {
    }
    );
    blockLib.add(b24);

    b25 = new Block(25, "normal", new PVector(860, 400), new int[] {
      100, 26, 24, 100
    }
    , new int[] {
      23, 7, 100, 100
    }
    );
    blockLib.add(b25);

    b26 = new Block(26, "normal", new PVector(878, 452), new int[] {
      25, 7, 24, 27
    }
    , new int[] {
    }
    );
    blockLib.add(b26);

    b27 = new Block(27, "normal", new PVector(931, 470), new int[] {
      28, 7, 26, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b27);

    b28 = new Block(28, "normal", new PVector(967, 440), new int[] {
      100, 100, 27, 29
    }
    , new int[] {
      4, 100, 7, 100
    }
    );
    blockLib.add(b28);

    b29 = new Block(29, "normal", new PVector(996, 384), new int[] {
      4, 28, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b29);

    b30 = new Block(30, "normal", new PVector(918, 550), new int[] {
      7, 31, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b30);

    b31 = new Block(31, "normal", new PVector(939, 598), new int[] {
      30, 32, 100, 100
    }
    , new int[] {
      7, 10, 100, 100
    }
    );
    blockLib.add(b31);

    b32 = new Block(32, "normal", new PVector(957, 676), new int[] {
      31, 10, 100, 100
    }
    , new int[] {
    }
    );
    blockLib.add(b32);

    b33 = new Block(33, "normal", new PVector(512, 296), new int[] {
      34, 3, 100, 35
    }
    , new int[] {
    }
    );
    blockLib.add(b33);

    b34 = new Block(34, "normal", new PVector(535, 218), new int[] {
      100, 33, 100, 35
    }
    , new int[] {
      36, 3, 100, 100
    }
    );
    blockLib.add(b34);

    b35 = new Block(35, "normal", new PVector(567, 240), new int[] {
      34, 100, 33, 36
    }
    , new int[] {
    }
    );
    blockLib.add(b35);

    b36 = new Block(36, "normal", new PVector(600, 234), new int[] {
      100, 37, 35, 100
    }
    , new int[] {
      38, 34, 100, 100
    }
    );
    blockLib.add(b36);

    b37 = new Block(37, "normal", new PVector(595, 290), new int[] {
      36, 38, 35, 39
    }
    , new int[] {
    }
    );
    blockLib.add(b37);

    b38 = new Block(38, "normal", new PVector(640, 320), new int[] {
      39, 100, 37, 100
    }
    , new int[] {
      1, 36, 100, 100
    }
    );
    blockLib.add(b38);

    b39 = new Block(39, "normal", new PVector(646, 280), new int[] {
      1, 38, 37, 40
    }
    , new int[] {
    }
    );
    blockLib.add(b39);

    b40 = new Block(40, "normal", new PVector(687, 262), new int[] {
      1, 100, 39, 8
    }
    , new int[] {
    }
    );
    blockLib.add(b40);

    b41 = new Block(41, "normal", new PVector(755, 320), new int[] {
      8, 42, 100, 43
    }
    , new int[] {
    }
    );
    blockLib.add(b41);

    b42 = new Block(42, "normal", new PVector(787, 353), new int[] {
      43, 100, 41, 100
    }
    , new int[] {
      46, 100, 8, 44
    }
    );
    blockLib.add(b42);

    b43 = new Block(43, "normal", new PVector(803, 302), new int[] {
      46, 42, 41, 44
    }
    , new int[] {
    }
    );
    blockLib.add(b43);

    b44 = new Block(44, "normal", new PVector(838, 280), new int[] {
      100, 43, 100, 45
    }
    , new int[] {
      46, 100, 42, 5
    }
    );
    blockLib.add(b44);

    b45 = new Block(45, "normal", new PVector(868, 250), new int[] {
      100, 100, 44, 5
    }
    , new int[] {
    }
    );
    blockLib.add(b45);

    //final
    b46 = new Block(46, "final", new PVector(824, 193), new int[] {
      100, 43, 100, 100
    }
    , new int[] {
      100, 44, 100, 42
    }
    );
    blockLib.add(b46);

    dDoor0 = new drawDoor(new int[] {
      699, 528, 731, 527, 731, 494, 771, 494, 771, 534, 804, 565, 738, 565, 699, 528
    }
    );
    doorLib.add(dDoor0);

    dDoor1 = new drawDoor(new int[] {
      630, 225, 639, 216, 639, 178, 679, 178, 679, 211, 708, 211, 669, 247, 630, 247, 630, 225
    }
    );
    doorLib.add(dDoor1);
    println(blockLib);
    println(doorLib);
  }
}

