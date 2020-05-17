Star[] stars = new Star[200];

void setup()
{
  size(500, 500);

  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

void draw()
{
  background(0);

  //Ground
  noStroke();
  fill(255, 255, 0);
  rect(0, height/2, width, height/2);
  
  //Stars
  for(int i = 0 ; i < stars.length ; i++)
  {
    stars[i].display();
  }
}
