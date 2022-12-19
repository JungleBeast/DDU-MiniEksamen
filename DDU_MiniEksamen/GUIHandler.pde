class GuiHandler{
 ArrayList <Knap> Knapper = new ArrayList<Knap>();
 
  Knap lavKlik(int x, int y){
    Knap b = new KlikKnap (x,y);
    Knapper.add(b);
    return (b);
  }
  
  TekstFelt lavTekstFelt(int x,int y){
    TekstFelt s = new TekstFelt (x,y);
    Knapper.add(s);
    return (s);
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
