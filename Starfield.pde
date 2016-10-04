Particle [] melvin;
void setup()
{ 
	size(2000,2000);
   melvin = new Particle[5000];
for(int i =0; i<melvin.length; i++)
	{ if(i%97==0)
      {
       melvin[i] = new JumboParticle();
      }
      else if (i%333 == 0)
      {
      melvin[i] = new OddballParticle();
      }
      else
      {
      	melvin[i] = new NormalParticle();
      }
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


class NormalParticle  implements Particle
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
	{   fill(255,255,255);
		ellipse((float)x, (float)y,5,5);
	}
	
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle  //uses an interface
{   int x,y;
	void move()
	{
      x=x + (int)(Math.random()*50)-25;
     y =y  + (int)(Math.random()*50)-25;

	}
	void show()
	{  fill(216,17,38);
		rect(x+700,y+500,10,10 );
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
  void show()
  { 
  	ellipse((float)x,(float)y,20,20);
}
}

