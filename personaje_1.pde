class Personaje1 {
  //atributos
  float tamano;

 
  
  //metodos
  Personaje1(){
    tamano = 0;
  
  
  }
  
  void display(float posx, float posy){
    fill(255);
    noStroke();
    rect(posx, posy, tamano+60, tamano+60); //blanclo base
    fill(255,240,80);
    rect(posx+35, posy-6, tamano+18, tamano+31); //amarillo
    strokeWeight(2);
    stroke(0);
    noFill();
    rect(posx+7, posy+7, tamano+46, tamano+46); //marco negro
    strokeWeight(2);
    fill(200,50,0);
    rect(posx+7, posy+7, tamano+28, tamano+28); //rojo
    fill(0);
    rect(posx+8, posy+36, tamano+10, tamano+8); //negro
    noFill();
    rect(posx-10, posy+44, tamano+63, tamano+20); // marco rectangular negro
    fill(50, 20, 200);
    rect(posx+35, posy+44, tamano+24, tamano+9); //azul
    
  }
  
}
