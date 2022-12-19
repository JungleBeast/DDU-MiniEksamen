//Dette er superklassen til knapperne, her får de komponenter som begge knapper kan udnytte.
class Komponent{
//Booleans
boolean OverKnap = false;
boolean  knapOn = false;

int x;
int y;
int h;
int w;

//Corners
int r = 50;
float tl = r; float tr = r;
float bl = r; float br = r;

void display(){}


void detectClick(){}


void Release(){}

}
