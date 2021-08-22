class Triplet extends Tuple {
  int val3;
  
  Triplet(int v1, int v2, int v3) {
    super(v1, v2);
    val3 = v3;
  }
  
  int getValue2(){
    return val3;
  }
  
}
