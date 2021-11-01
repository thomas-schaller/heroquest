nbPiquesLigne=5;
HauteurPique=15;
tailleCase=25;
marge=0;

emplacement=tailleCase-(2*marge);
cube([tailleCase,tailleCase,2],center=true);
for(x=[1:nbPiquesLigne])
{
    for (y=[1:nbPiquesLigne])
    {
        translate([emplacement/2-emplacement/(nbPiquesLigne+1)*x,emplacement/2-emplacement/(nbPiquesLigne+1)*y,HauteurPique/2])
        {
            cylinder(d=1,center=true,h=HauteurPique);
            translate([0,0,HauteurPique/2+1])
            {
                cylinder(d1=2,d2=0.1,center=true,h=5);
            }
        }
    }
}