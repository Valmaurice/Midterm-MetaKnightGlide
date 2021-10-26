void setPipes(){
  for(int i = 0; i < metalX.length; i++)
  {
   image(metalbeam, metalX[i], metalY[i]);
   image(metalbeamd, metalX[i], metalY[i] + 680);
   metalX[i]-=2;
   
   if(score > 10)
   {
     metalX[i]--; 
   }
   if(score > 20)
   {
     metalX[i]--;    }
   if(metalX[i] < -200)
   {
     metalX[i] = width;  
   }
   
   if(fx > (metalX[i] - 35) && fx < metalX[i] + 92)
   {
   if(!(fy > metalY[i] + 139 && fy < metalY[i] + (449 + 131-29)))
     {
   gameState = 1;
     }
     
   else if (fx==metalX[i] || fx == metalX[i] + 1)
     {
   score++;  
     }
   }
  }  
}
