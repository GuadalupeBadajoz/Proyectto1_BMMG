class Personaje4 {
  //atributos
  float tamano;
  

  
  //metodos
  Personaje4(){
    tamano = 0;
  
  
  }
  
  void display(float posx, float posy){
    fill(#6FA7B1);
    noStroke();
    triangle(posx, posy+20, posx+60, posy+20, posx+30, posy+70);
    fill(#3F6F59);
    triangle(posx+11, posy+10, posx+50, posy+10, posx+30, posy-23);
    stroke(0);
    strokeWeight(1);
    noFill();
    triangle(posx+7, posy+27, posx+53, posy+27, posx+30, posy-10);
    stroke(#0976C9);
    triangle(posx+23, posy+30, posx+37, posy+30, posx+30, posy+42);
    noStroke();
    fill(#308D8F);
    triangle(posx+18, posy+77, posx+43, posy+77, posx+30, posy+52);
    triangle(posx+3, posy-15, posx+17, posy-15, posx+10, posy-25);
  }
}
