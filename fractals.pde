float radios = 300;
int divisions = 120;
float divAngle = TWO_PI / divisions;
float angleOffset = 0; // Variable to control rotation
boolean increasing = true; // Flag to control the direction of rotation
boolean animationRunning = true; // Flag to control whether the animation should continue or not

void setup() {
  size(700, 700);
}

void draw() {
  background(20);
  translate(width/2, height/2);
  noFill();
  stroke(255);
  circle(0, 0, radios * 2);
  
  if (animationRunning) {
    if (increasing) {
      angleOffset += 0.01; // Increment the angle offset
      if (angleOffset >= 15) {
        increasing = false; // Switch direction when reaching the upper limit
      }
    } else {
      angleOffset -= 0.01; // Decrement the angle offset
      if (angleOffset < 0) {
        angleOffset = 0; // Set angleOffset to 0 to stop rotation
        animationRunning = false; // Stop the animation when angleOffset goes below 0
      }
    }
  }
  
  for (int i = 0; i < divisions; i++) {
    float x = i;
    float y = x * angleOffset; // Use angle offset to control the angle of rotation
    PVector startPos = xyPosition(x);
    PVector endPos = xyPosition(y);
    line(startPos.x, startPos.y, endPos.x, endPos.y);
  }
}

PVector xyPosition(float i) {
  float x = cos(divAngle * i) * radios;
  float y = sin(divAngle * i) * radios;
  return new PVector(x, y);
}
