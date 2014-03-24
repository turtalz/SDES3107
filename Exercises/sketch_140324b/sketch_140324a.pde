// FONTS & IMAGES

PFont myFont1;

PImage myImage1;
PImage myImage2;



// ORIGINAL SETTINGS

void setup() {
  
  // background
  background(200, 300, 200);
  size (1200, 600);

  // fonts
  myFont1 = loadFont("Microsoft-Yi-Baiti-48.vlw");

  // images
  myImage1 = loadImage("chyme logo.png");
  myImage2 = loadImage("bee001.png");
  
}



// FLUID SETTINGS

void draw() {
  background(200, 300, 200);
  
  // rectangle
  noStroke();
  fill(400, 200, 100, 180);
  rect(200, 150, 800, 300);
  
  // circles
   if (key == '1') {
      noStroke();
      fill(255);
      ellipse (250, 350, 50, 50);
      ellipse (250, 400, 50, 50);
      ellipse (300, 350, 50, 50);
      ellipse (300, 400, 50, 50);
      ellipse (350, 400, 50, 50);
    }
  
  // text
   if (key == '2') {
     textFont(myFont1);
     fill(250);
     textSize(48);
     text("A Wonderful Collection", 235, 315);
     text("from the Beehive", 235, 348);
    }

  // mouse follow - bee
  image(myImage2, mouseX, mouseY, 50, 50);
  
  
  
 // MOUSE CLICK FUNCTIONS
 
  if (mousePressed == true){
    
    // mouse click - rectangle changes colour
    noStroke();
    fill(255, 240);
    rect(200, 150, 800, 300);
    
    // mouse click - chyme logo
    image(myImage1, 490, 200, 220, 200);
    
     // mouse click - circles
   if (key == '1') {
      noStroke();
      fill(200, 300, 200);
      ellipse (250, 350, 50, 50);
      ellipse (250, 400, 50, 50);
      ellipse (300, 350, 50, 50);
      ellipse (300, 400, 50, 50);
      ellipse (350, 400, 50, 50);
    }
    
    // mouse click - text
   if (key == '2') {
     fill(300, 50, 100);
     textFont(myFont1);
     textSize(20);
     text("A Wonderful Collection", 820, 400);
     text("from the Beehive", 860, 420);
    }
    
    // mouse click - mouse follow - bee
    image(myImage2, mouseX, mouseY, 50, 50);
       
  }
  
}





