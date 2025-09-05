// generate patterns using Lindenmayer Systems

String axiom, sentence, ruleF, ruleR, ruleL, ruleX, ruleY, rulef; // deklarieren von allen bekannten Regeln
float len, angle = 0; // anlegen der Werte für Länge und Winkel. Beides muss in float (Fleißkommazahl) geschehen.
int iter = 0; // Wert für Iteration erzeugen

Generate generate = new Generate(); // das Objekt für generate erzeugen, damit wird der Satz erzeugt

Turtle turtle = new Turtle(); // das Objekt turtle erzeugen

void setup() {
  sentence = "F--F--F";
  println(sentence);
  println(iter + ". Iteration, " + sentence.length() + " Zeichen");
  
  //neue Befehle
  background(255);  // Hintergrund auf weiß setzen
  size(800, 800); // Größe der Arbeitsfläche definieren ( x und y)
  stroke(0); // Strichfarbe auf schwarz setzen
  
  len = 200; // Länge eines Strichs definieren
  angle = 60; // den Winkel definieren
  angle = radians(angle); // den Winkel mit radians() in das Winkelmaß umrechnen
  
  translate(width/2, height/2); // Zeichnung in die Mitte schieben
  
  turtle.go(sentence); // Grundform (ersten Satz oder Axiom) zeichnen
}

void draw() {
  translate(width/2, height/2); // Zeichnung in die Mitte schieben
}

void mouseClicked() {
  background(255); // Hintergrund auf weiß setzen
  
  sentence = generate.next(sentence);
  len = len/3; // Länge wird nach jedem Schritt durch drei teilt
  turtle.go(sentence); // die Turtle den Sentence laufen lassen
}
