// Dieses Programm benutzt Parametrische Gleichungen
// das ist ein Einzeilenkommentar

/*

 Alles hier ist ein Kommentar

 */

int t = 0;
int number = 50;
int c = 0;

void setup() {
  background(255);
  size(800, 800);
  translate(width/2, height/2);
  //point(0,0);
  //ellipse(0,0,100,100);
  colorMode(HSB, 360);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  strokeWeight(2);
  stroke(c,360,360);

  for (int i = 0; i < number; i++) {
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }

  c++;
  c = c % 360;

  //point(x(t),y(t));

  t++;
}

float x1(float t) {
  return cos(t / 45) * 100 ;
}

float y1(float t) {
  return sin(t / 65) * 100;
}

float x2(float t) {
  return cos(t / 45) * 300 ;
}

float y2(float t) {
  return sin(t / 35) * 200;
}
