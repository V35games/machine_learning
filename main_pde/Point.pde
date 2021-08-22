class Point extends Obstacle {
  float size;
  
  Point(Tuple t, float h, float w, Triplet col, float s) {
    super(t, h, w, col);
    size = s;
    drawPoint();
  }
  
  void drawPoint(){
    fill(colour.getValue0(), colour.getValue1(), colour.getValue2());
    circle(pos.x, pos.y, size);
  }
  
  boolean inBounds(PVector pos_dot) {
    if ((pos.x <= pos_dot.x  && pos_dot.x <= (pos.x + size)) && (pos.y <= pos_dot.y && pos_dot.y <= (pos.y + size))) {
      return true;
    }
    return false;
  }
}
