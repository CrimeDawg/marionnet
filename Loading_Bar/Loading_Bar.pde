PImage img;
PImage img2;
int markerNum = 0;
String S = "MARION .NET LOADING";
void setup()
{
 size(1200,900);
 background(#235B79); 
 smooth();
 img2 = loadImage("Earth Icon.png");
 img = loadImage("90s Computer (1).png");
 textSize(width/16);
}

void draw()
{
      float Blength = width/2 + width/4;
      float cornerRad = 16;
      int imgH = 150;
      int imgW = 150;
      int circles  = 6;
      int markerDist = (width/2)/circles;
      
      
      image(img, imgW, (height/2-height/16) - (imgH), imgW, imgH);
      image(img2, width-(width/4),((height/2-height/16) - (imgH)), imgW, imgH);
      
      //Bar is placed at x/2, y/2 length is 250, height is 35, corners are 16
      rectMode(CENTER);
      stroke(255);
      strokeWeight(3);
      rect(width/2,height/2, Blength, height/8);
      
      //Start loading bar at (x/8, {height/2-height/16}), extend to (framecount)
      rectMode(CORNER);
      fill(255,255,255);
      strokeWeight(1);
      rect(width/8, (height/2 - height/16), frameCount * 2, height/8);

      //The whole point of this section is too make (and remove) the dots
      if((frameCount+width/3)%markerDist == 0)
      {
        if(markerNum > circles-1)
        {
         stroke(#235B79);
         fill(#235B79);
         ellipse((width/4 + width/32) + (markerDist * (markerNum-1)), height/2-(imgH), 33, 30);
         markerNum = 0;

        }
       else{
       ellipseMode(CENTER);
       
           if(markerNum == 0)
           {
             stroke(#A67900);
             fill(#A67900);
             ellipse((width/4 + width/32) + (markerDist * markerNum), height/2-(imgH), 30, 30);
             markerNum = markerNum +1;
           }
           else
           {
             fill(#A67900);
             stroke(#A67900);
             ellipse((width/4 + width/32) + (markerDist * markerNum), height/2-(imgH), 30, 30);
             
             fill(#235B79);
             stroke(#235B79);
             ellipse((width/4 + width/32) + (markerDist * (markerNum-1)), height/2-(imgH), 33, 33);
             markerNum = markerNum +1;
          }
         }
      }
      
      if((frameCount*2)%Blength == 0)
      {
      frameCount = 0; 
      
      
      float e = random(.5,5.6);
      int k = round(e);
      
      if(k == 1){
      textSize(width/16);
      S = "MARION .NET LOADING";
      }
      
      if(k == 2){
      textSize(width/16);
      S = "MARION .NET SUCKZ";
      }
      
      if(k == 3){
      textSize(width/24);
      S = "Building Additional Supply Depots";
      }
      
     if(k == 4){
      textSize(width/15);
      S = "Initializing Skag";
      }
      
      if(k == 5){
      textSize(width/16);
      S = "Knowlege is Power!";
      }
      
      if(k == 6){
      textSize(width/16);
      S = "This one is really rare!";
      }
   }
  
  fill(#235B79);
  textAlign(CENTER, BOTTOM);
  noStroke();
  line(width/8, height/2, 7*width/8, height/2);
  text(S,width/2,height/2 + height/16);
}

