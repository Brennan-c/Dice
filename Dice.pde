Die kyle;        
        void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
      //your code here
      background(200,200,200);
      kyle = new Die(200,200);
      kyle.roll();
      kyle.show();
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int dieX, dieY, dieDot;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          dieDot = 1;
          dieX = x;
          dieY = y;
      }
      void roll()
      {
          //your code here
          dieDot = 1 + (int)(Math.random()*6);
          
      }
      void show()
      {
          //your code here
          fill(255,255,255);
          rect(dieX, dieY, 50, 50, 10);
          fill(0,0,0);
        if (dieDot == 1){
          ellipse( dieX + 25, dieY + 25, 9,9);
        }
        else if (dieDot == 2){
          for(int i = 0; i < dieDot; i++)
            ellipse( dieX + 15 + 19*i, dieY + 25, 9,9);
        }
        else        if (dieDot == 3){
           ellipse( dieX + 25, dieY + 25, 9,9);
           ellipse( dieX + 12 , dieY + 12, 9,9);
           ellipse( dieX + 38 , dieY + 38, 9,9);
        }
        else        if (dieDot == 4){
          for(int i = 0; i < 2; i++)
            for (int j = 0; j < 2; j++)
              ellipse( dieX + 13 + 25*i, dieY + 13 + 25* j, 9,9);
        }
        else      if (dieDot == 5){
           for(int i = 0; i < 2; i++)
             for (int j = 0; j < 2; j++)
               ellipse( dieX + 12 + 26*i, dieY + 12 + 26* j, 9,9);
              ellipse( dieX + 25, dieY + 25, 9,9);
        }
        else{
          for(int i = 0; i < 3; i++)
             for (int j = 0; j < 2; j++)
               ellipse( dieX + 11 + 15*i, dieY + 15 + 22* j, 9,9);
        }
                text("Count " + dieDot, 100,100);
      }
  }
