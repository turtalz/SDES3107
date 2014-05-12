import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_140303b extends PApplet {
  public void setup() {
//backround
size(1200, 600);



//background
background(240);

for (int x = 33; x < width; x += 30)
{
  for (int y = 22; y < height; y += 30)
  {
  fill(245);
  noStroke();
  ellipse(x, y, 30, 30);
  }
}



//midground
fill(200, 300, 200);
noStroke();
rect(0, 0, 200, 600);

for (int x = 0; x < width; x += 30)
{
  fill(300, 180, 200);
  ellipse(x, 120, 30, 30);
}

fill(255);
noStroke();
rect(0, 0, 1200, 120);

stroke(300, 180, 200);
strokeWeight(4);
line(0, 580, 1200, 580);

stroke(300, 180, 200);
strokeWeight(2);
line(0, 590, 1200, 590);



//foreground
fill(300, 180, 200);
noStroke();
ellipse(100, 60, 80, 80);
fill(255);
ellipse(100, 60, 65, 65);


print("This is some test text!");
println("This is some more test text!");
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_140303b" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
