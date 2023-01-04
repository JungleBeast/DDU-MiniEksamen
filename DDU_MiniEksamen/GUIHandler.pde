class GuiHandler{
 ArrayList <Knap> Knapper = new ArrayList<Knap>();
 
  Knap lavKlik(int x, int y){
    Knap b = new KlikKnap (x,y);
    Knapper.add(b);
    return (b);
  } 
  
  void displayAll(){
  for(Knap k : Knapper){
    k.Tegn();
}}
  
  void detectClick(){
  for(Knap k : Knapper){
    k.mousePress();
}}
  
  void detectKeyPressed(){
  for(Knap k : Knapper){
    k.keyPress();
}}
  
}
