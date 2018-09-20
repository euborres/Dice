Die hi = new Die(50,50);
void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	//your code here
	hi.show();
	hi.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX,myY,dot,dSize,dRadius,dPlacement;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		dSize = 30;
		dRadius = 7;
		//dot = (int)(Math.random() * 6) + 1;
	}
	void roll()
	{
		//your code here

	}
	void show()
	{
		//your code here
		rect(myX,myY,dSize,dSize,5);
		fill(0);
		//ellipse(myX + (dSize / 2), myY + (dSize / 2), dRadius, dRadius); //roll 1
		ellipse(myX + (dSize / 3),myY + (dSize / 3),dRadius,dRadius); // roll 2-1
		ellipse(myX + (myX / 2), myY + (myY / 3), dRadius,dRadius);
		
		
	}
}
