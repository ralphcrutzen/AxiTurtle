boolean currentPenDown = false;
float currentX = 0;
float currentY = 0;
float currentAngle = 0.0; // facing right

// Pen commands
void penUp() {
  currentPenDown = false;
  println("pen up");
  ToDoList = (PVector[]) append(ToDoList, new PVector(-30, 0)); //Command 30 (raise pen)
}
void u() {
  penUp();
}

void penDown() {
  currentPenDown = true;
  println("pen down");
  ToDoList = (PVector[]) append(ToDoList, new PVector(-31, 0)); //Command 31 (lower pen)
}
void d() {
  penDown();
}

// Relative move
void moveForward(float distance) {
  currentX += distance * cos(currentAngle * 2 * PI);
  currentY += distance * sin(currentAngle * 2 * PI);
  println("move forward by " + distance + " to " + currentX + ", " + currentY);
  ToDoList = (PVector[]) append(ToDoList, new PVector(currentX + MousePaperLeft, currentY + MousePaperTop));
}
void f(float distance) {
  moveForward(distance);
}

// Angles for turn commands are 0.0 to 1.0
// turnRight(1/4);        // Turn right 90º
// turnLeft(1/360);       // Turn left 1º

// Relative turns
void turnLeft(float angle) {
  currentAngle -= angle;
  while(currentAngle < 0) currentAngle += 1;
  println("turn left by " + angle + " to " + currentAngle);
}
void l(float angle) {
  turnLeft(angle);
}

void turnRight(float angle) {
  currentAngle += angle;
  while(currentAngle >= 1) currentAngle -= 1;
  println("turn right by " + angle + " to " + currentAngle);
}
void r(float angle) {
  turnRight(angle);
}


// Absolute turns
void turnTo(float angle) {
  currentAngle = angle;
  println("turn to " + angle);
}
void t(float angle) {
  turnTo(angle);
}

// SVG move (pen not drawing) and line (drawing)

// Relative
void moveBy(float x, float y) {
  currentX += x;
  currentY += y;
  penUp();
  println("move by " + x + ", " + y + " to " + currentX + ", " + currentY);
  ToDoList = (PVector[]) append(ToDoList, new PVector(currentX + MousePaperLeft, currentY + MousePaperTop));
}

void lineBy(float x, float y) {
  currentX += x;
  currentY += y;
  penDown();
  println("line by " + x + ", " + y + " to " + currentX + ", " + currentY);
  ToDoList = (PVector[]) append(ToDoList, new PVector(currentX + MousePaperLeft, currentY + MousePaperTop)); 
}

// Absolute
void moveTo(float x, float y) {
  currentX = x;
  currentY = y;
  penUp();
  println("move to " + x + ", " + y);
  ToDoList = (PVector[]) append(ToDoList, new PVector(currentX + MousePaperLeft, currentY + MousePaperTop));
}

void lineTo(float x, float y) {
  currentX = x;
  currentY = y;
  penDown();
  println("line to " + x + ", " + y);
  ToDoList = (PVector[]) append(ToDoList, new PVector(currentX + MousePaperLeft, currentY + MousePaperTop));
}

void line(float x1, float y1, float x2, float y2) {
  println("line from " + x1 + ", " + y1 + " to " + x2 + ", " + y2);
  moveTo(x1, y1);
  lineTo(x2, y2);
}
