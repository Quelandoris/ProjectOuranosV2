
var enemy = place_meeting(x,y, EnemyParent_ob)
if (IFrames < room_speed){
 IFrames ++;
}

if(place_meeting(x,y,EnemyParent_ob)){
    if (IFrames >= room_speed){
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
