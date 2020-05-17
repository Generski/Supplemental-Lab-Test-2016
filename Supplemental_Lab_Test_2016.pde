Star[] stars = new Star[200];
Person[] people = new Person[5];

void setup()
{
  size(500, 500);

  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }

  for (int i = 0; i < people.length; i++)
  {
    float pHeight = map(50, 0, 500, 0, height);
    people[i] = new Person(pHeight);
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
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].display();
  }

  //People
  for (int i = 0; i < people.length; i++)
  {
    people[i].display();
  }
}
