String message = "Welcome to Marion Net";
PFont f = createFont("Comic Sands", 20, true);

void setup()
{
 size(800,800);
 background(125,100,100); 

}


void draw()
{
  
 textFont(f);
 int x = 10;
 textAlign(CENTER);
 for(int i = 0; i<message.length(); i++)
 {
  textSize(16);
  text(message.charAt(i), x, height/2);
  x += textWidth(message.charAt(i));
 }
  noLoop();
  
  
}
