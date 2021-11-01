tailleCase=25;
emplacementLame=20;
nbDents=20;
nbLames=3;
difference(){
translate([0,0,0]){
cube([tailleCase,tailleCase,2],center=true);
for(i=[1:nbLames]){
translate([0,emplacementLame/2-emplacementLame/(nbLames+1)*i,0]){
rotate([90,0,0])
{
    for (i=[0:nbDents]){
rotate([0,0,(360/nbDents)*i])
translate([0,10,0.5])
polygon(points=[[0,0],[5,1],[3,-1]]);
}
    cylinder(d=20);
}
}
}
}

translate([0,0,-tailleCase/2-1]){
cube([tailleCase,tailleCase,tailleCase],center=true);
}
}