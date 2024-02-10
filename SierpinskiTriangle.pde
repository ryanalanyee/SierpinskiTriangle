int triangleSize = 400;
public void setup() {
  size(800, 800);
  color(255,255,255);
  int startX = width/4;
  int startY = height/1;
  sierpinski(startX,startY,triangleSize);
}

public void draw() {

}

public void mouseDragged() {
  
}

public void keyPressed() {
  if (key== ' '){
  triangleSize += 50;
  }
}

public void sierpinski(int x, int y, int len) {
  if (len <= 23) { // Change 20 to adjust the base case limit
    
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
     
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
