{ sources }:
super: self:
{
  niv = (import sources.niv { }).niv;
}