import processing.serial.*;

Sprite personaggio;
Serial myPort;

void setup()
{
  size(800, 600);
  personaggio = new Sprite();
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}

void draw()
{
  background(255);
  personaggio.show();
  
  if(myPort.available() > 0)
    personaggio.update(myPort.readStringUntil('\n'));
}