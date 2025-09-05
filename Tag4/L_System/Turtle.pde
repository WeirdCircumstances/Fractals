// walk the sentence with a turtle to draw a pattern

class Turtle {

  void go(String sentence) {

    // go char by char through the sentence and draw a pattern

    for (int i = 0; i < sentence.length(); i++) {
      char current = sentence.charAt(i);

      if (current == 'F') {
        stroke(h, 360, 360);
        h++;
        h = h % 360;

        line(0, 0, 0, -len);
        translate(0, -len);
      } else if (current == 'f') {
        translate(0, -len);
      } else if (current == 'R') {
        stroke(h, 360, 360);
        h++;
        h = h % 360;

        line(0, 0, 0, -len);
        translate(0, -len);
      } else if (current == 'L') {
        stroke(h, 360, 360);
        h++;
        h = h % 360;

        line(0, 0, 0, -len);
        translate(0, -len);
      } else if (current == '+') {
        rotate(angle);
      } else if (current == '-') {
        rotate(-angle);
      } else if (current == '|') {
        rotate(PI);
      } else if (current == '[') {
        pushMatrix();
      } else if (current == ']') {
        popMatrix();
      }
    }

    println(sentence);
    println(iter + ". Iteration, " + sentence.length() + " Zeichen");
    iter++;
  }
}
