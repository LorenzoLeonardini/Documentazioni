Sprite personaggio;

void setup()
{
  size(800, 600);
  personaggio = new Sprite();
}

void draw()
{
  background(255);
  personaggio.show();
  personaggio.update();
}

void keyPressed()
{
  if(keyCode == 37)
    personaggio.left = true;
  if(keyCode == 38)
    personaggio.top = true;
  if(keyCode == 39)
    personaggio.right = true;
  if(keyCode == 40)
    personaggio.bottom = true;
}

void keyReleased()
{
  if(keyCode == 37)
    personaggio.left = false;
  if(keyCode == 38)
    personaggio.top = false;
  if(keyCode == 39)
    personaggio.right = false;
  if(keyCode == 40)
    personaggio.bottom = false;
}