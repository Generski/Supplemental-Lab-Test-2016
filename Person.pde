class Person
{
  float x;
  float y;
  float w;
  float h;

  float speed;

  float moveDir = random(-1, 1);

  Person(float tempH, float tempW)
  {
    h = tempH;
    w = tempW;
    x = random(w/2, width - w);
    y = random(height/2, height - h);

    if (moveDir >= 0)
    {
      speed = 1;
    } else
    {
      speed = -1;
    }
  }

  void display()
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    //Body
    rect(x - w/4, y + h/4, w/2, h/3);
    //Arms
    line(x - w/2, y + h/3, x + w/2, y + h/3);
    //Head
    ellipse(x, y, w/2, w/2);
    //Legs
    line(x + w/10, y + h/2, x + w/10, y + h);
    line(x - w/10, y + h/2, x - w/10, y + h);
  }

  void move()
  {
    x += speed;
    if (x > width - w/2 || x < w/2)
    {
      speed *= -1;
    }
  }
}
