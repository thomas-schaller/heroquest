nbm=6; // nombre de marches
lm=35; // largeur d'une marche
hm=5; // hauteur d'une marche
pm=15; //profondeur d'une marche
rc=15; //rayon du cylindre
rotm=15; //rotation d'une marche
for (i=[0:nbm]){
translate([0,0,hm*i]){
rotate([0,0,rotm*i]){
cube([pm,lm,hm],center=false);
}
}
}
difference(){
cylinder(r=rc,h=hm*(nbm+1));
translate([-rc,-rc*2,0]){
cube([rc*2,rc*2,hm*(nbm+2)],center=false);
}   
    }
translate([-35,0,0]){
    cube([50,50,1]);
}