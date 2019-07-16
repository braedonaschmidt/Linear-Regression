/*ArrayList<PVector> points;
float xAvg = 0;
float yAvg = 0;
float m = 1;
float b = 0;

void setup() {
  size(1000, 800);
  
  points = new ArrayList<PVector>();
  m = 1;
  b = 0;
}

void draw() {
    //calcLine();
    //gradientDescent();
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
    points.clear();
  }
}

//*****************************************************************************************************

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
    
    float x1 = 0;
    float y1 = b;
    float x2 = -b / m;
    float y2 = 0;
    
    if (y1 < 0) {
      x1 = width;
      y1 = m * width + b;
    }
    else if (x2 < 0) {
      x2 = (height - b) / m;
      y2 = height;
    }
    
    line(x1, y1, x2, y2);
    delay(1000);
    //println(x1, y1, x2, y2);
    gradientDescent();
  }
  
}

void gradientDescent() {
  float LEARNING_RATE = 0.05;
  
  for (int i = 0; i < points.size(); i++) {
    float x = points.get(i).x;
    float y = points.get(i).y;
    float guess = m * x + b;
    //println(i, guess, m, b);
    
    float error = y - guess;
    println(error);
    m += error * x * LEARNING_RATE;
    b += error * LEARNING_RATE;
  }
  
  //println("m" + m);
}

void calcLine() {
  xAvg = 0;
  yAvg = 0;
  m = 0;
  b = 0;
  
  for (int i = 0; i < points.size(); i++) {
    xAvg += points.get(i).x;
    yAvg += points.get(i).y;
  }
  
  xAvg /= points.size();
  yAvg /= points.size();
  
  float num = 0;
  float den = 0;
  
  // Calculate slope using Ordinary Least Squares method
  for (int i = 0; i < points.size(); i++) {
    float x = points.get(i).x;
    float y = points.get(i).y;
    num += (x - xAvg) * (y - yAvg);
    den += pow((x - xAvg), 2);
  }
  m = num / den;
  
  b = yAvg - m * xAvg;
}*/
