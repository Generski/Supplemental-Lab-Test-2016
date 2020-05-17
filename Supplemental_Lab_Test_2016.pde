Star[] stars = new Star[200];
Person[] people = new Person[5];
UFO ufo;

void setup()
{
  size(500, 500, P2D);

  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }

  for (int i = 0; i < people.length; i++)
  {
    float pHeight = map(50, 0, 500, 0, height);
    float pWidth = map(30, 0, 500, 0, width);
    people[i] = new Person(pHeight, pWidth);
  }
  
  float ufoWidth = map(125, 0, 500, 0, width);
  float ufoHeight = ufoWidth/5;
  ufo = new UFO(width/2, height/2 - 2 * ufoHeight, ufoWidth, ufoHeight);
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
    people[i].move();
  }
  
  //UFO
  ufo.display();
  ufo.changeLights();
  ufo.move(3);
}
