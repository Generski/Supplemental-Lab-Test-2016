class Star
{
  float x;
  float y;
  
  float col = random(0, 255);
  
  Star()
  {
    x = random(0, width);
    y = random(0, height/2);
  }
  
  void display()
  {
    fill(col);
    ellipse(x, y, 1, 1);
  }
}
