Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
Die seven;
Die eight;
Die nine;
void setup()
{
  size(500,500);
  background(0,255,0);
  noLoop();
}
void draw()
{
  one = new Die (30,50);
  one.show();
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX,myY,myDieNumber;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    myDieNumber=(int)(Math.random()*6)+1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    int a=60;
    for(int n=1; n<=2; n++)
  {
    for(int m=1; m<=6; m++)
    {
      rect(myX,myY,a,a,15);
    }
  }
}
}

//i--      /* is same as */    i = i - 1
//i+=2    /* is same as */    i = i + 2
//i-=3    /* is same as */    i = i - 3
//i*=4    /* is same as */    i = i * 4
//i/=5    /* is same as */    i = i / 5
