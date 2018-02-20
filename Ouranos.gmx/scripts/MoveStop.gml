//Script for when player isn't wanting to move and needs to slow down.
//Decrease speed
PlayerCurSpeed-=PlayerSpeedLoss;
//Keep speed from going negative
if(PlayerCurSpeed<0){
PlayerCurSpeed=0;
PlayerLastDirection=Direction.None;
}
//Keep the player moving so it feels like they're screeching to a halt instead of stopping dead in their tracks.
else if(PlayerLastDirection==Direction.Left){
    if(!place_meeting(x-PlayerCurSpeed,y,solid)){
        x-=PlayerCurSpeed;
    }
    else{
        move_contact_solid(180,PlayerCurSpeed);
        PlayerCurSpeed=0;
        PlayerLastDirection=Direction.None;
    }
}
else if(PlayerLastDirection==Direction.Right){
    if(!place_meeting(x+PlayerCurSpeed,y,solid)){
        x+=PlayerCurSpeed;
    }
    else{
        move_contact_solid(0,PlayerCurSpeed);
        PlayerCurSpeed=0;
        PlayerLastDirection=Direction.None;
    }
}
else{
    //Shouldn't get here. If it does, something has gone wrong.
    show_debug_message("MoveStop Script Fallthrough Error: If exceeded expected parameters.");
}
