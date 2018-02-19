/*

    Script for getting input from keyboard and moving player accordingly.

*/

//Declare temp vars
var left=false;
var right=false;
var up=false;

//Check for input
//Left = A or left Arrow
if(keyboard_check(ord("A")) || keyboard_check(vk_left)){
    left=true;
}
//right = D or right Arrow
if(keyboard_check(ord("D")) || keyboard_check(vk_right)){
    right=true;
}
//If neither is pressed and PlayerSpeed is greater than 0, start slowing them down.

//jump = W or up Arrow
if(keyboard_check_pressed(ord("W")) || keyboard_check(vk_up)){
    up=true;
}

//if these are true, execute scripts for movement (This will be important for when we have multiple input methods, especially the mobile controls)
if(left){
    MoveLeft();
}
if(right){
    MoveRight();
}
//If neither is pressed and PlayerSpeed is greater than 0, start slowing them down.
if(!left && !right && PlayerCurSpeed>0){
    MoveStop();
}
if(up){
    MoveJump();
}
