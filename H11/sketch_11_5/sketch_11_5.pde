String[] namen = {"dirk", "jan", "gojo", "daan"};  
void setup() {
  
  for (String naam : namen) {
    if (naam == "jan") { 
      println("klopt");
      return;  
    }
  }
  println("klopt niet");  
}
