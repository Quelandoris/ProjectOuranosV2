//apply gravity to player 

//clamp vert speed
if(PlayerCurVertSpeed>PlayerMaxVertSpeed) PlayerCurVertSpeed=PlayerMaxVertSpeed;

//Move the player acording to their vertical speed, but check for contact with walls and such to make sure it doesnt clip
if(!place_meeting(x,y+PlayerCurVertSpeed,solid))    y+=PlayerCurVertSpeed;

//If theres something in the way, move to contact with it.
//Check for below above
else if(PlayerCurVertSpeed>0){
    move_contact_solid(270,PlayerCurVertSpeed);
    //Because the object is above them, their vert speed should get negated
    PlayerCurVertSpeed=0;
}
//check for contact above
else if(PlayerCurVertSpeed<0){
    move_contact_solid(90,PlayerCurVertSpeed);
    PlayerCurVertSpeed=0;
}

//if player is on the ground, remove their vert speed and let them jump
if(place_meeting(x,y+1,solid)){
    PlayerCurVertSpeed=0;
    PlayerCanJump=true;
}

//otherwise apply gravity
else{
    PlayerCanJump=false;
    PlayerCurVertSpeed+=PlayerGrav;
}
