PImage test, metaknight, metalbeam, metalbeamd;
int x, y, fx, fy, g, Vky;
int[] metalX, metalY; 
int gameState, score, highScore;

void setup()
{
  size(800,620);
  test = loadImage("landscape.png");
  metaknight = loadImage("metaknight.gif");
  metalbeamd = loadImage("metalbeamd.png");
  metalbeam = loadImage("metalbeam.png");
  metaknight.resize(metaknight.width/2,metaknight.height/2);
  fx = 100;
  fy = 50;
  g = 1; 
  metalX = new int[5];
  metalY = new int[metalX.length];
  for(int i = 0; i < metalX.length; i++)
  {
    metalX[i] = width + 200*i;
    metalY[i] = (int)random(-350, 0);
  } 
  gameState = -1;
}

void draw()
{
  if(gameState == -1)
  {
    startScreen();  
  }
  else if(gameState==0)
  {
    settest();
    setPipes();
    metaknight(); 
    displayScore();
  }
  else
  {
    endScreen();
    restart();
  }
}

void mousePressed()
{
   Vky = -15;  
}
