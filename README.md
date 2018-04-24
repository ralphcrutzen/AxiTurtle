# AxiTurtle

An easy way to program AxiDraw and preview your drawing.
Including turtle graphics commands!

Requirements to run application:
* Sun Java Runtime 6, installed on your system

Additional requirements to run from source code:
* Processing 3 (Download from: http://processing.org/download/  )
* Ani library ( http://www.looksgood.de/libraries/Ani/ )

Based on EvilMadScientist's AxiGen example, hiding it's complexity,
but providing an easy (turtle graphics) programming interface.
https://github.com/evil-mad/AxiDraw-Processing

Based RoboPaint RT: 
https://github.com/evil-mad/robopaint-rt

Turtle graphics commands are based on "Laser Turtle":
https://forresto.github.io/turtle-svg/
 
The turtle starts in the upper left corner facing right.
Angles: 0 is right, 1/4 is up, 1/2 is left, 3/4 is down

## Pen commands
```java
penUp(); // Shortcut u()
penDown(); // d()
```

## Relative move
```java
moveForward(distance); // f()
```

## Relative turns
```java
turnRight(angle); // r()
turnLeft(angle); // l()
```

## Absolute turns
```java
turnTo(angle); // t()
```
Angles for turn commands are 0.0 to 1.0
```java
turnRight(1/4); // Turn right 90º
turnLeft(1/360); // Turn left 1º
```

## Move (pen not drawing) and line (drawing)
### Relative
```java
moveBy(x, y); 
lineBy(x, y);
```
### Absolute
```java
moveTo(x, y); 
lineTo(x, y);
line(x1, y1, x2, y2);
```
