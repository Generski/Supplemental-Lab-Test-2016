class UFO
{
  float x;
  float y;
  float w;
  float h;

  color col = color(0, 255, 0);

  int timer;

  UFO(float tempX, float tempY, float tempW, float tempH)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }

  void display()
  {
    noStroke();
    fill(255);
    //Body
    rect(x - w/2, y, w, h);
    //Top
    rect(x - w/4, y - h, w/2, h);
    //Windows

    for (int i = 0; i < w; i += w/5)
    {
      stroke(0);
      strokeWeight(2);
      fill(col);
      ellipse((x - w/2) + i + h/2, y + h/2, h/2, h/2);
    }
  }

  void move(float speed)
  {
    if (keyPressed)
    {
      if (keyCode == LEFT && x > w/2)
      {
        x -= speed;
      }

      if (keyCode == RIGHT && x < width - w/2)
      {
        x += speed;
      }
      
      if (keyCode == UP && y > h)
      {
        y -= speed;
      }

      if (keyCode == DOWN && y < height/2 - h)
      {
        y += speed;
      }
    }
  }

  void changeLights()
  {
    if (millis() - timer >= 1000)
    {
      if (col == color(0, 255, 0))
      {
        col = color(255, 0, 0);
      } else
      {
        col = color(0, 255, 0);
      }

      timer = millis();
    }
  }
}
