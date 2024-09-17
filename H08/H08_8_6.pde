int sizeC = 100;
size(250,250);
background(255,255,255);



for(int i = 0; i < 5; i++){
  ellipse(250 - sizeC/2, 150 - sizeC/2, sizeC,sizeC);
  sizeC = sizeC - 10;
}
