//SCREEN SIZE
size (1200, 600);



//IMAGES
PImage myImage1;
PImage myImage2;
PImage myImage3;

myImage1 = loadImage("shoes.jpg");
myImage2 = loadImage("chyme logo.png");
myImage3 = loadImage("giroro.gif");



//BACKGROUND IMAGE
image(myImage1, 0, -100, 1200, 1000);



//BACKGROUND LINE DECORATIONS
//orange curved line
for (int x = 150; x < 1300; x++) {
  float n = norm(x, 100.0, 600.0);
  float y = pow(n, 3);
  y *= 100;
  stroke(280, 150, 80, 80);
  strokeWeight(4);
  point(x, y-30);
}

// dotted white swirls
noStroke();
fill(250);
float angle1 = 0.0;
for (int x = 0; x <= width; x +=10) {
float y = 50 + (sin(angle1) * 20.0);
ellipse (x, y, 4, 4);
angle1 += PI/20.0;
}

float angle2 = 1.5;
for (int x = 0; x <= width; x +=10) {
float y = 50 + (cos(angle2) * 20.0);
ellipse (x, y, 4, 4);
angle2 += PI/20.0;
}



//FOREGROUND BOTTOM BAR
fill(350, 50, 100, 100);
noStroke();
rect(0, 520, 1200, 80);



//FOREGROUND PIANO NOISE PATTERN
float v = 0.0;
float inc = 0.1;
noStroke();
fill(255, 220);
noiseSeed(0);
for (int i = 0; i < width; i = i+4) {
float n = noise(v) * 30.0;
rect(i, 500 + n, 3, 20);
v = v + inc;
}



//FOREGROUND IMAGES
//bottom-right icon
image(myImage3, 1070, 475, 100, 100);
//logo; chyme
tint(255);
image(myImage2, 100, 150, 220, 200);



//TEXT
PFont font1;
PFont font2;
font1 = loadFont("HelveticaNeue-UltraLight-12.vlw");
font2 = loadFont("HiraKakuProN-W3-25.vlw");

textFont(font2);
fill(350, 50, 100);
textSize(20);
text("A Wonderful Collection", 235, 315);
text("Made With Love", 235, 348);

fill(255);
textFont(font1);
textSize(12);
text("Chyme Productions 2014 Pty Ltd", 50, 570);


















