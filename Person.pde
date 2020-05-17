class Person
{
  float x;
  float y;
  float w;
  float h;

  Person(float tempW, float tempH)
  {
    w = tempW;
    h = tempH;
    x = random(w/2, width);
    y = random(height/2, height - h/2);
  }

  void display()
  {
    noStroke();
    fill(255, 0, 0);
    
  }
}
