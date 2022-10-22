PImage mduck;
PImage bduck;
Blob[] gerry;
boolean start;
boolean end;
float sx;
float sy;
void setup()
{
  size(500, 500);
  gerry = new Blob[7];
  for (int i = 0; i < gerry.length; i++)
  {
    gerry[i] = new Blob();
  }
  noCursor();
  mduck = loadImage("8270b1f370bda5ef30ebba1d305ee0c7-removebg-preview.png");
  bduck = loadImage("farm-animals-goose-vector-illustration-260nw-1715023534-removebg-preview.png");
}
void draw()
{
  background(255, 255, 255);
  for (int i = 0; i < gerry.length; i++)
  {
    gerry[i].show();
    gerry[i].spread();
  }
  System.out.println(mouseX);
  image(mduck, mouseX, mouseY);
}
class Blob
{
  float myX, myY;
  Blob()
  {
    myX = (float)(Math.random()*500);
    myY = (float)(Math.random()*500);
  }
  void spread()
  {
    if (mouseX > 0 && mouseX < 500 && mouseY < 500 && mouseY > 0) 
    {
      sx = (float)(Math.random()*4)-3;
      sy = (float)(Math.random()*4)-3;
    }
    if (mouseX < 3 || mouseX > 495 || mouseY > 495 || mouseY < 3) 
    {
      sx = 0;
      sy = 0;
    }
    if (mouseX > myX) {
      myX = myX - sx;
    }
    if (mouseX < myX) {
      myX = myX + sx;
    }
    if (mouseY < myY) {
      myY = myY + sx;
    }
    if (mouseY > myY) {
      myY = myY - sx;
    }
  }
  void show()
  {
    image(bduck, myX, myY);
  }
}
