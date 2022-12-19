import de.bezier.data.sql.*;
SQLite sqlite;

void setup(){
  sqlite = new SQLite(this, "DataBase_MiniEksamen_projekt.sqlite");
 if(sqlite.connect()){
 }
  
  fullScreen();
  noStroke();
}
void draw(){
  clear();
  background(39,49,74);
  fill(36,109,120);
  rect(0,0,1920,100);
}
