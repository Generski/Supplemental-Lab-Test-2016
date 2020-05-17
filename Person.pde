class Person
{
  float x;
  float y;
  float w;
  float h;

  Person(float tempH)
  {
    h = tempH;
    w = h/1.5;
    x = random(w/2, width - w);
    y = random(height/2, height - h/2);
  }

  void display()
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    //Body
    rect(x, y, w/2, h/2);
    //Arms
    line(x - w/4, y + h/6, x + 3 * w/4, y + h/6);
    //Head
    ellipse(x + w/4, y - h/3, w/2, w/2);
    //Legs
    line(x + w/6, y + h/2, x + w/6, y + h/3 + h/2);
    line(x + w/3, y + h/2, x + w/3, y + h/3 + h/2);
  }

  void move()
  {
  }
}
