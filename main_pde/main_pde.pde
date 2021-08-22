PVector goal = new PVector(400, 10);
Population test;



void setup() {
  size(800, 800); //size of the window
  frameRate(500);//increase this to make the dots go faster
  test = new Population(1000);//create a new population with 1000 members
}


void draw() { 
  background(255);

  //draw goal
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //draw obstacles
  Obstacle ob1 = new Obstacle(new Tuple(0, 300), 10, 600, new Triplet(0, 0, 255));
  Obstacle ob2 = new Obstacle(new Tuple(200, 400), 10, 600, new Triplet(0, 0, 255));
  Obstacle ob3 = new Obstacle(new Tuple(0, 790), 10, 1000, new Triplet(0, 0, 255));
  Obstacle ob4 = new Obstacle(new Tuple(0, 300), 1000, 10, new Triplet(0, 0, 255));
  Obstacle ob5 = new Obstacle(new Tuple(790, 400), 1000, 10, new Triplet(0, 0, 255));
  Obstacle ob6 = new Obstacle(new Tuple(0, 600), 10, 600, new Triplet(0, 0, 255));
  ArrayList<Obstacle> obs = new ArrayList<Obstacle>();
  obs.add(ob1);
  obs.add(ob2);
  obs.add(ob3);
  obs.add(ob4);
  obs.add(ob5);
  obs.add(ob6);

  //draw points
  Point p1 = new Point(new Tuple(0, 300), 10, 600, new Triplet(0, 255, 0), 5);
  ArrayList<Point> points = new ArrayList<Point>();
  
  if (test.allDotsDead()) {
    //genetic algorithm
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    //if any of the dots are still alive then update and then show them

    test.update(obs);
    test.show();
  }
}
