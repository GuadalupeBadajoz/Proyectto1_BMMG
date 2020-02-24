int pantallas = 0;

Personaje1 p1;
Personaje2 p2;
Personaje3 p3;
Personaje4 p4;
Personaje5 p5;

Personaje j_1;
Personaje j_2;
Barra barra;

int jugador1, jugador2;
boolean j1, j2;
int turno = 1;
int rango;


void setup(){
  size(800, 600);
  p1 = new Personaje1();
  p2 = new Personaje2();
  p3 = new Personaje3();
  p4 = new Personaje4();
  p5 = new Personaje5();
  j_1 = new Personaje(1, 100);
  j_2 = new Personaje(1, 100);
  barra = new Barra();
}


void draw(){
  pantallas();
  
}

class Barra{
  float fuerza;
  float dx;
  float posicionx = 202;
  
  void display(){
    noFill();
    strokeWeight(1);
    stroke(0);
    rect(200, 450, 400, 15);
    noStroke();
    fill(#FFF74F);
    rect(202, 452, 230, 11);
    fill(#FFBF4F);
    rect(432, 452, 140, 11);
    fill(#FF4F4F);
    rect(572, 452, 26, 11);
  }
  
  void draw(){
    dx = 8;
    posicionx = posicionx + dx;
    
    if(posicionx > 600){
      posicionx = 202;
    }
    
    
    stroke(0);
    strokeWeight(5);
    line(posicionx, 447, posicionx, 468); 
  }
  
   
}

class Personaje{
  int ataque;
  int vida;
  
  Personaje(int a, int v){
    ataque = a;
    vida = v;
  }
  
  void vida(float x, float y){
    int Hp = vida*2;
    strokeWeight(1);
    stroke(0);
    noFill();
    rect(x, y, 203, 10);
    noStroke();
    fill(50,250,100);
    rect(x+2, y+2, Hp, 7);  
 
  }
  
}
