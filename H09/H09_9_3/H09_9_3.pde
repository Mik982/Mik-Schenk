float rekenSom;

void setup(){
  rekenSom = mijnSom(3, 9, 2);
  println(rekenSom);
  
}

float mijnSom (float getal, float getaltwee, float getaldrie){
  float berekening = getal + getaltwee / getaldrie;
  return berekening;
}
