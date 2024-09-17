int mijnGetal = 17;


void setup() {
  mijnMethode(mijnGetal, 8);
  mijnMethode(mijnGetal, 3);
  
}

void mijnMethode(int getal, int getaltwee){
  int totaal = getal + getaltwee / 2;
  println( + getal + " " + getaltwee + " " +totaal);
}
