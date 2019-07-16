float m = 1;
float b = 0;
float[][] points = {{100, 101}, {200, 200}};

void setup() {
  size(1000, 800);
  
  m = 1;
  b = 0;
}

void draw() {
  gradientDescent();
}

void gradientDescent() {
  float LEARNING_RATE = 0.0005;
  
  for (int i = 0; i < points.length; i++) {
    float x = points[i][0];
    float y = points[i][1];
    float guess = m * x + b;
    //println(i, guess, m, b);
    
    float error = y - guess;
    println(error * x * LEARNING_RATE);
    m += error * x * LEARNING_RATE;
    b += error * LEARNING_RATE;
  }
  
  //println("m" + m);
}
