//When player presses up, this script is called to launch them into the air

//check if the player can currently jump
if(PlayerCanJump){
    PlayerCurVertSpeed+= -PlayerJumpForce;
}
