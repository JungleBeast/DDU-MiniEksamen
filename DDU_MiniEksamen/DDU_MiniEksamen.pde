import de.bezier.data.sql.*;
SQLite sqlite;
GuiHandler guihand = new GuiHandler();

int pageStudent = 0;
int pageTeacher = 0;
int godkendt;

Knap e1; Knap e2; Knap e3; Knap e4; Knap e5; Knap e6; Knap e7; Knap e8; Knap e9; Knap d1; Knap d2; Knap d3;
TekstFelt L1; TekstFelt L2; TekstFelt E1; TekstFelt E2;


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
  fill(300,300,300);
  textSize(40);
  text("digital diktat",20,57);
  fill(36,109,120);
  
////////////////////////////////////////////////////////////////////Start side og tilbage knap ////////////////////////////////////////
  if(pageStudent>0 && pageTeacher==0 || pageStudent==0 && pageTeacher>0){ 
    if(pageStudent<3){fill(500,500,500); rect(50,100,80,40); fill(1,1,1); textSize(20); text("tilbage",60,125); textSize(40); fill(36,109,120); 
     if(pageStudent>0){
      if(mouseX>50 && mouseX<50+80 && mouseY>100 && mouseY<100+40 && mousePressed){pageStudent--; delay(300);}}
      if(pageTeacher>0){if(mouseX>50 && mouseX<50+80 && mouseY>100 && mouseY<100+40 && mousePressed){pageTeacher--; delay(300);}}}
   }


  if(pageStudent == 0 && pageTeacher == 0){
    fill(300,300,300);
    e1 = guihand.lavKlik (500,450);
    e2 = guihand.lavKlik (500,750);
    e1.Tegn();
    e2.Tegn();
    fill(500,500,500);
    text("Elev",505,500);
    text("Lærer",505,800);
    fill(36,109,120);
  if(mouseX>500 && mouseX<500+150 && mouseY>450 && mouseY<450+80 && mousePressed){pageStudent++;}
  if(mouseX>500 && mouseX<500+150 && mouseY>750 && mouseY<750+80 && mousePressed){pageTeacher++;}
  }
  
///////////////////////////////////////////////////////// Elev sider ////////////////////////////////////////////////////////////
   if(pageStudent == 1){
    fill(100,100,100);
    e6 = guihand.lavKlik (900,800);
    E1 = guihand.lavTekstFelt (800,500);
    E2 = guihand.lavTekstFelt (800,600);
    e6.Tegn();
    E1.Tegn();
    E2.Tegn();
    if(mouseX>900 && mouseX<900+150 && mouseY>800 && mouseY<800+80 && mousePressed){pageStudent++;}
    fill(36,109,120);
  }
  
  if(pageStudent == 2){
    fill(100,100,100);
    e3 = guihand.lavKlik (500,300);
    e4 = guihand.lavKlik (500,500);
    e5 = guihand.lavKlik (500,700);
    e3.Tegn();
    e4.Tegn();
    e5.Tegn();
    fill(36,109,120);
    if(mouseX>500 && mouseX<500+150 && mouseY>300 && mouseY<300+80 && mousePressed){pageStudent++;}
    if(mouseX>500 && mouseX<500+150 && mouseY>500 && mouseY<500+80 && mousePressed){pageStudent = pageStudent + 2;}
    if(mouseX>500 && mouseX<500+150 && mouseY>700 && mouseY<700+80 && mousePressed){pageStudent = pageStudent + 3;}
  }
  
/////////////////////////////////////////////////////////// Test sider ///////////////////////////////////////////////////////////
  if(pageStudent == 3){
    fill(100,100,100);
   text("1",500,500);
    d1 = guihand.lavKlik (1700,950);
    d1.Tegn();
    fill(36,109,120);
  }
    if(pageStudent == 4){
    fill(100,100,100);
    text("2",500,500);
    d2 = guihand.lavKlik (1700,950);
    d2.Tegn();
    fill(36,109,120);
  }
  
    if(pageStudent == 5){
    fill(100,100,100);
    text("3",500,500);
    d3 = guihand.lavKlik (1700,950);
    d3.Tegn();
    fill(36,109,120);
    
  }
  
////////////////////////////////////////////////////////// Lærer sider /////////////////////////////////////////////////////////
  if(pageTeacher == 1){
    fill(100,100,100);
    e7 = guihand.lavKlik (900,800);
    L1 = guihand.lavTekstFelt (800,500);
    L2 = guihand.lavTekstFelt (800,600);
    L1.Tegn();
    L2.Tegn();
    e7.Tegn();
    if(mouseX>900 && mouseX<900+150 && mouseY>800 && mouseY<800+80 && mousePressed){pageTeacher++;}
    fill(36,109,120);
  }
  
  if(pageTeacher == 2){
    fill(100,100,100);
    e8 = guihand.lavKlik (500,500);
    e9 = guihand.lavKlik (500,700);
    e8.Tegn();
    e9.Tegn();
    fill(36,109,120);
  }

}
