##Translocator_Fithop.pl
#Zone: butcher

sub EVENT_SAY{
  if ($text=~/Hail/i){
  quest::say("Hello there, $name. There seem to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [" . quest::saylink("travel to the Ocean of Tears") . "] in the meantime, I can transport you to my companion there");
  }
  if($text=~/ocean of tears/i)
  {
  quest::say("Off you go!");   
  quest::movepc(69,-9173.20,392.64,6.47); # Zone: oot
  }
}
