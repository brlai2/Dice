void setup()
{
	noLoop();
}
void draw()
{
//	void show();
//  Die bob = new Die(x,150)
  bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
    roll();
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		noStroke();
    fill(255);
    quad(myX,myY,50,50);
    fill(0);
	}
}