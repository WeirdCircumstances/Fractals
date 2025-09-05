// generate patterns using L-Systems

String axiom, sentence, ruleF, ruleR, ruleL, ruleX, ruleY, rulef;
float len, angle, reduction, xWidth, yHeigth = 0;
int pattern, h, iter = 0;

Generate generate = new Generate();

void setup() {
  sentence = "F--F--F";
  println(sentence);
  println(iter + ". Iteration, " + sentence.length() + " Zeichen");
}

void draw() {
  translate(xWidth, yHeigth);
}

void mouseClicked() {
  background(0);
  sentence = generate.next(sentence);
  
}



class Generate {
  // generate a new sentence for every iteration from the axiome and the rules

  String next(String sentence) {

    String nextSentence = "";
    for ( int i = 0; i < sentence.length(); i++) {
      char current = sentence.charAt(i);
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
        nextSentence += current;
      }
    }
    sentence = nextSentence;
    
    iter++;
    println(sentence);
    println(iter + ". Iteration, " + sentence.length() + " Zeichen");
    
    return sentence;
  }
}
