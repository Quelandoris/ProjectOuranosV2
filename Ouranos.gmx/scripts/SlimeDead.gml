sprite_index = EnemySlimeDead_sp;
if(place_meeting(x,y+EnemyCurVertSpeed,solid)){ 
    EnemyCurVertSpeed = 0; 
    if (EnemyCurHorSpeed > 0){
        EnemyCurHorSpeed -= EnemySlide;
    }
    if (EnemyCurHorSpeed < 0){
        EnemyCurHorSpeed += EnemySlide;
    } 
}
else{
       EnemyCurVertSpeed += EnemyGrav;
            
        }
image_alpha -= .01;

if(image_alpha <= 0.1){
    var playerInv=instance_nearest(x,y,Player_ob).Inv;
    var totlevel=0;
    var totitems=0;
    var avglevel=0;
    for(i=0;i<=3;i++){
        if(playerInv.Inv[i]!=""){
            totitems++;
            totlevel+=playerInv.Inv[i].ILvl;           
        }            
    }
    if(totitems<=0) totitems=1;
    avglevel=totlevel/totitems;
    ItemGenerationScript(avglevel,MaxLevel, false);
    Spawner.Spawned --;
    instance_destroy();
}

