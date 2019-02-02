/**
* Effect with dots on screen.
* Author Katerina Labrou
* Adaptation of 'Glitter' script by Maria Vlachostergiou
*
* MIT License
* Copyright (c) 2018 Katerina Labrou
*/

int screenWidth = 1920;
int screenHeight = 1080;
int fps = 30;

int opacity = 15;

void settings () {
  size(screenWidth, screenHeight);
}

void setup () {
  background(255);
  frameRate(fps);
}

void draw () {
  for (int i = 0; i < screenWidth; i+=10) {
     for (int j = 0; j < screenWidth; j+=10) {
        colorMode(HSB);
        stroke(255, random(130, 255), random(10, 250), opacity);
        strokeWeight(3);
        float x = i * random(0, 2); float y = j * random(0, 2);
        point(x, y);
     }
   }
 
}
