//backround
size(1200, 600);
background(220);



//midground
fill(200, 300, 200);
noStroke();
rect(0, 0, 200, 600);

fill(255);
noStroke();
rect(0, 0, 1200, 100);

stroke(255);
strokeWeight(4);
line(0, 110, 1200, 110);

stroke(255);
strokeWeight(2);
line(0, 120, 1200, 120);





//foreground
fill(300, 180, 200);
noStroke();
ellipse(100, 50, 80, 80);
fill(255);
ellipse(100, 50, 65, 65);

for (int x = 0; x < width; x += 30)
{
  fill(300, 180, 200);
  ellipse(x, 0, 30, 30);
}

print("This is some test text!");
println("This is some more test text!");
