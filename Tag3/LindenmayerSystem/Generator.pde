// generate a new sentence for every iteration from the axiome and the rules

class Generate {
  
  String next(String sentence) { // ein neues Attribut mit dem Namen next für die Klasse Generate

    String nextSentence = ""; // eine neue leere Zeichenkette mit dem Namen nextSentence
    for ( int i = 0; i < sentence.length(); i++) { // Zähleschleife, die durch jedes Zeichen des Satzes wandert
      char current = sentence.charAt(i); // das aktuelle Zeichen in current speichern
      
      // Es wird das aktuelle Zeichen mit den bekannten Regeln verglichen.
      // Wenn eine der Regeln zutrifft, wird die Zeichenkette nextSentence passend erweitert
      
      if (current == 'F') {
        nextSentence += "F+F--F+F";
      } 
      //else if (current == 'R') {
      //  nextSentence += ruleR;
      //} else if (current == 'L') {
      //  nextSentence += ruleL;
      //} else if (current == 'X') {
      //  nextSentence += ruleX;
      //} else if (current == 'Y') {
      //  nextSentence += ruleY;
      //} else if (current == 'f') {
      //  nextSentence += rulef;
      //} 
      else {
        nextSentence += current; // Wenn keine bekannte Regel zutrifft, wird das aktuelle Zeichen einfach übernommen
      }
    }
    sentence = nextSentence; // eigentlich unnötig, sieht aber schöner aus
    
    iter++; // nach jeder Generierung wird der Iterastionszähler um eins erhöht
    println(sentence); // schreibt den Satz in das Terminal unten, danach kommt noch ein Zeilenumbruch dazu 
    println(iter + ". Iteration, " + sentence.length() + " Zeichen"); // gibt uns hilfreiche Informationen über den Satz
    
    return sentence; // gibt den neu generierten Satz zurück
  }
}
