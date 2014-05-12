//screen 
size(1200, 600);
background(240);



//background spots
for (int x = 15; x < width; x += 20)
{
  for (int y = 35; y < height; y += 40)
  {
  noStroke();
  if (y < 400) {
    fill(250);
  } else {
    fill(300, 250, 240);
  }
  ellipse(x, y, 10, 10);
  }
}

for (int x = 15; x < width; x += 20)
{
  for (int y = 15; y < height; y += 40)
  { noStroke();
  ellipse(x, y, 10, 10);
  }
}



//midground triangles
int topOfTriangle = 550;
int triangleHeight = 50;
int triangleWidth=30;

for (int x = 0; (x+triangleWidth) < 1220; x+= triangleWidth) {
  float x1 = x+(triangleWidth/2);
  float y1 = topOfTriangle;
  float x2 = x;
  float y2 = topOfTriangle+triangleHeight;
  float x3 = x+triangleWidth;
  float y3 = topOfTriangle+triangleHeight;
  fill(300, 250, 200);
  noStroke();
  triangle(x1,y1,x2,y2,x3,y3);  
}

//midground side bar
fill(200, 300, 200);
noStroke();
rect(0, 0, 200, 600);

//midground top bar semi circles
for (int x = 0; x < 1210; x += 30)
{
  fill(300, 180, 200);
  ellipse(x, 120, 30, 30);
}

//midground top bar
fill(255);
noStroke();
rect(0, 0, 1200, 120);



//foreground icon
fill(300, 180, 200);
noStroke();
ellipse(100, 60, 80, 80);
fill(255);
ellipse(100, 60, 65, 65);

// foreground side bar lines
for (int y = 150; y < 650; y += 50) {
stroke(280, 180, 150);
strokeWeight(2);
  line(0, y, 200, y+50);
}

//foreground horizontal lines
stroke(245);
strokeWeight(4);
line(0, 590, 1200, 590);

stroke(230);
strokeWeight(2);
line(0, 595, 1200, 595);

//foreground image
PImage myImage1;
myImage1 = loadImage("chyme logo.png");
tint(250);
image(myImage1, 480, 200, 350, 300);


