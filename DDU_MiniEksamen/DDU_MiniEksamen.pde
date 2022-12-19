import de.bezier.data.sql.*;
SQLite sqlite;
GuiHandler guihand = new GuiHandler();

int pageStudent = 0;
int pageTeacher = 0;

Knap e1;
Knap e2;

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
  
  
  
///////////////////////////////////////////////////////// Elev sider ///////////////
  if(pageStudent == 0 && pageTeacher == 0){
    fill(100,100,100);
    e1 = guihand.lavKlik (100,100);
    e2 = guihand.lavKlik (300,300);
    fill(36,109,120);
  }
  
  if(pageStudent == 1 && pageTeacher == 0){
    fill(100,100,100);
    
    fill(36,109,120);
  }
  
  if(pageStudent == 2 && pageTeacher == 0){
    fill(100,100,100);
    
    fill(36,109,120);
  }
  
  
////////////////////////////////////////////////////////// Lærer sider ///////////////
  if(pageStudent == 0 && pageTeacher == 1){
    fill(100,100,100);
    
    fill(36,109,120);
  }
  
  if(pageStudent == 0 && pageTeacher == 2){
    fill(100,100,100);
    
    fill(36,109,120);
  }
  
  
}
