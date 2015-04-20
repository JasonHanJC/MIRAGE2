class Player {
  String name;
  boolean myTurn;
  int gameDimen;
  Block currentBlock;

  Player(String name, boolean myTurn, int gameDimen, Block currentBlock) {
    this.name = name;
    this.myTurn = myTurn;
    this.gameDimen = gameDimen;
    this.currentBlock = currentBlock;
  }

  void setDimen(int d) {
    gameDimen = d;
  }

  void setMyTurn(boolean m) {
    myTurn = m;
  }

  void setCurrentBlock(Block b) {
    currentBlock = b;
  }

  boolean isAtYellow() {
    if (currentBlock.name == "yellow") 
      return true;
    return false;
  }

  boolean isAtDoor() {
    if (currentBlock.name == "door") 
      return true;
    return false;
  }

  boolean isAtStair() {
    if (currentBlock.name == "stair") 
      return true;
    return false;
  }

  boolean isAtFinal() {
    if (currentBlock.name == "final") 
      return true;
    return false;
  }
}

