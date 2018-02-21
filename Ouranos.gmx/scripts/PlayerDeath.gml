if(HP <= 0){
//Player dies
for(i=0;i<=3;i++){
    if(Inv.Inv[i]!=""){
        Inv.Inv[i].visible=true;
        Inv.Inv[i].x=x+irandom_range(-10,10);
        Inv.Inv[i].y=y;
        Inv.Inv[i]="";
    }
}
instance_create(x,y,DeadPlayer_ob);
instance_destroy(Inv);
instance_destroy();
room_goto(room1);
}
