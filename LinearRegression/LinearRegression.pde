ArrayList<PVector> points;

void setup() {
  size(1000, 800);
  
  points = new ArrayList<PVector>();
}

void draw() {
  background(230, 242, 255);
  showLine();
  showPoints();
}

void mouseClicked() {
  points.add(new PVector(mouseX, mouseY));
}

void keyReleased() {
  // Reset button
  if (key == 'r') {
    print(true);
    points.clear();
  }
}

//***************************************

void showPoints() {
  stroke(0);
  fill(0);
  
  for (int i = 0; i < points.size(); i++)
    circle(points.get(i).x, points.get(i).y, 10);
}

void showLine() {
  if (points.size() >= 2) {
    stroke(200);
    strokeWeight(5);
    line(points.get(0).x, points.get(0).y, points.get(1).x, points.get(1).y);
  }
}
