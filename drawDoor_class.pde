class drawDoor {
  private int[] doorVertex;

  drawDoor(int[] dv) {
    this.doorVertex = dv;
  }

  //draw the frame of the door
  void drawDoor() {
    strokeWeight(3);
    stroke(#FFC30E);
    fill(#FFC30E, 80);
    beginShape();
    for (int i = 0; i < doorVertex.length; i = i + 2) {
      vertex(this.doorVertex[i], this.doorVertex[i+1]);
    }
    endShape();
  }
}

