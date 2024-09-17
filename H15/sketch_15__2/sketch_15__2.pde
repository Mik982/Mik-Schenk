class persoon {

  String naam;
  int leeftijd;
  String geslacht;
  persoon(String naam, int leeftijd, String geslacht) {
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }
 void Info() {
    println("Ik ben " + naam);
    println("Ik ben een " + geslacht);
    println("Ik ben " + leeftijd + " jaar oud");
  }
}void setup() {

  persoon mik = new persoon("Mik", 17, "man");


  mik.Info();
}
