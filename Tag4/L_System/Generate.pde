// generate a new sentence for every iteration from the axiome and the rules

class Generate {

  String next(String sentence) {

    len *= reduction;

    String nextSentence = "";
    for ( int i = 0; i < sentence.length(); i++) {
      char current = sentence.charAt(i);
      if (current == 'F') {
        nextSentence += ruleF;
      } else if (current == 'R') {
        nextSentence += ruleR;
      } else if (current == 'L') {
        nextSentence += ruleL;
      } else if (current == 'X') {
        nextSentence += ruleX;
      } else if (current == 'Y') {
        nextSentence += ruleY;
      } else if (current == 'f') {
        nextSentence += rulef;
      } else {
        nextSentence += current;
      }
    }
    sentence = nextSentence;

    return sentence;
  }
}
