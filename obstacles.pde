void restart()
{
   if(mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290)
   {
   
     if(mousePressed)
     {
        fy = height/2;
        for(int i = 0; i < metalX.length; i++)
        {
          metalX[i] = width + 200*i;
          metalY[i] = (int)random(-350, 0);
        }      
        score = 0;
        gameState = 0;  
     } 
   }
}
