PImage image1;
PFont font1;
int[] hues = {200, 50, 400, 5};
color pixelColour;
float x1 = 0;
float x2 = 100;



void setup() {
  size(1000, 600);
  image1 = loadImage("245130.jpg");
  
  colorMode(HSB, 360, 100, 100);
  font1 = createFont("AGaramondPro-Bold-48.vlw", 30);
  textFont(font1);
  textAlign(CENTER);
}



void draw() {
  image(image1, 0, 0, width, height);
  
  pixelColour = get(mouseX, mouseY);
  fill(500, 100, 100);
  text("HELP!!", mouseX, mouseY);
  
  fill(pixelColour, 30);
  rect(0, 0, 1000, 600);
  
  fill(hues[1], 100, 100);
  text("zzzZZZzzzZZZ", width-mouseX, height-mouseY);
  
  fill(255);
  text("Back away", x1, height-200);
  text("slowly...", x2, height-150);
  x1 += 0.5;
  if (x1 > 300) { x1 = 0; }
  x2 -= 0.5;
  if (x2 < 20) { x2 = 300; }
}


  
