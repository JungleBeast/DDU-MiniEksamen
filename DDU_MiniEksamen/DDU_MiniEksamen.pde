import de.bezier.data.sql.*;
SQLite sqlite;
GuiHandler guihand = new GuiHandler();

int pageStudent = 0;
int pageTeacher = 0;

Knap e1;
Knap e2;
Knap e3;
Knap e4;
Knap e5;
Knap e6;
Knap e7;
Knap e8;
Knap e9;



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
  
  
  

  if(pageStudent == 0 && pageTeacher == 0){
    fill(300,300,300);
    textSize(30);
    text("digital diktat",20,56);
    text("Elev",505,460);
    text("Lærer",505,760);
    e1 = guihand.lavKlik (500,450);
    e2 = guihand.lavKlik (500,750);
    fill(36,109,120);
  }
  
///////////////////////////////////////////////////////// Elev sider ///////////////
 if(pageStudent == 1){
    fill(100,100,100);
    e6 = guihand.lavKlik (100,100);
    
    
    fill(36,109,120);
  }
  
  if(pageStudent == 2){
    fill(100,100,100);
    e3 = guihand.lavKlik (300,300);
    e4 = guihand.lavKlik (300,500);
    e5 = guihand.lavKlik (300,700);
    fill(36,109,120);
  }
  
/////////////////////////////////////////////////////////// Test sider ///////////////
  if(pageStudent == 3){
    fill(100,100,100);
   
    fill(36,109,120);
  }
    if(pageStudent == 4){
    fill(100,100,100);
    
    fill(36,109,120);
  }
    if(pageStudent == 5){
    fill(100,100,100);
    
    fill(36,109,120);
  }
  
////////////////////////////////////////////////////////// Lærer sider ///////////////
  if(pageTeacher == 1){
    fill(100,100,100);
    e7 = guihand.lavKlik (300,300);
    
    
    fill(36,109,120);
  }
  
  if(pageTeacher == 2){
    fill(100,100,100);
    e8 = guihand.lavKlik (300,700);
    e9 = guihand.lavKlik (300,700);
    fill(36,109,120);
  }
  
  
}
