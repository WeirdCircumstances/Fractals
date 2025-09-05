//Variablen
float posx, posy, nextposx, nextposy;
float angle = radians(270); //Blickrichtung der Schildkröte
int winkel = 45; //Drehwinkel
float step = 350;
int iteration = 12;

void setup(){
  size(1500, 1500);
  background(0);
  translate(width/2, height/2);
  strokeWeight(3);
  stroke(255);

  levy(step, angle, winkel, iteration);  
}



void levy (float step, float angle, int winkel, int iteration) {
  if(iteration > 0) {
    //linksWinkel
    angle -= radians(winkel);
    levy(step/1.414213562, angle, winkel, iteration-1);
    //rechtsWinkel
    angle += radians(winkel);
    //rechtsWinkel
    angle += radians(winkel);
    levy(step/1.414213562, angle, winkel, iteration-1);
    //linksWinkel
    angle -= radians(winkel);
  }else {
    //go one step
    nextposx = posx+cos(angle)*step;
    nextposy = posy+sin(angle)*step;
    line(posx, posy, nextposx, nextposy);
    posx = nextposx;
    posy = nextposy;
  }
  
}
