// generate patterns using L-Systems

String axiom, sentence, ruleF, ruleR, ruleL, ruleX, ruleY, rulef;
float len, angle, reduction, xWidth, yHeigth = 0;
int pattern, h, iter = 0;

Turtle turtle = new Turtle();
Generate generate = new Generate();

void setup() {
  /*
  Choose a number for a pattern:
   1: Koch 
   2: Koch 90 degree - not working
   3: Tree 
   4: Plant
   5: Levy 
   6: Drachenkurve 
   7: Gosper 
   8: Hilbert  
   9: Peano 
   10: Peano2 
   11: Penta Plexity  
   12: Pfeilspitze 
   13: Sierpinski 
   14: Sierpinski 2 
   15: Sierpinski-Teppich 
   */

  pattern = 1;

  LS rules = new LS();

  axiom = rules.put(pattern).get("axiom");
  len = float(rules.put(pattern).get("len"));
  angle = float(rules.put(pattern).get("angle"));
  reduction = float(rules.put(pattern).get("reduction"));
  ruleF = rules.put(pattern).get("ruleF");
  ruleR = rules.put(pattern).get("ruleR");
  ruleL = rules.put(pattern).get("ruleL");
  ruleX = rules.put(pattern).get("ruleX");
  ruleY = rules.put(pattern).get("ruleY");
  rulef = rules.put(pattern).get("rulef");

  xWidth = width / float(rules.put(pattern).get("xWidth")) + float(rules.put(pattern).get("setX"));
  yHeigth = height / float(rules.put(pattern).get("yHeigth")) + float(rules.put(pattern).get("setY"));

  angle = radians(angle);
  sentence = axiom;

  background(0);
  size(800, 800);
  colorMode(HSB, 360);
  stroke(h, 360, 360);
  strokeWeight(3);
  translate(xWidth, yHeigth);

  turtle.go(sentence);
}

void draw() {
  translate(xWidth, yHeigth);
}

void mouseClicked() {
  background(0);
  sentence = generate.next(sentence);
  turtle.go(sentence);
}
