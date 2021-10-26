void endScreen()
{
    fill(#9696FA);
    if(mouseX > 90 && mouseX < 595 && mouseY > 150 && mouseY < 290)
    {
      fill(#E497FA);
    }
    rect(90, 150, 505, 140, 5);
    fill(#4317FA);
    textSize(40);
    text("Meta Knight has Fallen...", 100,200);
    text("Click To Play Again" , 100, 270);  
}
void startScreen()
{
  image(test, 0,0);
  textSize(50);
  text("Welcome To Meta Knight Glide!", 40, 100);
  text("Click The Mouse To Begin...", 40, 200);
  if(mousePressed)
  {
    fy = height/2;
    gameState = 0;
  }
}
