
void pantallas(){
  switch(pantallas){
    case 0:
    pushMatrix();
    //fondo
    background(216, 210, 168);
    noStroke();
    fill(#BFBEA4); //columnas
    rect(0,0,80,600);
    rect(720,0,80,600);
    fill(255);         //cuadros
    rect(170,150,180,150,3);
    rect(380,200,260,150,3);
   
    String c = "Art";
    String d = "Wars";
    textSize(85);
    fill(56,177,224);
    text(c,200,250);
    fill(#FA812F);
    text(d,410,300);
    
    noStroke();              //luces
    fill(255, 255, 100, 45);
    triangle(200,-30, -300,600, 650,600);
    triangle(600,-30, 150,600, 1100,600);
    fill(50);
    triangle(200,-30, 140, 20, 250,20);
    triangle(600,-30, 550, 20, 660,20);
    
    textSize(30);
    text("Presiona A para comenzar",220,440);
    if(key == 'a' || key == 'A'){
    pantallas = 1;
    }
    popMatrix();
    break;
    
    
    case 1:
    pushMatrix();
    //fondo
    background(216, 210, 168);
    fill(#BFBEA4);
    noStroke();
    rect(-20, 0, 80,600); //columnas
    rect(243, 0, 80,600);
    rect(476, 0, 80,600);
    rect(739, 0, 80,600);
    
    fill(230,230,200);   //cuadros
    rect(80,80,100,100,3);   //P1
    rect(120,280,100,100,3); //P2
    rect(340,200,100,100,3); //P3
    rect(620,90,100,100,3);  //P4
    rect(580,300,100,100,3); //P5
    
    fill(50);             //etiquetas de instrucciones
    rect(80,200,100,40);
    rect(120,400,100,40);
    rect(340,320,100,40);
    rect(620,210,100,40);
    rect(580,420,100,40);
    
    p1.display(100,100);
    p2.display(140,300);
    p3.display(360,220);
    p4.display(640,110);
    p5.display(600,320);
    
    //luces fondo
    noStroke();
    fill(255, 255, 100, 40);
    triangle(200,-30, -300,600, 650,600);
    triangle(600,-30, 150,600, 1100,600);
    fill(50);
    triangle(200,-30, 140, 20, 250,20);
    triangle(600,-30, 550, 20, 660,20);
    
    //texto
    textSize(14);
    //jugador1
    fill(#63A6FF);
    text("Presiona q", 90,215); //persoanje1
    text("Presiona w", 130,415); //personaje2
    text("Presiona e", 350,335); //persoanje3
    text("Presiona r", 630,225); //personaje4
    text("Presiona t", 590,435); //personaje5
    //jugador2
    fill(#FF8A63);
    text("Presiona p", 90,233); //personaje1  
    text("Presiona o", 130,433); //personaje2
    text("Presiona i", 350,353); //personaje3
    text("Presiona u", 630,243); //personaje4
    text("Presiona y", 590,453); //personaje5 
    
    textSize(26);
    fill(#63A6FF);
    text("Jugador 1", 226, 540);
    fill(#FF8A63);
    text("Jugador 2", 460, 540);
    fill(0);
    text("Escojan a su personaje", 250, 140);
    
    if(keyPressed){
      switch(key){
       case 'q':
        j1 = true;
        jugador1 = 0;
        break;
       case 'w':
        j1 = true;
        jugador1 = 1;
        break;
       case 'e':
        j1 = true;
        jugador1 = 2;
        break;
       case 'r':
        j1 = true;
        jugador1 = 3;
        break;
       case 't':
        j1 = true;
        jugador1 = 4;
        break;
      }
    }
    if(keyPressed){
      switch(key){
       case 'p':
        j2 = true;
        jugador2 = 0;
        break;
       case 'o':
        j2 = true;
        jugador2 = 1;
        break;
       case 'i':
        j2 = true;
        jugador2 = 2;
        break;
       case 'u':
        j2 = true;
        jugador2 = 3;
        break;
       case 'y':
        j2 = true;
        jugador2 = 4;
        break;
      }
    }
    
    if(j1 && j2){
      pantallas = 2;
    }
    popMatrix();
    break;
    
    
    case 2:   //pantalla de pelea
    pushMatrix();
    //fondo
    background(136, 130, 88);
    noStroke();
    fill(#71705F); //columnas
    rect(0,0,80,600);
    rect(720,0,80,600);
    fill(210);
    rect(150, 150, 500, 290,5);
    noStroke();              //luces
    fill(255, 255, 100, 90);
    triangle(400,-30, 100,600,700,600);
    fill(255,50);
    triangle(250,-30, -50,600,550,600);
    triangle(550,-30, 250,600,850,600);
    fill(50);
    triangle(400,-30, 350, 20, 450,20);
    triangle(250,-30, 200, 20, 300,20);
    triangle(550,-30, 500, 20, 600,20);
    
     //texto
    fill(#63A6FF);
    textSize(15);
    text("Jugador 1",220,400);
    text("Atacas con S",220,420);
    fill(#FF8A63);
    text("Jugador 2",500,400);
    text("Atacas con L",500,420);
    fill(0);
    text("Presiona tu tecla cuando quieras lanzar un ataque, jugador 1 comienza.", 170, 490);
    text("Entre mas rojo este el indicador cuando ataques, mayor sera el daño", 170, 515);
    
    j_1.vida(100, 100);
    j_2.vida(500, 100);
    barra.display();
    barra.draw();
    
    //posicion de los personjajes 
    switch(jugador1){
     case 0:
      translate(0, 10);
      scale(2);
      p1.display(110, 100);
      break;
     case 1:
      translate(0, 10);
      scale(2);
      p2.display(110, 100);
      break;
     case 2:
      translate(0, 10);
      scale(2);
      p3.display(110, 100);
      break;
     case 3:
      translate(0, 10);
      scale(2);
      p4.display(110, 100);
      break;
     case 4:
      translate(0, 10);
      scale(2);
      p5.display(110, 100);
      break; 
    }
    switch(jugador2){
     case 0:
      scale(.5);
      translate(170, 0);
      scale(2);
      p1.display(150, 100);
      break;
     case 1:
      scale(.5);
      translate(170, 0);
      scale(2);
      p2.display(150, 100);
      break;
     case 2:
      scale(.5);
      translate(170, 0);
      scale(2);
      p3.display(150, 100);
      break;
     case 3:
      scale(.5);
      translate(170, 0);
      scale(2);
      p4.display(150, 100);
      break;
     case 4:
      scale(.5);
      translate(170, 0);
      scale(2);
      p5.display(150, 100);
      break; 
    }
    
    popMatrix();
    
    if(turno == 2){
      if(keyPressed){
        if(key == 'l' || key  == 'L'){
          barra.dx = 0;
          if(barra.posicionx > 201 && barra.posicionx < 432){
            rango = 0;
          }
          if(barra.posicionx > 431 && barra.posicionx < 572){
            rango = 1;
          }
          if(barra.posicionx > 571 && barra.posicionx < 598){
            rango = 2;
          }
          switch(rango){
            case 0:
            j_1.vida = j_1.vida - j_2.ataque*5;
            turno = 1;
            break;
            case 1:
            j_1.vida = j_1.vida - j_2.ataque*7;
            turno = 1;
            break;
            case 2:
            j_1.vida = j_1.vida - j_2.ataque*12;
            turno = 1;
            break;
          }
        }
      } 
    }
    
    if(turno == 1){
      if(keyPressed){
        if(key == 's' || key  == 'S'){
          barra.dx = 0;
          if(barra.posicionx > 201 && barra.posicionx < 432){
            rango = 0;
          }
          if(barra.posicionx > 431 && barra.posicionx < 572){
            rango = 1;
          }
          if(barra.posicionx > 571 && barra.posicionx < 598){
            rango = 2;
          }
          switch(rango){
            case 0:
            j_2.vida = j_2.vida - j_1.ataque*5;
            turno = 2;
            break;
            case 1:
            j_2.vida = j_2.vida - j_1.ataque*7;
            turno = 2;
            break;
            case 2:
            j_2.vida = j_2.vida - j_1.ataque*12;
            turno = 2;
            break;
          }
        }
      } 
    }
    if(j_1.vida <= 0 || j_2.vida <= 0){
      pantallas = 3;
    }
   
    break;
    
    case 3:
    background(136, 130, 88);
    noStroke();
    fill(#71705F); //columnas
    rect(0,0,80,600);
    rect(720,0,80,600);
    fill(210);              //cuadros
    rect(150, 150, 500, 290,5);
    fill(0);
    rect(150, 480, 500, 88);
    noStroke();              //luces
    fill(#78FFFE, 60);
    triangle(400,-30, 100,600,700,600);
    fill(255,50);
    triangle(250,-30, -50,600,550,600);
    triangle(550,-30, 250,600,850,600);
    fill(50);
    triangle(400,-30, 350, 20, 450,20);
    triangle(250,-30, 200, 20, 300,20);
    triangle(550,-30, 500, 20, 600,20);
    
    if(j_1.vida > 0){
      fill(#63A6FF);
      textSize(50);
      text("HAS GANADO", 250, 250);
      textSize(30);
      text("!Jugador Uno!", 320, 300);
    }
    if(j_2.vida > 0){
      fill(#FF8A63);
      textSize(50);
      text("HAS GANADO", 250, 250);
      textSize(30);
      text("!Jugador Dos!", 320,300);
    }
    
    
    textSize(15);
    
    text("Volver al inicio --       Presiona X",200,500);
    text("Elegir otro personaje --  Presiona V",200,525);
    text("Luchar otra vez --        Presiona C",200,550);
    if(key == 'x' || key == 'X'){
      pantallas = 0;
      j1 = false;
      j2 = false;
      j_1.vida = 100;
      j_2.vida = 100;
      turno = 2;
    }
    if(key == 'v' || key == 'V'){
      pantallas = 1;
      j1 = false;
      j2 = false;
      j_1.vida = 100;
      j_2.vida = 100;
      turno = 2;
    }
    if(key == 'c' || key == 'C'){
      pantallas = 2;
      j_1.vida = 100;
      j_2.vida = 100;
      turno = 2;
    }
    //break;
  }
}
