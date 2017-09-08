int staticc;
int f;
int Px [];
int Py [];
int Rte [];
color Colf [];
float ejeZ = 1;
int level = 0;
int o = 1;
int q = 1;
int contadorP = 0;

void setup()
{
  fullScreen();
  
  Px = new int [7];
  Py = new int [7];
  Rte = new int [7];
  Colf = new int [7];

 Programa();
 
}

void Programa()
{
  for (f = 0 ; f < 7 ; f ++)
  {
    if(f == 0)
    {
      Px [0] = 1230;
      Py [0] = 165;
      Rte [0] = 0;
      Colf [0] = color ( 234 , 13 , 103 );
    }
    else if (f == 1)
    {
      Px [1] = 1210;
      Py [1] = 425;
      Rte [1] = 1;
      Colf [1] = color( 95,235,73 );
    }
    else if (f == 2)
    {
      Px [2] = 1260;
      Py [2] = 650;
      Rte [2] = 2;
      Colf [2] = color( 7,240,162 );
    }
    else if (f == 3)
    {
      Px [3] = 150;
      Py [3] = 150;
      Rte [3] = 3;
      Colf [3] = color( 254,150,45 );
    }
    else if (f == 4)
    {
      Px [4] = 130;
      Py [4] = 480;
      Rte [4] = 4;
      Colf [4] = color( 90,11,40 );
    }
    else if (f == 5)
    {
      Px [5] = 250;
      Py [5] = 600;
      Rte [5] = f;
      Colf [5] = color(19 , 72 , 107);
    }
    else if ( f == 6)
    {
      Px [6] = 255;
      Py [6] = 280;
      Rte [6] = 6;
      Colf [6] = color(226 , 236 , 5);
    }
  }
  staticc = -1;
}

void draw()
{
  scale(4);
  contorno();
  scale(0.25);
  
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text("Nivel", (width/2)-60, 10);
      text(level, (width/2)+50, 10);
      line((width/2)-135,60,(width/2)+85,60);
      
      textSize(25);
      textAlign(CENTER,BOTTOM);
      text("Para Salir Presione ESC", width/2, height);
  
   Figuras();
   
  for(f = 0 ; f < 7 ; f++)
  {
    pushMatrix();
    translate(Px [f] , Py [f]);
    rotate(Rte [f] * radians(45));
    fill(Colf [f]);
    scale(4);

    switch(f)
    {
      case 0:
        beginShape(TRIANGLES);
        vertex(-48 , -16);
        vertex(16 , -16);
        vertex(16 , 48);
        endShape();
      break;
      
      case 1:
        beginShape(TRIANGLES);
        vertex(-48 , -16);
        vertex(16 , -16);
        vertex(16 , 48);
        endShape();
      break;
      
      case 2:
        beginShape(TRIANGLES);
        vertex(-24 , -8);
        vertex(8 , -8);
        vertex(8 , 24);
        endShape();
      break;
      
      case 3:
        beginShape(TRIANGLES);
        vertex(-24 , -8);
        vertex(8 , -8);
        vertex(8 , 24);
        endShape();
      break;
      
      case 4:
        beginShape(TRIANGLES);
        vertex(-16 , 0);
        vertex(16 , 32);
        vertex(16 , -32);
        endShape();
      break;
      
      case 5:
        beginShape(QUADS);
        vertex(-16*ejeZ , 0);
        vertex(-16*ejeZ , -32);
        vertex(16*ejeZ , 0);
        vertex(16*ejeZ , 32);      
        endShape();
      break;
      
      case 6:
        rect(-16 , -16 , 32 , 32);
      break;
    }
    popMatrix();
  }
  
  if( (staticc != -1) && mousePressed )
  {
    Px[staticc] += mouseX-pmouseX;
    Py[staticc] += mouseY-pmouseY;
  }
  Instrucciones();
  contarPix();
}
void Figuras()
{
  if (level == 1)
    {
     
      //fill(0);
      //textSize(50);
      //textAlign(CENTER,TOP);
      //text("  .Cuadrado", (width/2+175), 10);
    }
    else if (level == 2)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(". Gato", (width/2+140), 10);
    }
    else if (level == 3)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Cisne", (width/2+140), 10);
    }
     else if (level == 4)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text("   . Camello", (width/2+145), 10);
    }
     else if (level == 5)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Hoja de árbol", (width/2+240), 10);
    }
     else if (level == 6)
    {
     fill(0);
     textSize(50);
     textAlign(CENTER,TOP);
     text(". Barco", (width/2+150), 10); 
    }
     else if (level == 7)
    {
    fill(0);
    textSize(50);
    textAlign(CENTER,TOP);
    text("  . Columna", (width/2+175), 10); 
    }
     else if (level == 8)
    {
    fill(0);
    textSize(50);
    textAlign(CENTER,TOP);
    text(" . Pirámide", (width/2+180), 10); 
    }
     else if (level == 9)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Florero", (width/2+160), 10);  
    }
     else if (level == 10)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Buque", (width/2+170), 10);   
    }
     else if (level == 11)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Flor", (width/2+142), 10);  
    }
     else if (level == 12)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text("  . Perro", (width/2+150), 10); 
    }
     else if (level == 13)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Casa", (width/2+150), 10);  
    }
     else if (level == 14)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text("  . Reloj de arena", (width/2+260), 10);  
    }
     else if (level == 15)
    {
      fill(0);
      textSize(50);
      textAlign(CENTER,TOP);
      text(" . Corona", (width/2+177), 10);  
    }
}
void contorno()
{
  background(218, 247, 166);
  fill(255);

    if (level == 1)
    {
      rect(((width/2)-230)/4,((height/2)-180)/4,92,92); 
    }
    else if (level == 2)
    {
       beginShape();
        vertex(110,20);
        vertex(132.6274,42.6274);
        vertex(155.2548,20);
        vertex(155.2548,65.2548);
        vertex(200.5097,110.5097);
        vertex(200.5097,174.5097);
        vertex(232.5097,142.5097);
        vertex(264.5097,142.5097);
        vertex(232.5097,174.5097);
        vertex(136.5097,174.5097);
        vertex(155.2548,155.7645);
        vertex(155.2548,129.2548);
        vertex(123.2548,97.2548);
        vertex(132.6274,87.8823);
        vertex(110,65.2548);
       endShape(CLOSE);
    }
    else if (level == 3)
    {
     beginShape();
        vertex(150.5302,28.6317);
        vertex(173.1577,51.2591);
        vertex(173.1577,96.5139);
        vertex(159.9028,109.7688);
        vertex(250.4125,109.7688);
        vertex(205.1577,155.0236);
        vertex(223.9028,173.7688);
        vertex(159.9028,173.7688);
        vertex(127.9028,141.7688);
        vertex(127.9028,96.5139);
        vertex(150.5302,73.8865);
        vertex(150.5302,60.6317);
        vertex(118.5302,60.6317);
      endShape(CLOSE);  
    }
    else if(level == 4)
    {
      beginShape();
        vertex(242.5151,41.2885);
        vertex(219.8877,63.916);
        vertex(219.8877,109.1708);
        vertex(197.2603,131.7982);
        vertex(197.2603,177.053);
        vertex(152.0055,131.7982);
        vertex(110.6329,173.1708);
        vertex(110.6329,109.1708);
        vertex(142.6329,77.1708);
        vertex(152.0055,86.5434);
        vertex(174.6329,63.916);
        vertex(197.2603,86.5434);
        vertex(197.2603,41.2885);
      endShape(CLOSE);
    }
    else if (level == 5)
    {
    beginShape();
      vertex(233.8652,97.1888);
      vertex(169.8652,33.1888);
      vertex(137.8652,65.1888);
      vertex(137.8652,81.1888);
      vertex(105.8652,81.1888);
      vertex(105.8652,113.1888);
      vertex(137.8652,113.1888);
      vertex(137.8652,129.1888);
      vertex(169.8652,161.1888);
    endShape(CLOSE); 
    }
    else if (level == 6)
    {
      beginShape();
        vertex(40+158.6013,22.6563);
        vertex(40+158.6013,99.9111);
        vertex(40+203.8562,145.166);
        vertex(40+178.4836,145.166);
        vertex(40+155.8562,167.7934);
        vertex(40+110.6013,167.7934);
        vertex(40+87.9739,145.166);
        vertex(40+62.6013,145.166);
        vertex(40+126.6013,81.166);
        vertex(40+113.3465,67.9111);
      endShape(CLOSE);
    }
    else if (level == 7)
    {
     beginShape();
      vertex(125.4952,157.2548);
      vertex(216.0048,157.2548);
      vertex(202.75,144);
      vertex(202.75,48);
      vertex(216.0048,34.7452);
      vertex(125.4952,34.7452);
      vertex(138.75,48);
      vertex(138.75,144);
     endShape(CLOSE);
    }
     else if (level == 8)
    {
     beginShape();
      vertex(80.2403,50.7452);
      vertex(170.75,141.2548);
      vertex(261.2597,50.7452);
      vertex(80.2403,50.7452);
     endShape(CLOSE); 
    }
     else if (level == 9)
    {
    beginShape();
      vertex(106.75,128);
      vertex(234.75,128);
      vertex(234.75,96);
      vertex(202.75,64);
      vertex(216.0048,50.7452);
      vertex(125.4952,50.7452);
      vertex(138.75,64);
      vertex(106.75,96);
    endShape(CLOSE);
    } 
     else if (level == 10)
    {
      beginShape();
        vertex(84.7538,123.9984);
        vertex(244.7538,123.9984);
        vertex(276.7538,91.9984);
        vertex(180.7538,91.9984);
        vertex(180.7538,59.9984);
        vertex(116.7538,59.9984);
        vertex(116.7538,91.9984);
        vertex(52.7538,91.9984);
      endShape(CLOSE);
    }
     else if (level==11)
    {
    beginShape();
        vertex(10+155.2771,209.9857-30);
        vertex(10+219.2771,145.9857-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+200.5319,100.7309-30);
        vertex(10+155.2771,55.476-30);
        vertex(10+110.0222,100.7309-30);
        vertex(10+155.2771,145.9857-30);
        vertex(10+91.2771,145.9857-30);
      endShape(CLOSE);  
    }
     else if (level == 12)
    {
      beginShape();
      vertex(125.0646,148.9754);
      vertex(170.3194,148.9754);
      vertex(170.3194,116.9754);
      vertex(228.8291,116.9754);
      vertex(228.8291,148.9754);
      vertex(260.8291,148.9754);
      vertex(260.8291,116.9754);
      vertex(215.5742,71.7206);
      vertex(125.0646,71.7206);
      vertex(106.3194,52.9754);
      vertex(106.3194,71.7206);
      vertex(83.692,94.348);
      vertex(106.3194,116.9754);
      vertex(138.3194,84.9754);
      vertex(138.3194,116.9754);
      vertex(147.692,126.348);
    endShape(CLOSE);
    
    }
     else if (level==13)
    {
    beginShape();
        vertex(195.7029,62.6731);
        vertex(240.9578,107.9279);
        vertex(224.9578,107.9279);
        vertex(224.9578,153.1827);
        vertex(134.4481,153.1827);
        vertex(134.4481,107.9279);
        vertex(118.4481,107.9279);
        vertex(150.4481,75.9279);
        vertex(150.4481,43.9279);
        vertex(182.4481,43.9279);
        vertex(182.4481,75.9279);
      endShape(CLOSE);
    }
     else if (level==14)
    {
        beginShape();
        vertex(98.4908,148.5522);
        vertex(234.2553,148.5522);
        vertex(189.0005,103.2974);
        vertex(234.2553,58.0425);
        vertex(98.4908,58.0425);
        vertex(143.7457,103.2974);
      endShape(CLOSE);
    }  
    else if (level == 15)
    {
     beginShape();
      vertex(122.75-5,158);
      vertex(218.75-5,158);
      vertex(282.75-5,94);
      vertex(218.75-5,94);
      vertex(218.75-5,126);
      vertex(186.75-5,126);
      vertex(186.75-5,94);
      vertex(154.75-5,94);
      vertex(154.75-5,126);
      vertex(122.75-5,126);
      vertex(122.75-5,94);
      vertex(58.75-5,94);
    endShape(CLOSE);    
    }  
}

void contarPix()
{
  loadPixels();
  
    for(int i = 0; i < pixels.length ; i++)
    {
      if(pixels [i] == color (255))
      {
        contadorP++;
      }   
    }
     if(contadorP == 0)
    {
        background(218, 247, 166);
        
        fill(0);
        textSize(200);
        textAlign(CENTER,CENTER);
        text("Nivel", width/2, (height/2)-150);
        text("completado", width/2, (height/2)+80);
                       
        fill(255 , 50 , 0);
        textSize(50);
        textAlign(CENTER,TOP);
        text("Para Continuar Click", width/2, 10);
        textSize(30);
        textAlign(CENTER,BOTTOM);
        text("Para Salir Presione ESC", width/2, height-10);
           
        noLoop();
       
        if (level >= 16)
       {
        fill(0);
        background(218, 247, 166);
        textSize(250);
        textAlign(CENTER,CENTER);
        text("Niveles", width/2, (height/2)-150);
        text("Superados ", width/2, (height/2)+80);
          
        fill(250 , 0 , 0);
        textSize(30);
        textAlign(CENTER,BOTTOM);
        text("Para Salir Presione ESC", width/2, height);
      }
      
        level++;
        Programa();
    }
    
  contadorP = 0;
}

void Instrucciones()
{
 if (level == 0)
  {
  background(218, 247, 166);
  
    fill(255);
    textSize(150);
    textAlign(CENTER,CENTER);
    text("JUEGO TANGRAM", (width/2),100);
    
    fill(0);
    textSize(40);
    text("Instrucciones:", (width/2)-500, (height/2)-50);
    textSize(32);
    text("1. Para mover una ficha, mantenga oprimido el click izquierdo y arrastrela.", (width/2)-98,(height/2));
    text("2. Para rotar una ficha, oprima click derecho hasta encontrar la posición deseada.", (width/2)-44,(height/2)+37);
    text("3. Acomode las figuras de manera correcta para cubrir el contorno presentado.",(width/2)-66,height/2+72);  
    text("* Importante: El paralelogramo rota además respecto al eje z.",(width/2)-166,height/2+108);
    
    fill(250,50,0);
    textSize(40);
    textAlign(CENTER, BOTTOM);
    text("Click para continuar", (width/2), height-150);
    noLoop();
     
  level++;    
  }
}

void mousePressed()
{
loop();
  if( mouseButton == LEFT )
  {
    color ColPan = get(mouseX,mouseY);
    
    for(int j = 0 ; j < 7 ; j++)
    {
      if( Colf[j] == ColPan )
      {
        staticc = j;
      }
    }   
  } 
}

void mouseClicked()
{
  if( mouseButton == RIGHT )
  {
    color ColFig = get(mouseX , mouseY);
    for(int j = 0 ; j < 7 ; j++)
    {
      if( Colf[j] == ColFig )
      {
        if (o == 5 && Colf[j]== color(19 , 72 , 107))
        {
          ejeZ = (pow (-1 , q));
          o = 0;
          q++;
        }
          
        if (Colf[j]== color(19 , 72 , 107))
        {
          o++;
        }
        
        Rte [j] = ((Rte[j]+1)%8);
      }
    }   
  }  
}

void mouseReleased()
{
  staticc = -1;
}