

if (IFrames < room_speed){
 IFrames ++;
}

if(place_meeting(x,y,EnemyParent_ob)){
    var enemy = instance_place(x,y, EnemyParent_ob)   
    if (IFrames >= room_speed){
        show_debug_message(string(enemy.id));
        HP -= enemy.Dmg;
        if((enemy.x > x)){
        PlayerLastDirection=Direction.Left;
        PlayerCurSpeed += enemy.Knockback;
        PlayerCurVertSpeed += -PlayerJumpForce;
        }
        else if((enemy.x < x)){
        PlayerLastDirection=Direction.Right;
        PlayerCurSpeed = enemy.Knockback;
        PlayerCurVertSpeed += -PlayerJumpForce;
        }
        IFrames = 0;
    } 

}
