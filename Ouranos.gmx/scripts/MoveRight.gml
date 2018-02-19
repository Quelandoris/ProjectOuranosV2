//Script to move player right

//If player hasn't hit their speed cap yet, add speed
if(PlayerCurSpeed<PlayerSpeedCap){
    PlayerCurSpeed+=PlayerSpeedGain;
}else PlayerCurSpeed=PlayerSpeedCap;

//Alter X by PlayerCurSpeed;
if(!place_meeting(x+PlayerCurSpeed,y,solid)){
    x+=PlayerCurSpeed;
    //Set PlayerLastDirection
    PlayerLastDirection=Direction.Right;
}
//If a solid object is in the way, set speed to zero and direction to none.
else{
    move_contact_solid(0,PlayerCurSpeed);
    PlayerCurSpeed=0;
    PlayerLastDirection=Direction.None;
}
