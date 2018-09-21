Die hi = new Die(50,50);
void setup()
{
	size(600,600);
	noLoop();
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
	int myX,myY,dot,dSize,dRadius;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		dSize = 30;
		dRadius = 6;
		
	}
	void roll()
	{
		
		dot = (int)(Math.random() * 4) + 1;
		//Needs to be resized,
		if(dot == 1){
			ellipse(myX + (dSize / 2), myY + (dSize / 2), dRadius, dRadius);
		} else if (dot == 2){
			ellipse(myX + (dSize / 3),myY + (dSize / 3),dRadius,dRadius);
			ellipse(myX + (myX / 2.5), myY + (myY / 2.5), dRadius,dRadius);
		} else if (dot == 3){
			ellipse(myX + (myX / 2.5), myY + (myY / 2.5), dRadius,dRadius);
			ellipse(myX + (dSize / 3),myY + (dSize / 3),dRadius,dRadius);
			ellipse(myX + (dSize / 2), myY + (dSize / 2), dRadius, dRadius);
		} else if (dot == 4){
			ellipse(myX + (myX / 2.5),myY + (dSize / 3),dRadius,dRadius);  //roll 4-2
			ellipse(myX + (myX / 2.5), myY + (myY / 2.5), dRadius,dRadius); //roll 4-4
			ellipse(myX + (dSize / 3),myY + (dSize / 3),dRadius,dRadius); //roll 4-1
			ellipse(myX + (dSize / 3), myY + (myY/2.5),dRadius,dRadius); //roll 4-3
		
		} 
		
		

	}
	void show()
	{
		//your code here
		rect(myX,myY,dSize,dSize,5);
		
	}
}
