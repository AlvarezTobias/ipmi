//Alvarez Tobias
//Comision 1

PImage foto;

void setup() {
  foto= loadImage("licensed-image.jpg");
  size(800, 400);
  foto.resize(400,400);}


void draw() {
  background(190, 200, 150);
  image(foto, 0, 0);
  stroke(195, 160, 20);
  fill(195, 160, 20);
  ellipse(655, 170, 270, 220);
  circle(650, 190, 170);
  triangle(500, 50, 600, 200, 450, 300);//cola
  stroke(624, 567, 978);
  fill(0, 0, 0);
  circle(700, 150, 40);//ojo
  line(730,230 ,750, 230);

}
