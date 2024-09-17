
class figuur {
  float width, height, x, y;

 
  figuur(float w, float h, float xpos, float ypos) {
    width = w;
    height = h;
    x = xpos;
    y = ypos;
  }


  void draw() {
    rect(x, y, width, height);
  }
}
figuur mijnfiguur;

void setup() {
  size(400, 400);  
  mijnfiguur = new figuur(100, 50, 150, 150);  
}

void draw() {
  background(255); 
  mijnfiguur.draw();  
}
