Die hi = new Die(50,50);
Die hellow = new Die(200,50);
void setup()
{
	size(600,400);
	noLoop();
}
void draw()
{
	//your code here

	background(197);
	/*
	for(int i = 50; i <= 500; i = i + 100){
		for(int j = 50; j <= 300; j = j + 100){
			Die hi = new Die(i ,j);
			hi.roll();
			hi.show();

		}
	}
	*/
	
	hi.show();
	hi.roll();
	hellow.show();
	hellow.roll();
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX,myY,dot,dSize,dRadius,dNumber;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		dSize = 70;
		dRadius = 13;
		dNumber = 0;
		dAdd = 0;
		
	}
	void roll()
	{
		
		dot = (int)(Math.random() * 5) + 1;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,dSize,dSize,25);
		fill(0);
		if(dot == 1 || dot == 3 || dot == 5){
			ellipse((myX + (dSize / 2)), (myY + (dSize / 2)), dRadius, dRadius); //roll 1,roll 3-2,5-3
		}
		if(dot == 2 || dot == 3 || dot == 4 || dot == 5 || dot == 6){
			ellipse(myX + (dSize /3.5),myY + ((dSize/2) /2),dRadius,dRadius); //roll 2-1,6-1,5-1,3-1,4-1
			ellipse(myX + (dSize /1.4),myY + ((dSize /1.5) + 5),dRadius,dRadius); //roll 2-2,4-4,3-3,5-5,6-6

		}
		if(dot == 4 || dot == 5 || dot == 6){
			ellipse(myX + (dSize /1.4),myY + ((dSize /2 ) /2),dRadius,dRadius); //roll 4-2,5-2,6-3
			ellipse(myX + (dSize / 3.5), myY + ((dSize / 1.5) + 5),dRadius,dRadius); //roll 4-3,5-4,6-4
	
		}
		if(dot == 6){
			ellipse(myX + (dSize / 2), myY + ((dSize/2)/2), dRadius,dRadius); //roll 6-2
			ellipse(myX + (dSize/2), myY + ((dSize / 1.5) + 5),dRadius,dRadius); //roll 6-5
		}		

	}

		
}
