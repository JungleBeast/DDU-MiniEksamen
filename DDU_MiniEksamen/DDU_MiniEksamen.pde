import de.bezier.data.sql.*;
SQLite sqlite;
GuiHandler guihand = new GuiHandler();
String[] tekst = new String[10];
int logon;
int pageStudent = 0;
int pageTeacher = 0;
int checkElev;
int checkLærer;
String content = "navn";
String content1 = "kode";
String content2 = "mail";
String content3 = "kode";
String Tekst;
String Tekst2;
String Tekst3;
String Tekst4;
String Tekst5;
String SvarT1N1 = "hvad";
String SvarT2N1 = "midt";
String SvarT3N1 = "gammel";
String SvarT4N1 = "andet";
String SvarT5N1 = "grønne";
String ServerSvarT1N1;
String ServerSvarT2N1;
String ServerSvarT3N1;
String ServerSvarT4N1;
String ServerSvarT5N1;


Knap e1; Knap e2; Knap e3; Knap e4; Knap e5; Knap e6; Knap e7; Knap e8; Knap e9; Knap d1; Knap d2; Knap d3; Knap tf1; Knap tf2; Knap tf3; Knap tf4;


void setup(){
sqlite = new SQLite(this, "DataBase_MiniEksamen_projekt.sqlite");
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
    tf1 = guihand.lavKlik (900,500);
    tf2 = guihand.lavKlik (900,400);
    e6.Tegn();
    tf1.Tegn2();
    tf2.Tegn2();
    fill(500,500,500);
    textSize(30);
    text(content,910,435);
    text(content1,910,535);
    fill(100,100,100);
    //text(content1,900,500);
    if(mouseX>900 && mouseX<900+200 && mouseY>400 && mouseY<400+50 && mousePressed && logon==0){content = "William" ;logon++;}
    if(mouseX>900 && mouseX<900+200 && mouseY>500 && mouseY<500+50 && mousePressed && logon==1){content1 = "************" ;logon++;}
    if(mouseX>900 && mouseX<900+150 && mouseY>800 && mouseY<800+80 && mousePressed && logon==2){pageStudent++; logon=0;}
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
    fill(500,500,500);
    text("Niveau 1",660,350);
    text("Niveau 2",660,550);
    text("Niveau 3",660,750);
    fill(36,109,120);
    if(mouseX>500 && mouseX<500+150 && mouseY>300 && mouseY<300+80 && mousePressed){pageStudent++;}
    if(mouseX>500 && mouseX<500+150 && mouseY>500 && mouseY<500+80 && mousePressed){pageStudent = pageStudent + 2;}
    if(mouseX>500 && mouseX<500+150 && mouseY>700 && mouseY<700+80 && mousePressed){pageStudent = pageStudent + 3;}
  }
  
/////////////////////////////////////////////////////////// Test sider ///////////////////////////////////////////////////////////
  if(pageStudent == 3){
    fill(100,100,100);
   
  if(sqlite.connect()){
     sqlite.query( "SELECT * FROM Dictat WHERE Tekst_niveau1 LIKE '%Rap%'" );
     while(sqlite.next()){
       Tekst = sqlite.getString("Tekst_niveau1");
     }
     sqlite.query( "SELECT * FROM Dictat WHERE Tekst_niveau1 LIKE '%Rundt%'" );
     while(sqlite.next()){
       Tekst2 = sqlite.getString("Tekst_niveau1");
     } 
     sqlite.query( "SELECT * FROM Dictat WHERE Tekst_niveau1 LIKE '%Midt%'" );
     while(sqlite.next()){
       Tekst3 = sqlite.getString("Tekst_niveau1");
     }     
     sqlite.query( "SELECT * FROM Dictat WHERE Tekst_niveau1 LIKE '%Endelig%'" );
     while(sqlite.next()){
       Tekst4 = sqlite.getString("Tekst_niveau1");
     }     
     sqlite.query( "SELECT * FROM Dictat WHERE Tekst_niveau1 LIKE '%høet%'" );
     while(sqlite.next()){
       Tekst5 = sqlite.getString("Tekst_niveau1");
     }  
 }
     
    textSize(30);
    text(Tekst,300,300);
    text(Tekst2,300,400);
    text(Tekst3,300,500);
    text(Tekst4,300,600);
    text(Tekst5,300,700);
    noFill();
    rect(930,277,120,30);
    rect(860,377,80,30);
    rect(630,477,120,30);
    rect(770,577,100,30);
    rect(690,677,100,30);
    
    fill(100);
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
    tf3 = guihand.lavKlik (900,500);
    tf4 = guihand.lavKlik (900,400);
    e7.Tegn();
    tf3.Tegn2();
    tf4.Tegn2();
    fill(500,500,500);
    textSize(30);
    text(content2,910,435);
    text(content3,910,540);
    fill(100,100,100);
    if(mouseX>900 && mouseX<900+200 && mouseY>400 && mouseY<400+50 && mousePressed && logon==0){content2 = "Hansen3@gma" ;logon++;}
    if(mouseX>900 && mouseX<900+200 && mouseY>500 && mouseY<500+50 && mousePressed && logon==1){content3 = "******" ;logon++;}
    if(mouseX>900 && mouseX<900+150 && mouseY>800 && mouseY<800+80 && mousePressed && logon==2){pageTeacher++; logon=0;}
    
  }
  
  if(pageTeacher == 2){
    fill(100,100,100);
    e8 = guihand.lavKlik (500,500);
    e9 = guihand.lavKlik (500,700);
    e8.Tegn();
    e9.Tegn();
    if(mouseX>500 && mouseX<500+150 && mouseY>500 && mouseY<500+80 && mousePressed){pageTeacher++;}
    if(mouseX>500 && mouseX<500+150 && mouseY>700 && mouseY<700+80 && mousePressed){pageTeacher++;}
    fill(36,109,120);
  }
  if(pageTeacher == 3){
    fill(100,100,100);
    //hent elevernes information
    fill(36,109,120);
  }
    if(pageTeacher == 4){
    fill(100,100,100);
    e8 = guihand.lavKlik (500,500);
    e8.Tegn();
    fill(36,109,120);
  }
  
  
}

void mousePressed(){
  guihand.detectClick();
}
void keyPressed(){
  guihand.detectKeyPressed();
}
