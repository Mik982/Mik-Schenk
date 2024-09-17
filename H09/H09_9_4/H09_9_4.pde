void setup() {

  size(250, 250);

  background(255);

  mikvierkant(50, 50, 100, 100);

}

void mikvierkant(float x, float y, float breedte, float hoogte){

  line(150, 50, 150 + -100, 50);

  line(x + breedte, y, x + breedte, y + hoogte);  

  line(x + breedte, y + hoogte, x, y + hoogte);  

  line(x, y + hoogte, x, y); 

}
 
