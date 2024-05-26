PImage img1, img2, img3;
PFont font;
int screen = 1;
float textX, textY;
float textScale = 1.0;
float textAlpha = 255;
boolean replayButton = false;

void setup() {
  size(640, 480);
  img1 = loadImage("1.jpg");
  img2 = loadImage("2.jpg");
  img3 = loadImage("3.jpg");
  font = createFont("Arial", 32);
  textX = width/2;
  textY = height/2;
}

void draw() {
  background(255);

  switch(screen) {
    case 1:
      image(img1, 0, 0, width, height);
      animateText("Deadpool & wolverine", textX, textY);
      break;
    case 2:
      image(img2, 0, 0, width, height);
      animateText("2025", textX, textY);
      break;
    case 3:
      image(img3, 0, 0, width, height);
      animateText("Directed by Shawn Levy and Ryan Reynolds", textX, textY);
      break;
  }

  if (replayButton) {
    displayReplayButton();
  }
}

void animateText(String text, float x, float y) {
  textFont(font);
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(255, textAlpha);
  text(text, x, y);

  textAlpha -= 1;
  textScale += 0.01;
  x += random(-1, 1);
  y += random(-1, 1);

  if (textAlpha <= 0) {
    if (screen < 3) {
      screen++;
      textAlpha = 255;
      textScale = 1.0;
      textX = width/2;
      textY = height/2;
    } else {
      replayButton = true;
    }
  }
}

void displayReplayButton() {
  fill(255);
  rect(250, 200, 140, 60);
  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Replay", 320, 230);
}

void mousePressed() {
  if (replayButton && mouseX > 250 && mouseX < 390 && mouseY > 200 && mouseY < 260) {
    screen = 1;
    textAlpha = 255;
    textScale = 1.0;
    textX = width/2;
    textY = height/2;
    replayButton = false;
  }
}
