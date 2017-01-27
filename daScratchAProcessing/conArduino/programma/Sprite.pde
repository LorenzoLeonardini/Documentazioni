class Sprite
{
  float x, y;
  
  public Sprite()
  {
    x = width / 2;
    y = height / 2;
  }
  
  public void show()
  {
    strokeWeight(1);
    stroke(0);
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);
    fill(255);
    ellipse(x - 10, y - 10, 10, 12);
    ellipse(x + 10, y - 10, 10, 12);
    ellipse(x, y + 7, 30, 18);
    fill(255, 0, 0);
    noStroke();
    rect(x - 16, y - 2, 32, 9);
    strokeWeight(1);
    stroke(0);
    line(x - 15, y + 7, x + 15, y + 7);
    fill(0);
    ellipse(x - 10, y - 8, 7, 7);
    ellipse(x + 10, y - 8, 7, 7);
  }
  
  public void update(String input)
  {
    if(input == null)
      return;
    String values[] = input.split(" ");
    if(values.length != 4)
      return;
    x += (Integer.parseInt(values[1].trim()) - 500) / 100;
    y += (Integer.parseInt(values[2].trim()) - 500) / 100;
      
    if(x < 25)
      x = 25;
    if(x > width - 25)
      x = width - 25;
    if(y < 25)
      y = 25;
    if(y > height - 25)
      y = height - 25;
  }
}