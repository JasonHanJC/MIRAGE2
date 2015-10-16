public class Block {
  //every block has its own name
  private int num;
  //the center location of the block, use to loc the pieces
  private PVector center;
  //store the block adjacent to the current block by num, and some blocks have no aviBloc2d
  //and in the array the [up, down, left, right], 0 means null block
  private int[] aviBloc2d;
  private int[] aviBloc3d;
  //normal, yellow, door, stair
  private String name;

  Block(int num, String name, PVector c, int[] a, int[] b) {
    this.num = num;
    this.name = name;
    this.center = c;
    this.aviBloc2d = a;
    this.aviBloc3d = b;
  }

  void setNum(int n) {
    this.num = n;
  }

  int getNum() {
    return num;
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  void setCenter(PVector c) {
    this.center = c;
  }

  PVector getCenter() {
    return center;
  }
}

