int reset;
int PosX[];
int PosY[];
int Rota[];
color MaCo[];
int i;
float tre=1;

void setup()
{
  fullScreen();
  
  PosX = new int [7];
  PosY = new int [7];
  Rota = new int [7];
  MaCo = new int [7];

  Presta();
}

void Presta()
{
  for (i=0;i<7;i++)
  {
    if(i==0)
    {
      PosX[i]=300;
      PosY[i]=100;
      Rota[i]=i;
      MaCo[i]=color(255,0,0);
    }
    else if (i==1)
    {
      PosX[i]=200;
      PosY[i]=400;
      Rota[i]=i;
      MaCo[i]=color(255,255,0);
    }
    else if (i==2)
    {
      PosX[i]=350;
      PosY[i]=600;
      Rota[i]=i;
      MaCo[i]=color(0,255,0);
    }
    else if (i==3)
    {
      PosX[i]=1040;
      PosY[i]=150;
      Rota[i]=i;
      MaCo[i]=color(0,0,255);
    }
    else if (i==4)
    {
      PosX[i]=1050;
      PosY[i]=450;
      Rota[i]=i;
      MaCo[i]=color(255,0,255);
    }
    else if (i==5)
    {
      PosX[i]=1250;
      PosY[i]=250;
      Rota[i]=i;
      MaCo[i]=color(255,128,0);
    }
    else if (i==6)
    {
      PosX[i]=1200;
      PosY[i]=600;
      Rota[i]=i;
      MaCo[i]=color(204,0,102);
    }
  }
  reset = -1;
}

void draw()
{
  loadPixels();
  background(145,148,255);

  fill(255);
      rect((width/2)-230,(height/2)-230,92*5,92*5);
    
  fill(250);
      textSize(30);
      textAlign(CENTER,BOTTOM);
      text("Para Salir Presione ESC", width/2, height);
  
  for(i=0;i<7;i++)
  {
    pushMatrix();
    translate(PosX[i],PosY[i]);
    rotate(Rota[i]*radians(45));
    fill(MaCo[i]);
    scale(5);

    switch(i)
    {
      case 0:
        beginShape(TRIANGLES);
        vertex(-48,-16);
        vertex(16,-16);
        vertex(16,48);
        endShape();
      break;
      
      case 1:
        beginShape(TRIANGLES);
        vertex(-48,-16);
        vertex(16,-16);
        vertex(16,48);
        endShape();
      break;
      
      case 2:
        beginShape(TRIANGLES);
        vertex(-24,-8);
        vertex(8,-8);
        vertex(8,24);
        endShape();
      break;
      
      case 3:
        beginShape(TRIANGLES);
        vertex(-24,-8);
        vertex(8,-8);
        vertex(8,24);
        endShape();
      break;
      
      case 4:
        beginShape(TRIANGLES);
        vertex(-16,0);
        vertex(16,32);
        vertex(16,-32);
        endShape();
      break;
      
      case 5:
        beginShape(QUADS);
        vertex(-16*tre,0);
        vertex(-16*tre,-32);
        vertex(16*tre,0);
        vertex(16*tre,32);      
        endShape();
      break;
      
      case 6:
        rect(-16,-16,32,32);
      break;
    }
    popMatrix();
  }
  
  if( mousePressed && (reset != -1) )
  {
    PosX[reset] += mouseX-pmouseX;
    PosY[reset] += mouseY-pmouseY;
  }
 // noStroke();
 
 contar();
}

void mousePressed()
{
  if( mouseButton == LEFT )
  {
    color ColPan = get(mouseX,mouseY);
    
    for(int j=0;j<7;j++)
    {
      if( MaCo[j] == ColPan )
      {
        reset = j;
      }
    }   
  }
}

int n=1;
int m=1;

void mouseClicked()
{
  if( mouseButton == RIGHT )
  {
    color ColPan = get(mouseX,mouseY);
    for(int j=0;j<7;j++)
    {
      if( MaCo[j] == ColPan )
      {
        if ( n == 5 && MaCo[j]== color(255,128,0))
        {
          tre=(pow(-1,m));
          n=0;
          m++;
        }
          
        if (MaCo[j]== color(255,128,0))
        {
          n++;
        }
        
        Rota[j]=((Rota[j]+1)%8);
      }
    }   
  }  
}

void mouseReleased()
{
  reset = -1;
}

int contador=0;

void contar()
{
  loadPixels();
  
    for(int i=0; i<pixels.length;i++)
    {
      if(pixels[i] == color (255))
      {
        contador++;
        //print(contador);
      }
   
    }
    
    if(contador==0)
    {
      fill(0);
        textSize(350);
        textAlign(CENTER,CENTER);
        text("Ganaste", width/2, height/2);
    }
    
  contador=0;
}