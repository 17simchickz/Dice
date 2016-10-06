Die may;


void setup()
{
  noLoop();
  size(300,400);
  
}
void draw()
{
  
  background(255,255,255);
  //may = new Die((int)(Math.random()*200),((int)(Math.random()*200)));
  //may.show();
 // may.roll();
  int num=0;
  for( int j=1; j<=300; j+=100)
    {
      for( int i=1; i<=300; i+=100)
      {
        Die may = new Die(j,i);
        may.show();
        may.roll();
        fill(255,255,255);
        {
rect(0,300,300,100);
        }
        fill(0);
        num = num += may.dieRoll;
        textSize(26);
        text("Sum of Dice = " + num, 50,350);
      }
      
    }
    
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, dotX, dotY,dieRoll;
  Die(int x, int y) 
  {
    myX= x;
    myY= y;
    dotX= x+50;
    dotY= y+50;
    dieRoll= ((int)(Math.random()*6)+1);
   
  }
  
  void show()
  {
    for( int y=1; y<=3; y++)
    {
      for( int x=1; x<=2; x++)
      {
        fill(255,255,255);
        rect(myX,myY,100,100);
        
        
      }
      
    }
  }
  void roll()
  {
    //int t= ((int)(Math.random()*6)+1);
    if(dieRoll==1)
    {
    fill(0,0,0);
    ellipse(dotX,dotY,25,25);
    }
    if(dieRoll==2)
    {
     fill(0);
     ellipse(dotX+20,dotY,25,25);
     ellipse(dotX-20,dotY,25,25);
    }
    if(dieRoll==3)
    {
     fill(0);
     ellipse(dotX,dotY,25,25);
     ellipse(dotX-20,dotY+20,25,25);
     ellipse(dotX+20,dotY-20,25,25);
    }
    if(dieRoll==4)
    {
     fill(0);
     ellipse(dotX+20,dotY-20,25,25);
     ellipse(dotX-20,dotY-20,25,25);
     ellipse(dotX+20,dotY+20,25,25);
     ellipse(dotX-20,dotY+20,25,25);
    }
    if(dieRoll==5)
    {
     fill(0);
     ellipse(dotX+20,dotY-20,25,25);
     ellipse(dotX-20,dotY-20,25,25);
     ellipse(dotX+20,dotY+20,25,25);
     ellipse(dotX-20,dotY+20,25,25);
     ellipse(dotX,dotY,25,25);
    }
    if(dieRoll==6)
    {
      fill(0,0,0);
    ellipse(dotX+20,dotY,25,25);
    ellipse(dotX-20,dotY,25,25);
    ellipse(dotX+20,dotY+30,25,25);
    ellipse(dotX+20,dotY-30,25,25);
    ellipse(dotX-20,dotY-30,25,25);
    ellipse(dotX-20,dotY+30,25,25);
    }
  }
}

