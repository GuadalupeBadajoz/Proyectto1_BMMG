class Personaje5 {
  //atributos
  float tamano;
  
 
  
  //metodos
  Personaje5(){
    tamano = 0;
 
 
  }
  
  void display(float posx, float posy){
    stroke(0);
    strokeWeight(1);
    line(posx, posy, posx+50, posy+20);
    line(posx+10, posy+15, posx+50, posy+20);
    line(posx+3, posy+70, posx+27, posy-5);
    line(posx+60, posy+50, posx+27, posy-5);
    strokeWeight(2);
    line(posx+30, posy+30, posx+75, posy+35);
    line(posx-10, posy+30, posx+25, posy+70);
    noStroke();
    fill(#553A62);
    ellipse(posx-3, posy-3, tamano+18, tamano+18);
    fill(#E5D242);
    triangle(posx+40, posy+60, posx+63, posy+27,posx+40, posy+40);
    
  }
  
 
}
