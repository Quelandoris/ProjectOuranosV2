/*

launches a melee attack when fed Atkpower, and Atklength. 
    MeleeAttack(AtkPower,AtkLength,Sunder,Knockback,AtkBurn);

*/
//Make variables more readable. using lowrcase first letters to avoid conflicts with the player object's variables
var atkPower=argument0;
var atkLength=argument1;
var sunder=argument2;
var knockback=argument3;
var atkBurn=argument4;

//create a hitbox
if(PlayerFacing==Direction.Right){
    var Hitbox = instance_create(x+(sprite_width/2)+1,y,Hitbox_ob);
}
else if(PlayerFacing==Direction.Left){
    var Hitbox = instance_create(x-(sprite_width/2)-1,y,Hitbox_ob);
}
//Assign basic values
Hitbox.AtkPower = atkPower;
if(PlayerFacing==Direction.Right){
    Hitbox.image_xscale=atkLength;
}
else if(PlayerFacing==Direction.Left){
    Hitbox.image_xscale=-atkLength;
}
//assign Passive values
Hitbox.Sunder=sunder;
Hitbox.Knockback=knockback;
Hitbox.AtkBurn=atkBurn;
