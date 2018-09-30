void setup()
{
  size(500,500);
  //background(0,255,0);
  noLoop();
}
void draw()
{
   Die one = new Die (100,100);
   one.show();
   one.roll();
   one.value();

   Die two = new Die(200, 100);
   two.show();
   two.roll();
   two.value();
   
   Die three = new Die(300, 100);
   three.show();
   three.roll();
   three.value();
   
   Die four = new Die(100, 200);
   four.show();
   four.roll();
   four.value();
   
   Die five = new Die(200, 200);
   five.show();
   five.roll();
   five.value();
   
   Die six = new Die(300, 200);
   six.show();
   six.roll();
   six.value();
   
   Die seven = new Die(100, 300);
   seven.show();
   seven.roll();
   seven.value();
   
   Die eight = new Die(200, 300);
   eight.show();
   eight.roll();
   eight.value();
   
   Die nine = new Die(300, 300);
   nine.show();
   nine.roll();
   nine.value();
   
   if(one.value() == two.value() && one.value() == three.value())
   {
        rect(60,380,110,30);
        fill(255);
        text("Sum:" + (one.value() + two.value() + three.value() + four.value() + five.value() + six.value() + seven.value() + eight.value() + nine.value()), 73, 400);
        noLoop();
      }
      
      if(four.value() == five.value() && two.value() == six.value()){

        rect(60,380,110,30);
        fill(255);
        text("Sum:" + (one.value() + two.value() + three.value() + four.value() + five.value() + six.value() + seven.value() + eight.value() + nine.value()), 73, 400);
        noLoop();
      }
      
      if(seven.value() == eight.value() && three.value() == nine.value()){
       
        rect(60,380,110,30);
        fill(255);
        text("Sum:" + (one.value() + two.value() + three.value() + four.value() + five.value() + six.value() + seven.value() + eight.value() + nine.value()), 73, 400);
        noLoop();
      }

}
void mousePressed()
{
  redraw();
}

  class Die //models one single dice cube
  {
      int myX, myY, Size, P, n;
      int a, b, c, d, e, f;
       
      
      Die(int x, int y) //constructor
      {
          P = (int)(Math.random()*6) + 1;
          myX = x;
          myY = y;
          Size = 70;      
      }
      int value(){
         if(P == 1) {
            a = 1;  
          }
          if(P == 2) {
            b = 2;
          }
          
          if(P == 3) {
            c = 3;
          }
          
          if(P == 4) {
            d = 4;
          }
          
          if(P == 5) {
            e = 5;
          }
          
          if(P == 6) {
            f = 6;
          }
          return a+b+c+d+e+f;
      }
      void roll()
      {
          if(P == 1) 
          {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2, 10, 10); 
           
          }
      
          
          if(P == 2) 
          {
           fill(0);
           ellipse(myX + 50, myY + 50 , 10, 10);
           ellipse(myX + 20, myY + 20, 10, 10);
           
          }
          
          if(P == 3) 
          {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2 , 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10);
           ellipse(myX + 20, myY + 20, 10, 10);
        
          }
          
          if(P == 4)
          {
           fill(0);
           ellipse(myX + 20, myY + 20, 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10); 
           ellipse(myX + 20, myY + 50, 10, 10); 
           ellipse(myX + 50, myY + 20, 10, 10); 
          
          }
          
          if(P == 5) 
          {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2 , 10, 10); 
           ellipse(myX + 20, myY + 20, 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10); 
           ellipse(myX + 20, myY + 50, 10, 10); 
           ellipse(myX + 50, myY + 20, 10, 10); 
          }
          
          if(P == 6) 
          {
           fill(0);
           ellipse(myX + 20, myY + 15, 10, 10);
           ellipse(myX + 20, myY + 35, 10, 10); 
           ellipse(myX + 20, myY + 55, 10, 10); 
           ellipse(myX + 50, myY + 15, 10, 10); 
           ellipse(myX + 50, myY + 35, 10, 10); 
           ellipse(myX + 50, myY + 55, 10, 10);
          }
      }
      void show()
      {
        fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        rect(myX, myY, Size, Size, 15);
      }
  }
