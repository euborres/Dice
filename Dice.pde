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
	int myX,myY,dot;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		dot = 1;
		//dot = (int)(Math.random() * 6) + 1;
	}
	void roll()
	{
		//your code here
		if(dot == 1)
		{
			ellipse(myX + 25,myY + 25,10,10); //roll 1
		}

	}
	void show()
	{
		//your code here
		rect(myX,myY,50,50,5);
		ellipse(myX + 10, m);
		
	}
}
