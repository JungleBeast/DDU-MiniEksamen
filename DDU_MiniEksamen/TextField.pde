class TekstFelt extends Knap{
String content = "";
int Writing = 0;

TekstFelt(int x, int y){
xpos = x;
ypos = y;
}

  void Tegn(){
  textSize(30);
  fill(500,500,500);
  rect(xpos,ypos,500,50);
  fill(100,100,100);
  noFill();
  stroke(100);
  rect(xpos, ypos, 500, 50);
  fill(500,500,500);
  text(content, xpos+10, ypos+35);
  noFill();
  }
  
  
  void mousePress(){
  if(mouseX>xpos && mouseX<xpos+500 && mouseY>ypos && mouseY<ypos+50){
  Writing = 2;
  }else{
  Writing = 0;
  }}

void keyPress(){
  if (Writing==2){
  if ( keyPressed && keyCode !=8 ) {
  content +=key;
  }else{
  content =content.substring(0, content.length()-1);
  }}}
}
