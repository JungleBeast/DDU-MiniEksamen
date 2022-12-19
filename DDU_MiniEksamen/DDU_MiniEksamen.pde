import de.bezier.data.sql.*;
DataBase_MiniEksamen_projekt Data;

void setup(){
    Data = new DataBase_MiniEksamen_prokekt(this, "DataBase_MiniEksamen_projekt.sqlite");
  if(Data.connect()){}
  
  fullScreen();
  noStroke();
}
void draw(){
  clear();
  background(39,49,74);
  fill(36,109,120);
  rect(0,0,1920,100);
}
