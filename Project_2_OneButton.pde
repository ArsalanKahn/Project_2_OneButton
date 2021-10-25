 String[] SlotsString = {"cherry.jpg", "bars.gif", "seven.png"};

 PImage[] Slotimages = new PImage[SlotsString.length]; 
 PImage Slots;

 StringList inventory;

 int cherry = 0;
 int bar = 0;
 int seven = 0;
 int total;
 int startingmoney = 300;
 int losses = 0;

 float randomslot1 = random(-1, 2);
 float randomslot2 = random(-1, 3);
 float randomslot3 = random(-1, 3);

 boolean check = false; 

 int newslot1 = (int)randomslot1;
 int newslot2 = (int)randomslot2;
 int newslot3 = (int)randomslot3;


void setup()
{
  size(300, 300);
  
  for (int i=0; i<Slotimages.length; i++) //declare images
  {
    Slotimages[i] = loadImage(SlotsString[i]);
  }
  
}

void keyPressed()
{
  if (key == ' ')
  {
    println(newslot1);
    newslot1 = 0;
    newslot2 = 0;
    newslot3 = 0;
    newslot1 = (int)random(-1, 3);
    newslot2 = (int)random(-1, 3);
    newslot3 = (int)random(-1, 3);
    winner(); 
  }
}

void draw()
{
   background(255,255,255);
   fill(0);
  
   image(Slotimages[newslot1],0,0);
   image(Slotimages[newslot2],0,100);
   image(Slotimages[newslot3],0,200);
   
   total = startingmoney + losses + cherry + bar + seven;
   
   String funds = "Total Winnings = " + (total - losses - startingmoney); //change variable values
   text(funds, 130, 100, 280, 320);
   String winnings = "Total funds = " + total; //change variable values
   text(winnings, 130, 120, 280, 320);
   String lost = "Total losses = " + (losses); //change variable values
   text(lost, 130, 140, 280, 320);
}
  

   
