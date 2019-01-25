int len = 500;
int col1 = (int)(Math.random()*255);
int col2 = (int)(Math.random()*255);
int col3 = (int)(Math.random()*255);
public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(0);
  fill(col1, col2, col3);
  sierpinski(0, 500, len);
}
public void mouseClicked()
{
  col1 = (int)(Math.random()*255);
  col2 = (int)(Math.random()*255);
  col3 = (int)(Math.random()*255);
 if(len <= 20)
   len = 500;
  else
    len = len/2;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
