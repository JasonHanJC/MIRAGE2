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
Block b47;
Block b48;
Block b49;
Block b50;
Block b51;
Block b52;
Block b53;
Block b54;
Block b55;
Block b56;
Block b57;
Block b58;
Block b59;
Block b60;
Block b61;
Block b62;
Block b63;
Block b64;
Block b65;
Block b66;
Block b67;
Block b68;
Block b69;
Block b70;
Block b71;
Block b72;
Block b73;
Block b74;
Block b75;
Block b76;
Block b77;
Block b78;
Block b79;
Block b80;
Block b81;
Block b82;
Block b83;
Block b84;
Block b85;
Block b86;
Block b87;
Block b88;
Block b89;
Block b90;
Block b91;
Block b92;
Block b93;
Block b94;
Block b95;
Block b96;
Block b97;
Block b98;
Block b99;
Block b100;
Block b101;
Block b102;
Block b103;
Block b104;
Block b105;
Block b106;
Block b107;
Block b108;
Block b109;
Block b110;
Block b111;
Block b112;
Block b113;
Block b114;
Block b115;
Block b116;
Block b117;
Block b118;
Block b119;
Block b120;
Block b121;
drawDoor dDoor0;
drawDoor dDoor1;
drawDoor dDoor2;
drawDoor dDoor3;
drawDoor dDoor4;

ArrayList<Block> blockLib = new ArrayList<Block>();
ArrayList<drawDoor> doorLib = new ArrayList<drawDoor>();

void initialBlock() {
  /************************************  scenario 1 ****************************************/
  if (blockInitial == 1) {   // scenario 1 block
    b0 = new Block(0, "start", new PVector(299, 612), new int[] {
      1, -1, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "normal", new PVector(317, 534), new int[] {
      2, 0, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "normal", new PVector(338, 453), new int[] {
      -1, -1, -1, 3
    }
    , new int[] {
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "normal", new PVector(370, 474), new int[] {
      -1, -1, -1, 4
    }
    , new int[] {
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "normal", new PVector(400, 469), new int[] {
      5, -1, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "normal", new PVector(396, 395), new int[] {
      6, -1, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b5);

    b6 = new Block(6, "final", new PVector(416, 318), new int[] {
      -1, 5, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "start", new PVector(1040, 613), new int[] {
    }
    , new int[] {
      8, -1, -1, -1
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "normal", new PVector(1081, 452), new int[] {
    }
    , new int[] {
      9, -1, -1, -1
    }
    );
    blockLib.add(b8);

    b9 = new Block(9, "normal", new PVector(1143, 469), new int[] {
    }
    , new int[] {
      10, -1, -1, -1
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "final", new PVector(1160, 319), new int[] {
    }
    , new int[] {
      -1, -1, -1, -1
    }
    );
    blockLib.add(b10);
    //println("the blocks for scenario 1  " + "num  " + blockLib.size() + "  \n" + blockLib);
  }

  /************************************  scenario 2 ****************************************/
  if (blockInitial == 2) {   // scenario 1 block
    b0 = new Block(0, "start", new PVector(308, 625), new int[] {
      -1, -1, -1, 1
    }
    , new int[] {
      -1, -1, 7, 2
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "normal", new PVector(345, 569), new int[] {
      2, -1, 0, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "normal", new PVector(378, 506), new int[] {
      3, 1, -1, -1
    }
    , new int[] {
      4, -1, 0, -1
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "normal", new PVector(392, 425), new int[] {
      4, 2, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "stair", new PVector(413, 347), new int[] {
      -1, 3, -1, -1
    }
    , new int[] {
      -1, 2, 5, -1
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "final", new PVector(306, 324), new int[] {
      -1, -1, -1, -1
    }
    , new int[] {
      -1, -1, -1, -1
    }
    );
    blockLib.add(b5);

    b6 = new Block(6, "normal", new PVector(279, 595), new int[] {
      7, 0, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "yellow", new PVector(246, 561), new int[] {
      -1, -1, -1, 6
    }
    , new int[] {
      -1, -1, -1, 0
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "start", new PVector(1055, 627), new int[] {
      -1, -1, 9, 18
    }
    , new int[] {
      -1, -1, 10, -1
    }
    );
    blockLib.add(b8);

    b9 = new Block(9, "normal", new PVector(1028, 593), new int[] {
      10, 8, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "yellow", new PVector(993, 563), new int[] {
      -1, -1, 11, 9
    }
    , new int[] {
      -1, -1, -1, 8
    }
    );
    blockLib.add(b10);

    b11 = new Block(11, "normal", new PVector(963, 510), new int[] {
      12, 10, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b11);

    b12 = new Block(12, "normal", new PVector(987, 447), new int[] {
      -1, 11, -1, 13
    }
    , new int[] {
      -1, -1, -1, 14
    }
    );
    blockLib.add(b12);

    b13 = new Block(13, "normal", new PVector(1028, 393), new int[] {
      14, -1, 12, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b13);

    b14 = new Block(14, "final", new PVector(1063, 323), new int[] {
      -1, -1, -1, -1
    }
    , new int[] {
      -1, -1, -1, 15
    }
    );
    blockLib.add(b14);

    b15 = new Block(15, "stair", new PVector(1163, 347), new int[] {
      -1, 16, -1, -1
    }
    , new int[] {
      -1, 17, 14, -1
    }
    );
    blockLib.add(b15);

    b16 = new Block(16, "normal", new PVector(1143, 429), new int[] {
      15, 17, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b16);

    b17 = new Block(17, "normal", new PVector(1128, 504), new int[] {
      16, 18, -1, -1
    }
    , new int[] {
      15, -1, 8, -1
    }
    );
    blockLib.add(b17);

    b18 = new Block(18, "normal", new PVector(1094, 572), new int[] {
      17, -1, 8, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b18);

    //println("the blocks for scenario 2  " + "num  " + blockLib.size() + "  \n" + blockLib);
  }


  /************************************  door level game  ****************************************/
  if (blockInitial == 4) {
    //doors
    b0 = new Block(0, "door", new PVector(753, 546), new int[] {
      -1, 21, -1, 22
    }
    , new int[] {
      -1, 20, -1, 23
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "door", new PVector(658, 227), new int[] {
      -1, 39, -1, 40
    }
    , new int[] {
      -1, 38, -1, 8
    }
    );
    blockLib.add(b1);

    //Stairs
    b2 = new Block(2, "stair", new PVector(579, 400), new int[] {
      -1, 14, -1, 15
    }
    , new int[] {
      16, 13, 3, -1
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "stair", new PVector(495, 375), new int[] {
      33, -1, -1, -1
    }
    , new int[] {
      34, -1, -1, 2
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "stair", new PVector(966, 318), new int[] {
      -1, 29, -1, -1
    }
    , new int[] {
      5, 28, -1, -1
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "stair", new PVector(900, 218), new int[] {
      -1, -1, 45, -1
    }
    , new int[] {
      -1, 4, 44, -1
    }
    );
    blockLib.add(b5);

    //yellow
    b6 = new Block(6, "yellow", new PVector(500, 654), new int[] {
      12, 11, -1, -1
    }
    , new int[] {
      13, 9, -1, -1
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "yellow", new PVector(900, 500), new int[] {
      26, 30, -1, 27
    }
    , new int[] {
      25, 31, -1, 28
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "yellow", new PVector(722, 288), new int[] {
      -1, -1, 40, 41
    }
    , new int[] {
      -1, -1, 1, 42
    }
    );
    blockLib.add(b8);

    //start
    b9 = new Block(9, "start", new PVector(460, 755), new int[] {
      11, -1, -1, -1
    }
    , new int[] {
      6, -1, -1, -1
    }
    );
    blockLib.add(b9);       

    b10 = new Block(10, "start", new PVector(980, 755), new int[] {
      32, -1, -1, -1
    }
    , new int[] {
      31, -1, -1, -1
    }
    );
    blockLib.add(b10);


    //normal
    b11 = new Block(11, "normal", new PVector(480, 700), new int[] {
      6, 9, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b11);

    b12 = new Block(12, "normal", new PVector(517, 583), new int[] {
      13, 6, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b12);

    b13 = new Block(13, "normal", new PVector(539, 497), new int[] {
      14, 12, -1, 15
    }
    , new int[] {
      2, 6, -1, -1
    }
    );
    blockLib.add(b13);

    b14 = new Block(14, "normal", new PVector(559, 448), new int[] {
      2, 13, -1, 15
    }
    , new int[] {
    }
    );
    blockLib.add(b14);

    b15 = new Block(15, "normal", new PVector(611, 446), new int[] {
      2, -1, 14, 16
    }
    , new int[] {
    }
    );
    blockLib.add(b15);

    b16 = new Block(16, "normal", new PVector(644, 483), new int[] {
      -1, 17, 15, -1
    }
    , new int[] {
      -1, 2, -1, 18
    }
    );
    blockLib.add(b16);

    b17 = new Block(17, "normal", new PVector(652, 553), new int[] {
      16, 18, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b17);

    b18 = new Block(18, "normal", new PVector(688, 610), new int[] {
      -1, -1, 17, 19
    }
    , new int[] {
      -1, -1, 16, 20
    }
    );
    blockLib.add(b18);

    b19 = new Block(19, "normal", new PVector(720, 661), new int[] {
      18, 20, -1, 21
    }
    , new int[] {
    }
    );
    blockLib.add(b19);

    b20 = new Block(20, "normal", new PVector(750, 707), new int[] {
      21, -1, 19, -1
    }
    , new int[] {
      0, -1, 18, -1
    }
    );
    blockLib.add(b20);

    b21 = new Block(21, "normal", new PVector(771, 630), new int[] {
      0, 20, 19, -1
    }
    , new int[] {
      0, -1, 18, -1
    }
    );
    blockLib.add(b21);

    b22 = new Block(22, "normal", new PVector(785, 489), new int[] {
      23, 0, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b22);

    b23 = new Block(23, "normal", new PVector(792, 422), new int[] {
      -1, 22, -1, 24
    }
    , new int[] {
      -1, 25, 0, -1
    }
    );
    blockLib.add(b23);

    b24 = new Block(24, "normal", new PVector(827, 427), new int[] {
      25, -1, 23, 26
    }
    , new int[] {
    }
    );
    blockLib.add(b24);

    b25 = new Block(25, "normal", new PVector(860, 400), new int[] {
      -1, 26, 24, -1
    }
    , new int[] {
      23, 7, -1, -1
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
      28, 7, 26, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b27);

    b28 = new Block(28, "normal", new PVector(967, 440), new int[] {
      -1, -1, 27, 29
    }
    , new int[] {
      4, -1, 7, -1
    }
    );
    blockLib.add(b28);

    b29 = new Block(29, "normal", new PVector(996, 384), new int[] {
      4, 28, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b29);

    b30 = new Block(30, "normal", new PVector(918, 550), new int[] {
      7, 31, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b30);

    b31 = new Block(31, "normal", new PVector(939, 598), new int[] {
      30, 32, -1, -1
    }
    , new int[] {
      7, 10, -1, -1
    }
    );
    blockLib.add(b31);

    b32 = new Block(32, "normal", new PVector(957, 676), new int[] {
      31, 10, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b32);

    b33 = new Block(33, "normal", new PVector(512, 296), new int[] {
      34, 3, -1, 35
    }
    , new int[] {
    }
    );
    blockLib.add(b33);

    b34 = new Block(34, "normal", new PVector(535, 218), new int[] {
      -1, 33, -1, 35
    }
    , new int[] {
      36, 3, -1, -1
    }
    );
    blockLib.add(b34);

    b35 = new Block(35, "normal", new PVector(567, 240), new int[] {
      34, -1, 33, 36
    }
    , new int[] {
    }
    );
    blockLib.add(b35);

    b36 = new Block(36, "normal", new PVector(600, 234), new int[] {
      -1, 37, 35, -1
    }
    , new int[] {
      38, 34, -1, -1
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
      39, -1, 37, -1
    }
    , new int[] {
      1, 36, -1, -1
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
      1, -1, 39, 8
    }
    , new int[] {
    }
    );
    blockLib.add(b40);

    b41 = new Block(41, "normal", new PVector(755, 320), new int[] {
      8, 42, -1, 43
    }
    , new int[] {
    }
    );
    blockLib.add(b41);

    b42 = new Block(42, "normal", new PVector(787, 353), new int[] {
      43, -1, 41, -1
    }
    , new int[] {
      46, -1, 8, 44
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
      -1, 43, -1, 45
    }
    , new int[] {
      46, -1, 42, 5
    }
    );
    blockLib.add(b44);

    b45 = new Block(45, "normal", new PVector(868, 250), new int[] {
      -1, -1, 44, 5
    }
    , new int[] {
    }
    );
    blockLib.add(b45);

    //final
    b46 = new Block(46, "final", new PVector(824, 193), new int[] {
      -1, 43, -1, -1
    }
    , new int[] {
      -1, 44, -1, 42
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
    //println("the blocks for door level  " + "num  " + blockLib.size() + "  \n" + blockLib);
    //println(doorLib);
  }




  //-----------------------------Level Mirage--------------------------------------------//  
  if (blockInitial == 5) {
    b0 = new Block(0, "door", new PVector(341, 189), new int[] {
      -1, 26, -1, -1
    }
    , new int[] {
      -1, 6, -1, -1
    }
    );
    blockLib.add(b0);

    b1 = new Block(1, "door", new PVector(386, 407), new int[] {
      -1, 34, 31, 40
    }
    , new int[] {
      -1, -1, 11, 39
    }
    );
    blockLib.add(b1);

    b2 = new Block(2, "door", new PVector(602, 423), new int[] {
      -1, 120, 49, -1
    }
    , new int[] {
      -1, 50, 48, -1
    }
    );
    blockLib.add(b2);

    b3 = new Block(3, "door", new PVector(985, 336), new int[] {
      -1, 77, 78, 93
    }
    , new int[] {
      79, 76, -1, 92
    }
    );
    blockLib.add(b3);

    b4 = new Block(4, "door", new PVector(1220, 352), new int[] {
      99, 97, 96, -1
    }
    , new int[] {
      100, -1, 95, -1
    }
    );
    blockLib.add(b4);

    b5 = new Block(5, "stair", new PVector(229, 321), new int[] {
      -1, 25, -1, -1
    }
    , new int[] {
      -1, 11, -1, 6
    }
    );
    blockLib.add(b5);

    b6 = new Block(6, "stair", new PVector(310, 271), new int[] {
      26, -1, -1, 27
    }
    , new int[] {
      0, 5, -1, 30
    }
    );
    blockLib.add(b6);

    b7 = new Block(7, "stair", new PVector(660, 470), new int[] {
      -1, 60, -1, -1
    }
    , new int[] {
      8, 121, -1, -1
    }
    );
    blockLib.add(b7);

    b8 = new Block(8, "stair", new PVector(717, 400), new int[] {
      114, -1, -1, -1
    }
    , new int[] {
      13, 7, -1, -1
    }
    );
    blockLib.add(b8);

    b9 = new Block(9, "stair", new PVector(856, 339), new int[] {
      107, 106, -1, -1
    }
    , new int[] {
      -1, 14, -1, 10
    }
    );
    blockLib.add(b9);

    b10 = new Block(10, "stair", new PVector(896, 428), new int[] {
      -1, -1, -1, 80
    }
    , new int[] {
      -1, 79, 9, -1
    }
    );
    blockLib.add(b10);

    b11 = new Block(11, "yellow", new PVector(225, 457), new int[] {
      25, -1, -1, 24
    }
    , new int[] {
      5, -1, -1, 23
    }
    );
    blockLib.add(b11);

    b12 = new Block(12, "yellow", new PVector(453, 195), new int[] {
      -1, -1, 46, 45
    }
    , new int[] {
      -1, -1, 29, 44
    }
    );
    blockLib.add(b12);


    b13 = new Block(13, "yellow", new PVector(749, 313), new int[] {
      113, 114, 115, -1
    }
    , new int[] {
      112, 8, 116, -1
    }
    );
    blockLib.add(b13);

    b14 = new Block(14, "yellow", new PVector(819, 426), new int[] {
      106, -1, -1, -1
    }
    , new int[] {
      9, -1, -1, -1
    }
    );
    blockLib.add(b14);

    b15 = new Block(15, "yellow", new PVector(865, 666), new int[] {
      67, -1, -1, 68
    }
    , new int[] {
      66, -1, -1, 70
    }
    );
    blockLib.add(b15);

    b16 = new Block(16, "yellow", new PVector(1107, 321), new int[] {
      88, 87, -1, -1
    }
    , new int[] {
      89, 86, -1, -1
    }
    );
    blockLib.add(b16);

    b17 = new Block(17, "start", new PVector(213, 731), new int[] {
      20, -1, -1, -1
    }
    , new int[] {
      21, -1, -1, -1
    }
    );
    blockLib.add(b17);

    b18 = new Block(18, "start", new PVector(1224, 731), new int[] {
      105, -1, -1, -1
    }
    , new int[] {
      104, -1, -1, -1
    }
    );
    blockLib.add(b18);

    b19 = new Block(19, "final", new PVector(690, 204), new int[] {
      -1, 117, -1, -1
    }
    , new int[] {
      -1, -1, -1, -1
    }
    );
    blockLib.add(b19);

    b20 = new Block(20, "normal", new PVector(228, 695), new int[] {
      21, 17, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b20);

    b21 = new Block(21, "normal", new PVector(247, 648), new int[] {
      22, 20, -1, -1
    }
    , new int[] {
      23, 17, -1, -1
    }
    );
    blockLib.add(b21);

    b22 = new Block(22, "normal", new PVector(264, 582), new int[] {
      23, 21, -1, 32
    }
    , new int[] {
    }
    );
    blockLib.add(b22);

    b23 = new Block(23, "normal", new PVector(283, 512), new int[] {
      -1, 22, 24, 32
    }
    , new int[] {
      33, 21, 11, -1
    }
    );
    blockLib.add(b23);

    b24 = new Block(24, "normal", new PVector(256, 485), new int[] {
      11, 23, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b24);

    b25 = new Block(25, "normal", new PVector(241, 391), new int[] {
      5, 11, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b25);

    b26 = new Block(26, "normal", new PVector(322, 232), new int[] {
      0, 6, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b26);

    b27 = new Block(27, "normal", new PVector(337, 302), new int[] {
      -1, 30, 6, 28
    }
    , new int[] {
    }
    );
    blockLib.add(b27);

    b28 = new Block(28, "normal", new PVector(380, 283), new int[] {
      29, 30, 27, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b28);

    b29 = new Block(29, "normal", new PVector(395, 244), new int[] {
      -1, 28, -1, 46
    }
    , new int[] {
      -1, 30, -1, 12
    }
    );
    blockLib.add(b29);

    b30 = new Block(30, "normal", new PVector(364, 325), new int[] {
      28, 31, 27, -1
    }
    , new int[] {
      29, 119, 6, -1
    }
    );
    blockLib.add(b30);

    b31 = new Block(31, "normal", new PVector(345, 397), new int[] {
      30, 34, 119, 1
    }
    , new int[] {
    }
    );
    blockLib.add(b31);

    b32 = new Block(32, "normal", new PVector(307, 567), new int[] {
      23, -1, 22, 33
    }
    , new int[] {
    }
    );
    blockLib.add(b32);

    b33 = new Block(33, "normal", new PVector(338, 579), new int[] {
      -1, -1, 32, -1
    }
    , new int[] {
      -1, 23, -1, -1
    }
    );
    blockLib.add(b33);

    b34 = new Block(34, "normal", new PVector(361, 443), new int[] {
      31, -1, 119, 1
    }
    , new int[] {
    }
    );
    blockLib.add(b34);

    b35 = new Block(35, "normal", new PVector(372, 693), new int[] {
      36, -1, -1, -1
    }
    , new int[] {
      118, -1, -1, -1
    }
    );
    blockLib.add(b35);

    b36 = new Block(36, "normal", new PVector(389, 648), new int[] {
      118, 35, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b36);

    b37 = new Block(37, "normal", new PVector(426, 533), new int[] {
      39, 118, -1, 38
    }
    , new int[] {
    }
    );
    blockLib.add(b37);

    b38 = new Block(38, "normal", new PVector(468, 511), new int[] {
      39, -1, 37, 51
    }
    , new int[] {
    }
    );
    blockLib.add(b38);

    b39 = new Block(39, "normal", new PVector(444, 462), new int[] {
      41, 37, 40, 38
    }
    , new int[] {
      42, 118, 1, -1
    }
    );
    blockLib.add(b39);

    b40 = new Block(40, "normal", new PVector(415, 437), new int[] {
      -1, 39, 1, 41
    }
    , new int[] {
    }
    );
    blockLib.add(b40);

    b41 = new Block(41, "normal", new PVector(460, 396), new int[] {
      42, 39, 40, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b41);

    b42 = new Block(42, "normal", new PVector(475, 327), new int[] {
      43, 41, -1, 47
    }
    , new int[] {
      44, 39, -1, -1
    }
    );
    blockLib.add(b42);

    b43 = new Block(43, "normal", new PVector(493, 287), new int[] {
      44, 42, -1, 47
    }
    , new int[] {
    }
    );
    blockLib.add(b43);

    b44 = new Block(44, "normal", new PVector(511, 242), new int[] {
      -1, 43, 45, 47
    }
    , new int[] {
      48, 42, 12, -1
    }
    );
    blockLib.add(b44);

    b45 = new Block(45, "normal", new PVector(484, 218), new int[] {
      -1, -1, 12, 44
    }
    , new int[] {
    }
    );
    blockLib.add(b45);

    b46 = new Block(46, "normal", new PVector(424, 218), new int[] {
      12, -1, 29, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b46);

    b47 = new Block(47, "normal", new PVector(533, 301), new int[] {
      44, -1, 43, 48
    }
    , new int[] {
    }
    );
    blockLib.add(b47);

    b48 = new Block(48, "normal", new PVector(566, 310), new int[] {
      -1, 49, 47, -1
    }
    , new int[] {
      -1, 44, -1, 2
    }
    );
    blockLib.add(b48);

    b49 = new Block(49, "normal", new PVector(577, 371), new int[] {
      48, 2, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b49);

    b50 = new Block(50, "normal", new PVector(570, 502), new int[] {
      120, 53, -1, -1
    }
    , new int[] {
      2, 54, -1, -1
    }
    );
    blockLib.add(b50);

    b51 = new Block(51, "normal", new PVector(495, 529), new int[] {
      -1, 52, 38, -1
    }
    , new int[] {
      -1, -1, -1, 54
    }
    );
    blockLib.add(b51);


    b52 = new Block(52, "normal", new PVector(509, 562), new int[] {
      51, 54, -1, 53
    }
    , new int[] {
    }
    );
    blockLib.add(b52);

    b53 = new Block(53, "normal", new PVector(552, 546), new int[] {
      50, 54, 52, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b53);

    b54 = new Block(54, "normal", new PVector(534, 588), new int[] {
      53, 55, 52, -1
    }
    , new int[] {
      50, -1, 51, 56
    }
    );
    blockLib.add(b54);

    b55 = new Block(55, "normal", new PVector(564, 641), new int[] {
      54, 56, -1, 57
    }
    , new int[] {
    }
    );
    blockLib.add(b55);

    b56 = new Block(56, "normal", new PVector(593, 695), new int[] {
      57, -1, 55, -1
    }
    , new int[] {
      121, -1, 54, -1
    }
    );
    blockLib.add(b56);

    b57 = new Block(57, "normal", new PVector(609, 625), new int[] {
      121, 56, 55, 58
    }
    , new int[] {
    }
    );
    blockLib.add(b57);

    b58 = new Block(58, "normal", new PVector(657, 585), new int[] {
      121, 59, 57, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b58);

    b59 = new Block(59, "normal", new PVector(682, 610), new int[] {
      -1, -1, 58, 61
    }
    , new int[] {
      -1, -1, 121, 62
    }
    );
    blockLib.add(b59);

    b60 = new Block(60, "normal", new PVector(644, 516), new int[] {
      7, 121, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b60);

    b61 = new Block(61, "normal", new PVector(720, 549), new int[] {
      -1, -1, 59, 62
    }
    , new int[] {
    }
    );
    blockLib.add(b61);

    b62 = new Block(62, "normal", new PVector(753, 474), new int[] {
      -1, -1, 61, 63
    }
    , new int[] {
      -1, -1, 59, 64
    }
    );
    blockLib.add(b62);

    b63 = new Block(63, "normal", new PVector(784, 506), new int[] {
      -1, -1, 62, 64
    }
    , new int[] {
    }
    );
    blockLib.add(b63);

    b64 = new Block(64, "normal", new PVector(812, 528), new int[] {
      -1, -1, 63, 65
    }
    , new int[] {
      -1, -1, 62, 65
    }
    );
    blockLib.add(b64);

    b65 = new Block(65, "normal", new PVector(842, 556), new int[] {
      -1, -1, 64, 66
    }
    , new int[] {
    }
    );
    blockLib.add(b65);

    b66 = new Block(66, "normal", new PVector(869, 581), new int[] {
      -1, 67, 65, -1
    }
    , new int[] {
      -1, 15, 64, -1
    }
    );
    blockLib.add(b66);

    b67 = new Block(67, "normal", new PVector(851, 625), new int[] {
      66, 15, -1, 68
    }
    , new int[] {
    }
    );
    blockLib.add(b67);

    b68 = new Block(68, "normal", new PVector(895, 639), new int[] {
      -1, 15, 67, 70
    }
    , new int[] {
    }
    );
    blockLib.add(b68);

    b69 = new Block(69, "normal", new PVector(1048, 288), new int[] {
      91, -1, 92, 90
    }
    , new int[] {
    }
    );
    blockLib.add(b69);

    b70 = new Block(70, "normal", new PVector(923, 610), new int[] {
      -1, -1, 68, 71
    }
    , new int[] {
      -1, -1, 15, 73
    }
    );
    blockLib.add(b70);

    b71 = new Block(71, "normal", new PVector(952, 589), new int[] {
      73, -1, 70, 72
    }
    , new int[] {
    }
    );
    blockLib.add(b71);

    b72 = new Block(72, "normal", new PVector(998, 628), new int[] {
      73, 74, 71, 81
    }
    , new int[] {
    }
    );
    blockLib.add(b72);

    b73 = new Block(73, "normal", new PVector(981, 557), new int[] {
      75, 72, 71, -1
    }
    , new int[] {
      76, 74, 70, -1
    }
    );
    blockLib.add(b73);

    b74 = new Block(74, "normal", new PVector(993, 690), new int[] {
      72, 81, -1, 82
    }
    , new int[] {
      73, 82, -1, -1
    }
    );
    blockLib.add(b74);

    b75 = new Block(75, "normal", new PVector(964, 523), new int[] {
      76, 73, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b75);

    b76 = new Block(76, "normal", new PVector(983, 475), new int[] {
      77, 75, -1, -1
    }
    , new int[] {
      3, 73, -1, -1
    }
    );
    blockLib.add(b76);

    b77 = new Block(77, "normal", new PVector(999, 406), new int[] {
      3, 76, 78, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b77);

    b78 = new Block(78, "normal", new PVector(954, 385), new int[] {
      3, 80, 79, 77
    }
    , new int[] {
    }
    );
    blockLib.add(b78);

    b79 = new Block(79, "normal", new PVector(925, 409), new int[] {
      -1, 80, -1, 78
    }
    , new int[] {
      10, 3, -1, -1
    }
    );
    blockLib.add(b79);

    b80 = new Block(80, "normal", new PVector(924, 441), new int[] {
      79, -1, 10, 78
    }
    , new int[] {
    }
    );
    blockLib.add(b80);

    b81 = new Block(81, "normal", new PVector(1029, 697), new int[] {
      72, -1, 74, 82
    }
    , new int[] {
    }
    );
    blockLib.add(b81);

    b82 = new Block(82, "normal", new PVector(1045, 673), new int[] {
      -1, 81, 72, 83
    }
    , new int[] {
      74, -1, -1, 84
    }
    );
    blockLib.add(b82);

    b83 = new Block(83, "normal", new PVector(1076, 623), new int[] {
      -1, -1, 82, 84
    }
    , new int[] {
    }
    );
    blockLib.add(b83);

    b84 = new Block(84, "normal", new PVector(1104, 564), new int[] {
      85, -1, 83, 101
    }
    , new int[] {
      -1, -1, 82, 102
    }
    );
    blockLib.add(b84);

    b85 = new Block(85, "normal", new PVector(1090, 506), new int[] {
      86, 84, -1, 101
    }
    , new int[] {
    }
    );
    blockLib.add(b85);

    b86 = new Block(86, "normal", new PVector(1105, 459), new int[] {
      87, 85, -1, 94
    }
    , new int[] {
      16, -1, -1, 95
    }
    );
    blockLib.add(b86);

    b87 = new Block(87, "normal", new PVector(1087, 392), new int[] {
      16, 86, -1, 94
    }
    , new int[] {
    }
    );
    blockLib.add(b87);

    b88 = new Block(88, "normal", new PVector(1122, 254), new int[] {
      89, 16, 90, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b88);

    b89 = new Block(89, "normal", new PVector(1107, 184), new int[] {
      -1, 88, 90, -1
    }
    , new int[] {
      91, 16, -1, -1
    }
    );
    blockLib.add(b89);

    b90 = new Block(90, "normal", new PVector(1079, 235), new int[] {
      89, 69, 91, 88
    }
    , new int[] {
    }
    );
    blockLib.add(b90);

    b91 = new Block(91, "normal", new PVector(1051, 256), new int[] {
      -1, 69, -1, 90
    }
    , new int[] {
      92, 89, -1, -1
    }
    );
    blockLib.add(b91);  

    b92 = new Block(92, "normal", new PVector(1019, 278), new int[] {
      -1, 93, -1, 69
    }
    , new int[] {
      -1, 91, 3, -1
    }
    );
    blockLib.add(b92); 

    b93 = new Block(93, "normal", new PVector(1010, 311), new int[] {
      -1, -1, 3, 92
    }
    , new int[] {
    }
    );
    blockLib.add(b93); 

    b94 = new Block(94, "normal", new PVector(1131, 436), new int[] {
      87, -1, 86, 95
    }
    , new int[] {
    }
    );
    blockLib.add(b94); 

    b95 = new Block(95, "normal", new PVector(1160, 406), new int[] {
      96, -1, 94, 97
    }
    , new int[] {
      -1, -1, 86, 4
    }
    );
    blockLib.add(b95); 

    b96 = new Block(96, "normal", new PVector(1188, 382), new int[] {
      4, -1, 95, 97
    }
    , new int[] {
    }
    );
    blockLib.add(b96); 

    b97 = new Block(97, "normal", new PVector(1215, 430), new int[] {
      96, 98, 95, 4
    }
    , new int[] {
    }
    );
    blockLib.add(b97); 

    b98 = new Block(98, "normal", new PVector(1220, 464), new int[] {
      97, -1, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b98);

    b99 = new Block(99, "normal", new PVector(1201, 311), new int[] {
      100, 4, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b99); 

    b100 = new Block(100, "normal", new PVector(1219, 274), new int[] {
      -1, 99, -1, -1
    }
    , new int[] {
      -1, 4, -1, -1
    }
    );
    blockLib.add(b100); 

    b101 = new Block(101, "normal", new PVector(1131, 542), new int[] {
      102, 84, 85, 103
    }
    , new int[] {
    }
    );
    blockLib.add(b101); 

    b102 = new Block(102, "normal", new PVector(1161, 512), new int[] {
      -1, 103, 101, -1
    }
    , new int[] {
      -1, 104, 84, -1
    }
    );
    blockLib.add(b102); 

    b103 = new Block(103, "normal", new PVector(1177, 556), new int[] {
      102, 104, 101, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b103); 

    b104 = new Block(104, "normal", new PVector(1194, 596), new int[] {
      103, 105, -1, -1
    }
    , new int[] {
      102, 18, -1, -1
    }
    );
    blockLib.add(b104); 

    b105 = new Block(105, "normal", new PVector(1210, 665), new int[] {
      104, 18, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b105); 

    b106 = new Block(106, "normal", new PVector(835, 391), new int[] {
      9, 14, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b106); 

    b107 = new Block(107, "normal", new PVector(875, 313), new int[] {
      108, 9, 109, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b107); 

    b108 = new Block(108, "normal", new PVector(871, 282), new int[] {
      -1, 107, 109, -1
    }
    , new int[] {
      -1, 110, -1, -1
    }
    );
    blockLib.add(b108);

    b109 = new Block(109, "normal", new PVector(836, 262), new int[] {
      110, 107, 111, 108
    }
    , new int[] {
    }
    );
    blockLib.add(b109); 

    b110 = new Block(110, "normal", new PVector(837, 210), new int[] {
      -1, 109, 111, -1
    }
    , new int[] {
      108, 112, -1, -1
    }
    );
    blockLib.add(b110); 

    b111 = new Block(111, "normal", new PVector(810, 212), new int[] {
      112, 109, 113, 110
    }
    , new int[] {
    }
    );
    blockLib.add(b111);

    b112 = new Block(112, "normal", new PVector(784, 175), new int[] {
      -1, 113, -1, 111
    }
    , new int[] {
      110, 13, -1, -1
    }
    );
    blockLib.add(b112); 

    b113 = new Block(113, "normal", new PVector(765, 245), new int[] {
      112, 13, 115, 111
    }
    , new int[] {
    }
    );
    blockLib.add(b113); 

    b114 = new Block(114, "normal", new PVector(730, 360), new int[] {
      13, 8, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b114); 

    b115 = new Block(115, "normal", new PVector(723, 287), new int[] {
      -1, 13, 116, 113
    }
    , new int[] {
    }
    );
    blockLib.add(b115);

    b116 = new Block(116, "normal", new PVector(692, 257), new int[] {
      -1, -1, 117, 115
    }
    , new int[] {
      -1, -1, -1, 13
    }
    );
    blockLib.add(b116);

    b117 = new Block(117, "normal", new PVector(664, 244), new int[] {
      19, 116, -1, -1
    }
    , new int[] {
    }
    );
    blockLib.add(b117);

    b118 = new Block(118, "normal", new PVector(411, 601), new int[] {
      37, 36, -1, -1
    }
    , new int[] {
      39, 35, -1, -1
    }
    );
    blockLib.add(b118);

    b119 = new Block(119, "normal", new PVector(322, 466), new int[] {
      31, -1, 34, -1
    }
    , new int[] {
      30, -1, -1, 1
    }
    );
    blockLib.add(b119);

    b120 = new Block(120, "normal", new PVector(587, 466), new int[] {
      2, 50, -1, -1
    }
    , new int[] {
      -1, -1, -1, -1
    }
    );
    blockLib.add(b120);

    b121 = new Block(121, "normal", new PVector(627, 559), new int[] {
      60, 57, -1, 58
    }
    , new int[] {
      7, 56, -1, 59
    }
    );
    blockLib.add(b121);

    dDoor0 = new drawDoor(new int[] {
      294, 207, 329, 175, 331, 175, 331, 152, 358, 152, 358, 175, 386, 175, 351, 207, 294, 207
    }
    );
    doorLib.add(dDoor0);

    dDoor1 = new drawDoor(new int[] {
      340, 427, 373, 395, 376, 395, 376, 372, 403, 372, 403, 395, 431, 395, 397, 427, 340, 427
    }
    );
    doorLib.add(dDoor1);

    dDoor2 = new drawDoor(new int[] {
      558, 439, 593, 407, 593, 384, 619, 384, 619, 407, 650, 407, 615, 439, 558, 439
    }
    );
    doorLib.add(dDoor2);

    dDoor3 = new drawDoor(new int[] {
      971, 353, 936, 323, 965, 323, 965, 299, 991, 299, 991, 323, 995, 323, 1027, 352, 971, 353
    }
    );
    doorLib.add(dDoor3);

    dDoor4 = new drawDoor(new int[] {
      1205, 371, 1172, 341, 1201, 341, 1201, 318, 1228, 318, 1228, 341, 1230, 341, 1262, 371, 1205, 371
    }
    );
    doorLib.add(dDoor4);
    //println("the blocks for Mirage Level  " + "num  " + blockLib.size() + "  \n" + blockLib);
    //println(doorLib);
  }
}



