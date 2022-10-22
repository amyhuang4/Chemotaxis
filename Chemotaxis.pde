PImage mduck;
PImage bduck;
PImage grass;
Blob[] gerry;
boolean start;
boolean end;
float sx;
float sy;
void setup()
{
  size(500, 500);
  grass = loadImage("istockphoto-1350483404-170667a.jpg");
  gerry = new Blob[7];
  for (int i = 0; i < gerry.length; i++)
  {
    gerry[i] = new Blob();
  }
  noCursor();
  mduck = loadImage("farm-animals-goose-vector-illustration-260nw-1715023534-removebg-preview.png");
  bduck = loadImage("8270b1f370bda5ef30ebba1d305ee0c7-removebg-preview.png");
}
void draw()
{
  image(grass, 0, 0, 500, 500);
  for (int i = 0; i < gerry.length; i++)
  {
    gerry[i].show();
    gerry[i].spread();
  }
  image(mduck, mouseX-75, mouseY-62.5, 150, 150);
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
      sx = (float)(Math.random()*5)-4;
      sy = (float)(Math.random()*5)-4;
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
    image(bduck, myX, myY, 70, 70);
  }
}
