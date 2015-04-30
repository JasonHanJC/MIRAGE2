void drawArrow(Player p) {
  if (p.name == "A") {   //player A
    if (p.gameDimen == 2) {  //2d
      if (p.currentBlock.aviBloc2d[0] != 100 && p.currentBlock.aviBloc2d[0] != last2StepA[0]) {
        drawUp(blockLib.get(p.currentBlock.aviBloc2d[0]).center);
      }
      if (p.currentBlock.aviBloc2d[1] != 100 && p.currentBlock.aviBloc2d[1] != last2StepA[0]) {
        drawDown(blockLib.get(p.currentBlock.aviBloc2d[1]).center);
      }
      if (p.currentBlock.aviBloc2d[2] != 100 && p.currentBlock.aviBloc2d[2] != last2StepA[0]) {
        drawLeft(blockLib.get(p.currentBlock.aviBloc2d[2]).center);
      }
      if (p.currentBlock.aviBloc2d[3] != 100 && p.currentBlock.aviBloc2d[3] != last2StepA[0]) {
        drawRight(blockLib.get(p.currentBlock.aviBloc2d[3]).center);
      }
    } else {  //3d
      if (p.currentBlock.aviBloc3d[0] != 100 && p.currentBlock.aviBloc3d[0] != last2StepA[0]) {
        drawUp(blockLib.get(p.currentBlock.aviBloc3d[0]).center);
      }
      if (p.currentBlock.aviBloc3d[1] != 100 && p.currentBlock.aviBloc3d[1] != last2StepA[0]) {
        drawDown(blockLib.get(p.currentBlock.aviBloc3d[1]).center);
      }
      if (p.currentBlock.aviBloc3d[2] != 100 && p.currentBlock.aviBloc3d[2] != last2StepA[0]) {
        drawLeft(blockLib.get(p.currentBlock.aviBloc3d[2]).center);
      }
      if (p.currentBlock.aviBloc3d[3] != 100 && p.currentBlock.aviBloc3d[3] != last2StepA[0]) {
        drawRight(blockLib.get(p.currentBlock.aviBloc3d[3]).center);
      }
    }
  } else {  // player B
  if (p.gameDimen == 2) {  //2d
      if (p.currentBlock.aviBloc2d[0] != 100 && p.currentBlock.aviBloc2d[0] != last2StepB[0]) {
        drawUp(blockLib.get(p.currentBlock.aviBloc2d[0]).center);
      }
      if (p.currentBlock.aviBloc2d[1] != 100 && p.currentBlock.aviBloc2d[1] != last2StepB[0]) {
        drawDown(blockLib.get(p.currentBlock.aviBloc2d[1]).center);
      }
      if (p.currentBlock.aviBloc2d[2] != 100 && p.currentBlock.aviBloc2d[2] != last2StepB[0]) {
        drawLeft(blockLib.get(p.currentBlock.aviBloc2d[2]).center);
      }
      if (p.currentBlock.aviBloc2d[3] != 100 && p.currentBlock.aviBloc2d[3] != last2StepB[0]) {
        drawRight(blockLib.get(p.currentBlock.aviBloc2d[3]).center);
      }
    } else {  //3d
      if (p.currentBlock.aviBloc3d[0] != 100 && p.currentBlock.aviBloc3d[0] != last2StepB[0]) {
        drawUp(blockLib.get(p.currentBlock.aviBloc3d[0]).center);
      }
      if (p.currentBlock.aviBloc3d[1] != 100 && p.currentBlock.aviBloc3d[1] != last2StepB[0]) {
        drawDown(blockLib.get(p.currentBlock.aviBloc3d[1]).center);
      }
      if (p.currentBlock.aviBloc3d[2] != 100 && p.currentBlock.aviBloc3d[2] != last2StepB[0]) {
        drawLeft(blockLib.get(p.currentBlock.aviBloc3d[2]).center);
      }
      if (p.currentBlock.aviBloc3d[3] != 100 && p.currentBlock.aviBloc3d[3] != last2StepB[0]) {
        drawRight(blockLib.get(p.currentBlock.aviBloc3d[3]).center);
      }
    }
  
  }
}

void drawUp(PVector v) {
  noStroke();
  fill(255, 255, 255, 90);
  beginShape();
  vertex(v.x-4, v.y);
  vertex(v.x-10, v.y);
  vertex(v.x, v.y-18);
  vertex(v.x+10, v.y);
  vertex(v.x+4, v.y);
  vertex(v.x+4, v.y+8);
  vertex(v.x-4, v.y+8);
  vertex(v.x-4, v.y);
  endShape();
}

void drawDown(PVector v) {
  noStroke();
  fill(255, 255, 255, 90);
  beginShape();
  vertex(v.x-4, v.y);
  vertex(v.x-10, v.y);
  vertex(v.x, v.y+18);
  vertex(v.x+10, v.y);
  vertex(v.x+4, v.y);
  vertex(v.x+4, v.y-8);
  vertex(v.x-4, v.y-8);
  vertex(v.x-4, v.y);
  endShape();
}
void drawLeft(PVector v) {
  noStroke();
  fill(255, 255, 255, 90);
  beginShape();
  vertex(v.x, v.y+4);
  vertex(v.x, v.y+10);
  vertex(v.x-18, v.y);
  vertex(v.x, v.y-10);
  vertex(v.x, v.y-4);
  vertex(v.x+8, v.y-4);
  vertex(v.x+8, v.y+4);
  vertex(v.x, v.y+4);
  endShape();
}
void drawRight(PVector v) {
  noStroke();
  fill(255, 255, 255, 90);
  beginShape();  
  vertex(v.x, v.y+4);
  vertex(v.x, v.y+10);
  vertex(v.x+18, v.y);
  vertex(v.x, v.y-10);
  vertex(v.x, v.y-4);
  vertex(v.x-8, v.y-4);
  vertex(v.x-8, v.y+4);
  vertex(v.x, v.y+4);
  endShape();
}

