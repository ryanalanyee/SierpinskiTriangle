public void setup()
{
  background(255,255,255);
  size(400,400);
  int startX = width/4;
  int startY = height/1;
  sierpinski(startX, startY, 200);
}
public void draw()
{
  
}
public void mousePressed()
{
  
}
public void sierpinski(int x, int y, int len)
{
  if(len<=20)
  {
    triangle(x,y, x+len/2, y-len, x+len, y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
