nbm=4; // nombre de marches
lm=25; // largeur d'une marche
hm=5; // hauteur d'une marche
pm=25; //profondeur d'une marche
rc=15; //rayon du cylindre
rotm=15; //rotation d'une marche
for (i=[0:nbm]){
translate([0,hm*i,0]){

cube([lm,pm,hm*i],center=false);

}
}
rotate([0,0,90]){
    for (i=[0:nbm-1]){
        translate([+20,hm*i,0]){
            cube([lm,10,25+hm*i],center=false);
        }
}
}
