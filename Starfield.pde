NormalParticle [] melvin;
void setup()
{
	size(2000,2000);
   melvin = new NormalParticle[3000];
for(int i =0; i<melvin.length; i++)
	{
       melvin[i] = new NormalParticle();
	}


}

void draw()
{ 
	background(0);
	for(int i=0; i<melvin.length; i++)
	{
       
       melvin[i].move();
       melvin[i].show();
     
	}
  
}


class NormalParticle
{    
	int myColor;
	double x,y,dSpeed,dAngle;
	NormalParticle()
	 {

	  x = 750;
	  y =  500; 
	 dSpeed = Math.random()*10;
	 dAngle = Math.PI*2*Math.random();
	}
	public void move()
	{
	x =  x +(Math.cos(dAngle)*dSpeed);
	y = y + (Math.sin(dAngle)*dSpeed);
     } 
    
	public void show()
	{   
		ellipse((float)x, (float)y,5,5);
	}
	
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

