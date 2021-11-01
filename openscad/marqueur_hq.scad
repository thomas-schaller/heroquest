tailleCase=15;
translate([0,0,1.5])
cylinder(d=tailleCase,center=true,h=3);

translate([0,0,3])
{
    linear_extrude(2)
{    
text("HQ",font="HeroQuest",halign="center",valign="center",size=6);
}
}