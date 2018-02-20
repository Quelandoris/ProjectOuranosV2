/*

    Script for getting input from keyboard and moving player accordingly.

*/

//Declare temp vars
var left=false;
var right=false;
var up=false;
var c=false;
var z=false;

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
//Equip Item = C
if(keyboard_check_pressed(ord("C"))){
    c=true;
}
//Attack = Z
if(keyboard_check_pressed(ord("Z"))){
    z=true;
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
//Up jumps
if(up){
    MoveJump();
}
//C equips item when near an item.
if(c){
    if(distance_to_object(Item_ob)<10){
        var item = instance_nearest(x,y,Item_ob);
        if(object_get_parent(item.object_index)==Weapon_ob){
            //Equip to hand
            //if player already has an item equipped, make that item reappear near the player
            if(Inv.Inv[0]!=""){
                Inv.Inv[0].visible=true;
                Inv.Inv[0].x=x+(irandom_range(-5,5));
                Inv.Inv[0].y=y;
            }
            Inv.Inv[0]=item;
            //Hide object Object still exists, but isn't a physical world object that can be interacted with
            item.visible=false;
            item.x=0;
            item.y=0;
        }
        //armor
        //else if(item.object_index==Armor_ob){
        //trinket
        //else if(item.object_index==Trinket_ob){
        
    }
}
//Z attacks
if(z){
    //if nothing equipped, do a basic attack
    if(Inv.Inv[0]==""){
        MeleeAttack(1,20,0,0,0);
    }
    //Check if melee, then launch a melee attack
    else if(Inv.Inv[0].Ranged==false){
        MeleeAttack(Inv.Inv[0].AtkPower,Inv.Inv[0].AtkLength,Inv.Inv[0].Sunder,Inv.Inv[0].Knockback,Inv.Inv[0].AtkBurn);
    }
    //else if ranged, launch range attack
}
