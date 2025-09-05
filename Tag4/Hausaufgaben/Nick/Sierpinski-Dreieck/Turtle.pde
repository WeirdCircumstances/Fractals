// walk the sentence with a turtle to draw a pattern

class Turtle {

  void go(String sentence) { // es wird das Attribut go angelegt

    // go char by char through the sentence and draw a pattern

    for (int i = 0; i < sentence.length(); i++) { // wie bei generate wird der Satz Zeichen für Zeichen gelesen
      char current = sentence.charAt(i);

// anstatt wie voher bei generate den Satz zu verändern, wird hier jedes Zeichen interpretiert

      if (current == 'F') {
        line(0, 0, 0, -len); // eine Linie besteht aus 4 Koordinaten: Dem x und y Wert des Startpunkts und dem x und y des Zielpunkts
        translate(0, -len); // nachdem die Linie gezeichnet wurde, soll die nächste Linie da anfangen, wo die alte aufgehört hat
      } else if (current == 'f') { // bei einer Regel mit einem Kleinbuchstaben soll keine Linie gezeichnet werden, also springe ich gleich zum Zielpunkt
        translate(0, -len);
      } else if (current == 'R') { 
        line(0, 0, 0, -len);
        translate(0, -len);
      } else if (current == 'L') {
        line(0, 0, 0, -len);
        translate(0, -len);
      } else if (current == '+') { // Drehung um einen Winkel der das Winkelmaß benutzt (daher die Umrechnung mit radians())
        rotate(angle);
      } else if (current == '-') {
        rotate(-angle);
      } else if (current == '|') { // Drehung um 180°, was genau Pi entspricht
        rotate(PI);
      } else if (current == '[') { // Die genaue Erklärung kommt später. Damit kann ich die "Astgabel" eines fraktalen Baums speichern.
        pushMatrix();
      } else if (current == ']') { // Damit kehre ich zur Astgabel zurück.
        popMatrix();
      }
    }
  }
}
