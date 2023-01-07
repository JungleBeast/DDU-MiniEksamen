class KlikKnap extends Knap{
  KlikKnap(int x, int y){
    xpos = x;
    ypos = y;
  }
  
 void Tegn(){
  if(mouseX>xpos && mouseX<xpos+150 && mouseY>ypos && mouseY<ypos+80 && mousePressed){
  stroke(10);
  fill(40,200,40);
  rect (xpos, ypos,150,80);
  }else{
  fill(100,100,100);
  stroke(10);
  rect (xpos, ypos,150,80);
  }}
  
   void Tegn2(){
  if(mouseX>xpos && mouseX<xpos+200 && mouseY>ypos && mouseY<ypos+50 && mousePressed){
  stroke(10);
  fill(700,700,700);
  rect (xpos, ypos,200,50);
  }else{
  fill(100,100,100);
  stroke(10);
  rect (xpos, ypos,200,50);
  }}
  
  void TegnC(){
  if(mouseX>xpos && mouseX<xpos+200 && mouseY>ypos && mouseY<ypos+50 && mousePressed){
  stroke(10);
  fill(700,700,700);
  circle (xpos, ypos,50);
  }else{
  fill(100,100,100);
  stroke(10);
  circle (xpos, ypos,50);
  }}
}
