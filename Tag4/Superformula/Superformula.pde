// https://en.wikipedia.org/wiki/Superformula
// https://www.youtube.com/watch?v=u6arTXBDYhQ

int h = 0;
float t = 0;
boolean change = false;

void setup() {
  size(800, 800);
  colorMode(HSB, 360);
  strokeWeight(1);
  background(0, 0, 360);
}

void draw() {
  //background(0, 0, 360);
  stroke(h, 360, 360);
  fill(h, 360, 360);
  h++;
  h = h % 360;

  translate(height / 2, width / 2);

  beginShape();

  for (float phi = 0; phi <= 2 * PI; phi += 0.01) {
    float rad = r(phi,
      mouseX / 20.0, //a
      mouseY / 20.0, //b
      t, //m - no of spikes
      2, //n1 - bigger makes is more smoothe
      sin(t) * 0.5 + 0.5, //n2 - size x
      cos(t) * 0.5 + 0.5 //n3 - size y
      );
    float x = rad * cos(phi) * 50;
    float y = rad * sin(phi) * 50;
    vertex(x, y);
  }

  endShape();
  
  if ( t > 50 || t < 0){
    change = !change;
  }
  if (change) {
    t -= 0.1;
  }
  else {
    t += 0.1;
  }
}

float r(float phi, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m * phi / 4.0) / a), n2) + pow(abs(sin(m * phi / 4.0) / b), n3), -1.0 / n1);
}
