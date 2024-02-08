public void setup() {
  size(800, 800);
  sierpinski(50, 750, 400); // Calling sierpinski function to start the process
}

public void draw() {
  // Optional: you can add code here for additional drawing or animations
}

public void mouseDragged() {
  // Optional: you can add code here to respond to mouse dragging
}

public void keyPressed() {
  // Optional: you can add code here to respond to key presses
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) { // Change 20 to adjust the base case limit
    // Draw a triangle with the left corner at (x,y) and a base and height equal to len
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    // Recursively call the sierpinski function to draw three smaller triangles
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}