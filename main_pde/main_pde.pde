PVector goal = new PVector(400, 10);
Population test;



void setup() {
  size(800, 800); //size of the window
  frameRate(165);//increase this to make the dots go faster
  test = new Population(1000);//create a new population with 1000 members
}


void draw() { 
  background(255);

  //draw goal
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //draw obstacles
  Obstacle ob1 = new Obstacle(new Tuple(0, 300), 10, 600, new Triplet(0, 0, 255));
  Obstacle ob2 = new Obstacle(new Tuple(200, 400), 10, 600, new Triplet(0, 255, 0));
  ArrayList<Obstacle> obs = new ArrayList<Obstacle>();
  obs.add(ob1);
  obs.add(ob2);

  
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
