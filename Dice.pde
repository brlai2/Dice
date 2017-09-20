void setup()
{
  size(500, 500);
  background(0);
  noLoop();
}
void draw()
{
  int nums = 0;
  for (int y = 5; y <= 500; y = y + 55)
  {
    for (int x = 5; x <= 500; x = x + 55)
    {
      Die bob = new Die(x, y);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, nums;//variable declarations here
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    nums = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if (nums == 1)
      ellipse(myX + 25, myY + 25, 10, 10);
    else if (nums == 2)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (nums == 3)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (nums == 4)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (nums == 5)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (nums == 6)
    {
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
  }
}