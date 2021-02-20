// rules for all L-Systems

class LS {

  StringDict rules = new StringDict();

  // initialyze empty dictionary
  StringDict put(int i) { 
    rules.set("axiom", "0");
    rules.set("len", "0");
    rules.set("angle", "0");
    rules.set("reduction", "0");
    rules.set("ruleF", "0");
    rules.set("ruleR", "0");
    rules.set("ruleL", "0");
    rules.set("ruleX", "0");
    rules.set("ruleY", "0");
    rules.set("rulef", "0");
    rules.set("xWidth", "1");
    rules.set("yHeigth", "1");
    rules.set("setX", "0");
    rules.set("setY", "0");

    if (i == 1) {
      //Koch
      rules.set("axiom", "F--F--F");
      rules.set("len", "400");
      rules.set("angle", "60");
      rules.set("reduction", "0.3333");
      rules.set("ruleF", "F+F--F+F");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "100");
      rules.set("setY", "200");
    }
    if (i == 2) {
      // Koch 90 Grad
      rules.set("axiom", "F");
      rules.set("len", "200");
      rules.set("angle", "90");
      rules.set("reduction", "0.3333");
      rules.set("ruleF", "F+F−F−F+F");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
    }
    if (i == 3) {
      // Tree
      rules.set("axiom", "F");
      rules.set("len", "200");
      rules.set("angle", "25");
      rules.set("reduction", "0.5");
      rules.set("ruleF", "FF+[+F-F+F]-[-F+F-F]");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "1");
    }
    if (i == 4) {
      // Plant
      rules.set("axiom", "X");
      rules.set("len", "300");
      rules.set("angle", "25");
      rules.set("reduction", "0.5");
      rules.set("ruleF", "FF");
      rules.set("ruleX", "F+[[X]-X]-F[-FX]+X");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "1");
    }
    if (i == 5) {
      // Levy
      rules.set("axiom", "F");
      rules.set("len", "300");
      rules.set("angle", "45");
      rules.set("reduction", "0.707");
      rules.set("ruleF", "+F--F+");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "-100");
      rules.set("setY", "100");
    }
    if (i == 6) {
      // Drachenkurve
      rules.set("axiom", "R"); // oder L
      rules.set("len", "400");
      rules.set("angle", "45");
      rules.set("reduction", "0.707");
      rules.set("ruleR", "+R--L+");
      rules.set("ruleL", "-R++L-");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "-50");
      rules.set("setY", "200");
    }
    if (i == 7) {
      // Gosper
      rules.set("axiom", "R"); // oder L
      rules.set("len", "400");
      rules.set("angle", "60");
      rules.set("reduction", "0.3779");
      rules.set("ruleR", "R+L++L-R--RR-L+");
      rules.set("ruleL", "-R+LL++L+R--R-L");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "0");
      rules.set("setY", "100");
    }
    if (i == 8) {
      // Hilbert
      rules.set("axiom", "X");
      rules.set("len", "500");
      rules.set("angle", "90");
      rules.set("reduction", "0.5");
      rules.set("ruleF", "F");
      rules.set("ruleX", "-YF+XFX+FY-");
      rules.set("ruleY", "+XF-YFY-FX+");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "200");
      rules.set("setY", "200");
    }
    if (i == 9) {
      // Peano
      rules.set("axiom", "X");
      rules.set("len", "600");
      rules.set("angle", "90");
      rules.set("reduction", "0.333"); // not perfect
      rules.set("ruleF", "F");
      rules.set("ruleX", "XFYFX+F+YFXFY-F-XFYFX");
      rules.set("ruleY", "YFXFY-F-XFYFX+F+YFXFY");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "-200");
      rules.set("setY", "200");
    }
    if (i == 10) {
      // Peano2
      rules.set("axiom", "F");
      rules.set("len", "600");
      rules.set("angle", "90");
      rules.set("reduction", "0.333");
      rules.set("ruleF", "F-F+F+F+F-F-F-F+F");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "0");
      rules.set("setY", "300");
    }
    if (i == 11) {
      // Penta Plexity 
      rules.set("axiom", "F++F++F++F++F");
      rules.set("len", "400");
      rules.set("angle", "36");
      rules.set("reduction", "0.3819660112501051517954132"); 
      rules.set("ruleF", "F++F++F|F-F++F");
      rules.set("xWidth", "2"); // -300
      rules.set("yHeigth", "2"); // +200
      rules.set("setX", "-300");
      rules.set("setY", "200");
    }
    if (i == 12) {
      // Pfeilspitze 
      rules.set("axiom", "R"); // oder L
      rules.set("len", "600");
      rules.set("angle", "60");
      rules.set("reduction", "0.5"); 
      rules.set("ruleR", "-L+R+L-");
      rules.set("ruleL", "+R-L-R+");
      rules.set("xWidth", "2");
      rules.set("yHeigth", "2");
      rules.set("setX", "200");
      rules.set("setY", "300");
    }
    if (i == 13) {
      // Sierpinski 
      rules.set("axiom", "FXF--FF--FF");
      rules.set("len", "300");
      rules.set("angle", "60");
      rules.set("reduction", "0.5"); 
      rules.set("ruleF", "FF");
      rules.set("ruleX", "--FXF++FXF++FXF--");
      rules.set("xWidth", "2"); // +200
      rules.set("yHeigth", "2"); // +300
      rules.set("setX", "200");
      rules.set("setY", "300");
    }
    if (i == 14) {
      // Sierpinski 2. Variante 
      rules.set("axiom", "F--F--F");
      rules.set("len", "600");
      rules.set("angle", "60");
      rules.set("reduction", "0.5"); 
      rules.set("ruleF", "F--F--F--ff");
      rules.set("rulef", "ff");
      rules.set("xWidth", "2"); // +200
      rules.set("yHeigth", "2"); // +200
      rules.set("setX", "200");
      rules.set("setY", "300");
    }
    if (i == 15) {
      // Sierpinski-Teppich 
      rules.set("axiom", "F");
      rules.set("len", "600");
      rules.set("angle", "90");
      rules.set("reduction", "0.333"); 
      rules.set("ruleF", "F+F-F-FF-F-F-fF");
      rules.set("rulef", "fff");
      rules.set("xWidth", "2"); // +200
      rules.set("yHeigth", "2"); // +200
      rules.set("setX", "00");
      rules.set("setY", "300");
    }
    return rules;
  }
}
