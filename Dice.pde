int rollTotal = 0;

void setup()
{
  size(600, 700);
  background(255, 219, 219);
  noLoop();
  noStroke();
  textAlign(CENTER,CENTER);
  textSize(20);

}
void draw()
{
  background(255, 219, 219);
   for(int x = 20; x < 573; x += 35)
  {
    for(int y = 60; y < 550; y += 40)

    {
      Die bob = new Die(x, y);
      bob.show();
      rollTotal += bob.roll();
    }
  }
  fill(0);
  text("Dots:", 300, 600);
  text(rollTotal, 300, 620);
  rollTotal = 0;
}
void mousePressed()
{
  redraw();
}
class Die
{
  int diceRoll, myX, myY;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  int roll()
  {
    diceRoll = (int)(Math.random() * 6) + 1;
    return diceRoll;
  }
  void show()
  {
    fill(0, 0, 0);
    rect(myX, myY, 30, 30, 10);
    fill(255, 219, 219);
    if(diceRoll == 1)
    {
      ellipse(myX + 15, myY + 15, 5, 5);
    }
    else if(diceRoll == 2)
    {
      ellipse(myX + 9, myY + 21, 5, 5);
      ellipse(myX + 21, myY + 9, 5, 5);
    }
    else if(diceRoll == 3)
    {
      ellipse(myX + 15, myY + 15, 5, 5);
      ellipse(myX + 9, myY + 21, 5, 5);
      ellipse(myX + 21, myY + 9, 5, 5);
    }
    else if(diceRoll == 4)
    {
      ellipse(myX + 9, myY + 21, 5, 5);
      ellipse(myX + 21, myY + 9, 5, 5);
      ellipse(myX + 9, myY + 9, 5, 5);
      ellipse(myX + 21, myY + 21, 5, 5);
    }
    else if(diceRoll == 5)
    {
      ellipse(myX + 15, myY + 15, 5, 5);
      ellipse(myX + 9, myY + 21, 5, 5);
      ellipse(myX + 21, myY + 9, 5, 5);
      ellipse(myX + 9, myY + 9, 5, 5);
      ellipse(myX + 21, myY + 21, 5, 5);
    }
    else
    {
      ellipse(myX + 9, myY + 21, 5, 5);
      ellipse(myX + 21, myY + 9, 5, 5);
      ellipse(myX + 9, myY + 9, 5, 5);
      ellipse(myX + 21, myY + 21, 5, 5);
      ellipse(myX + 9, myY + 15, 5, 5);
      ellipse(myX + 21, myY + 15, 5, 5);
    }
  }
}


