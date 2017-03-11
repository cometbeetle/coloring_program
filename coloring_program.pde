//Ethan Mentzer Programing 2 
//assignment: 3 wannapaint
//This is a drawing program with a menu
//The user can pick a color and a shape and
//make a painting
PShape trash;
// CONSTANTS
color yellow = color(255, 255, 0);
color red = color(255, 0, 0);
color green = color (0, 255, 0);
color blue = color(0, 0, 255);
color background = color(255);

// VARIABLES
Boolean shapeIsRect=false;
color whichColor;
Boolean shapeIsCirc=false;

void setup() {
  size(1800, 1050);
  background(255);
  whichColor=255;
  trash = loadShape("trash.svg");
}

void draw() {
  noStroke();
  fill(122);
  rect(20, 20, 200, 80);
  fill(yellow); // Yellow
  rect(30, 30, 20, 20);
  ellipse(40, 70, 20, 20);
  fill(blue); // Blue
  ellipse(70, 70, 20, 20);
  rect(60, 30, 20, 20);
  fill(red);// Red
  ellipse(100, 70, 20, 20);
  rect(90, 30, 20, 20);
  fill(green);// Green
  ellipse(130, 70, 20, 20);
  rect(120, 30, 20, 20);
  fill(255);
  rect(150, 30, 60, 60);
  shape(trash,-200,-200);

  if (shapeIsCirc && !shapeIsRect && mousePressed) {
    fill(whichColor);
    ellipse(mouseX, mouseY, 30, 30);
    fill(255);
  } else if (shapeIsRect && !shapeIsCirc && mousePressed) {
    fill(whichColor);
    rect(mouseX, mouseY, 30, 30);
    fill(255);
  }
}

void mousePressed() {
  if (mouseX>30 && mouseX<50 && mouseY>30 && mouseY<50) {
    shapeIsRect=true; 
    shapeIsCirc=false;
    whichColor=yellow;
  } else if (mouseX>60 && mouseX<80 && mouseY>30 && mouseY<50) {
    shapeIsRect=true;
    shapeIsCirc=false;
    whichColor=blue;
  } else if (mouseX>90 && mouseX<110 && mouseY>30 && mouseY<50) {
    shapeIsRect=true;
    shapeIsCirc=false;
    whichColor=red;
  } else if (mouseX>120 && mouseX<140 && mouseY>30 && mouseY<50) {
    shapeIsRect=true;
    shapeIsCirc=false;
    whichColor=green;
  } else if (mouseX>150 && mouseX<200 && mouseY>30 && mouseY<60) {
    shapeIsRect=true;
    shapeIsCirc=false;
    whichColor=background;
  } else if (mouseX>90 && mouseX<110 && mouseY>50 && mouseY<70) {
    shapeIsRect=false;
    shapeIsCirc=true;
    whichColor=red;
  }
  else if (mouseX>30 && mouseX<50 && mouseY>50 && mouseY<70) {
    shapeIsRect=false;
    shapeIsCirc=true;
    whichColor=yellow;
  }
  else if (mouseX>60 && mouseX<80 && mouseY>50 && mouseY<70) {
    shapeIsRect=false;
    shapeIsCirc=true;
    whichColor=blue;
  }
  else if (mouseX>120 && mouseX<140 && mouseY>50 && mouseY<70) {
    shapeIsRect=false;
    shapeIsCirc=true;
    whichColor=green;
  }
  else if (mouseX>70 && mouseX<150 && mouseY>150 && mouseY<250) {
    background(255);}
    
}