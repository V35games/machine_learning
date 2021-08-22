class Obstacle {
  PVector pos;
  int height;
  int width;
  Triplet colour;
  
  Obstacle(Tuple t, int h, int w, Triplet col) {
    pos = new PVector(t.getValue0(), t.getValue1());
    height = h;
    width = w;
    colour = col;
    drawObstacle();
  }
  
  void drawObstacle() {
    fill(colour.getValue0(), colour.getValue1(), colour.getValue2());
    rect(pos.x, pos.y, width, height);
  }
  
  boolean inBounds(PVector pos_dot) {
    if ((pos.x <= pos_dot.x  && pos_dot.x <= (pos.x + width)) && (pos.y <= pos_dot.y && pos_dot.y <= (pos.y + height))) {
      return true;
    }
    return false;
  }
  
}
