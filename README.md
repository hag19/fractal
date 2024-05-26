# Rotating Line Animation Project

## Introduction
This project is a visual animation created using Processing that features rotating lines around a circle. The lines animate by changing their angle over time, creating an engaging visual effect. The animation increases and decreases the angle of rotation smoothly until it stops.

## Features
- **Circular Animation**: Lines rotate around a central point in a circle.
- **Smooth Transition**: The angle of rotation increases and decreases smoothly.
- **Automatic Stop**: The animation stops automatically after a complete cycle.

## Code Explanation
Here's a brief overview of the code and its functionality:

### Variables
- `float radios`: Radius of the circle.
- `int divisions`: Number of divisions/lines.
- `float divAngle`: Angle between each division.
- `float angleOffset`: Variable to control the rotation angle.
- `boolean increasing`: Flag to control the direction of rotation.
- `boolean animationRunning`: Flag to control whether the animation should continue.

### `setup()`
- Sets the size of the canvas.

### `draw()`
- Clears the background and translates the origin to the center of the canvas.
- Draws the circle and manages the rotation animation.
- Adjusts the `angleOffset` to control the rotation angle.
- Draws lines based on the current angle of rotation.

### `xyPosition(float i)`
- Calculates the position of a point on the circle based on the given index.
