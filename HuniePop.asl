state("HuniePop")
{
  int displayAffection : "mono.dll", 0x22F170, 0x678, 0x88, 0x20, 0x12C;
  int goalAffection : "mono.dll", 0x22F170, 0x678, 0x88, 0x20, 0x110;
}

split
{
  //splits at the end of every puzzle (incl tutorial and sex)
  if (old.displayAffection < old.goalAffection
      && current.displayAffection == current.goalAffection
      && current.goalAffection != 0)
    return true;
}
