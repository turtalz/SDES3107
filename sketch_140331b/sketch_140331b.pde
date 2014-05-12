// VARIABLES
PImage image1;
PImage mousezoom;
PImage enlarge;
color pixelColour;



void setup() {
  size(600, 600);
  image1 = loadImage("sea breeze (2014feb) 003-01.png");
}



void draw() {
  image(image1, 0, 0, width, height);
  
  // enlargement of Blue Pearl logo
  enlarge = get(255, 90, 90, 90);
  image(enlarge, 225, 60, 150, 150);
  
  // zoom in to read text
  mousezoom = get(mouseX-20, mouseY-20, 80, 40);
  image(mousezoom, 430, 500, 140, 70);
  
  // colour of pixel of mouse position
  pixelColour = get(mouseX, mouseY);
  fill(pixelColour);
  noStroke();
  ellipse(mouseX, mouseY, 35, 35);
 
}
