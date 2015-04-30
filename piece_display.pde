void pieceDisplay() {
  //display A
  if(playerA.myTurn == true){
      image(pieceRspin, playerA.currentBlock.center.x, playerA.currentBlock.center.y-30, 35, 60);
      pieceRspin.play();
      }else{ 
      image(pieceR, playerA.currentBlock.center.x, playerA.currentBlock.center.y-25, 35, 50);
      //rspin.stop();
      }
   
   if(playerB.myTurn == true){
      image(pieceYspin, playerB.currentBlock.center.x, playerB.currentBlock.center.y-30, 35, 60);
      pieceYspin.play();
      }else{ 
      image(pieceY, playerB.currentBlock.center.x, playerB.currentBlock.center.y-25, 35, 50);
      //yspin.stop();
      }
}

