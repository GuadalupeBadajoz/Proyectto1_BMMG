class Personaje3 {
  //atributos
  float tamano;
 
 
  
  //metodos
  Personaje3(){
    tamano = 0;

   
  }
  
  void display(float posx, float posy){
    noStroke();
    fill(#FCED34);
    rect(posx+5, posy-10, tamano+44, tamano+88);
    fill(#FFF0AA);
    rect(posx+34, posy, tamano+10, tamano+35);
    rect(posx+20, posy+15, tamano+3, tamano+35);
    fill(30);
    rect(posx+10, posy-5, tamano+20, tamano+35);
    rect(posx+30, posy+30, tamano+5, tamano+22);
    rect(posx+23, posy+52, tamano+7, tamano+25);
    rect(posx+12, posy+45, tamano+4, tamano+27);
    fill(#D4984B);
    rect(posx+42, posy+32, tamano+3, tamano+20);
  }
}
