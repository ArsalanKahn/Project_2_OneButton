void winner()
{
     if (newslot1 == 0 && newslot2 == 0 && newslot3 == 0)
   {
      cherry = cherry + 100;
     println("You Got All Cherries!, You win 100 coins");
   }
   else if (newslot1 == 1 && newslot2 == 1 && newslot3 == 1)
   {
      bar = bar + 1000;
     println("You Got All Bars!, You win 1000 coins");
   }
   else if(newslot1 == 2 && newslot2 == 2 && newslot3 == 2)
   {
      seven = 500;
     println("You Got All Sevens!, You win 500 coins ");
   }
     losses = losses - 25;
}
