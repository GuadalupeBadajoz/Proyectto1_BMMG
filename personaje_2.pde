class Personaje2 {
  //atributos
  float tamano;


  
  //metodos
  Personaje2(){
    tamano = 0;

  
  }
  
  void display(float posx, float posy){
    noFill();
    stroke(1);
    ellipse(posx+30, posy+30, 60, 60);
    ellipse(posx+33, posy+33, 50, 50);
    ellipse(posx+35, posy+35, 40, 40);
    ellipse(posx+33, posy+33, 30, 30);
    ellipse(posx+30, posy+30, 20, 20);
    ellipse(posx+28, posy+28, 10, 10);
    
  }
  

  
}
