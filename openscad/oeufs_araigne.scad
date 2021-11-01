tailleOeuf=4;
tailleCase=25;
nbOeufs=floor(tailleCase/(tailleOeuf*2))-1;
cube([tailleCase,tailleCase,1]);
translate([0,0,tailleOeuf])
{
    for (z=[0:nbOeufs])
    for (x=[0:nbOeufs-z]){
        for (y=[0:nbOeufs-z]){
        translate([x*tailleOeuf*2+tailleOeuf*((z+1)),y*tailleOeuf*2+tailleOeuf*((z+1)),z*(tailleOeuf)])
        {
            sphere(d=tailleOeuf*2);
        }
    }    
    }
}
