sub EVENT_SAY { 
  if ($text=~/Hail/i){
    quest::say("Hello there. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [" . quest::saylink("travel to Freeport") . "] or [" . quest::saylink("travel to Butcherblock") . "] in the meantime, I can transport you to my companion there.");
  }
  if ($text=~/travel to freeport/i){
    quest::say("Off you go!");
    quest::movepc(10,-1006.66,-14.65,-53.47,64); # Zone: freporte
  }
  if ($text=~/travel to butcherblock/i){
    quest::say("Off you go!");
    quest::movepc(68,3160.48,1355.84,11.35); # Zone: butcher
  }

}

