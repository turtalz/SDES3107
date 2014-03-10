size (1200, 600);



PImage myImage1;
PImage myImage2;
PImage myImage3;


myImage1 = loadImage("shoes.jpg");
myImage2 = loadImage("chyme logo.png");
myImage3 = loadImage("giroro.gif");



image(myImage1, 0, -100, 1200, 1000);

image(myImage3, 1070, 475, 100, 100);

tint(200, 200, 280);
image(myImage2, 200, 150, 220, 200);

for (int x = 150; x < 1300; x++) {
  float n = norm(x, 100.0, 600.0);
  float y = pow(n, 4);
  y *= 100;
  stroke(280, 150, 80);
  strokeWeight(10);
  point(x, y);
}


