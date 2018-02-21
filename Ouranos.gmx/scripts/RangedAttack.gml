/*

launches a melee attack when fed Atkpower, and Atklength. 
    MeleeAttack(AtkPower,Sunder,Knockback,AtkBurn);

*/
//Make variables more readable. using lowrcase first letters to avoid conflicts with the player object's variables
var atkPower=argument0;
var sunder=argument1;
var knockback=argument2;
var atkBurn=argument3;

//create a hitbox
if(PlayerFacing==Direction.Right){
    var Hitbox = instance_create(x+(sprite_width/2)+1,y-(sprite_height/2),RangedHitbox_ob);
}
else if(PlayerFacing==Direction.Left){
    var Hitbox = instance_create(x-(sprite_width/2)-1,y-(sprite_height/2),RangedHitbox_ob);
}
//Assign basic values
Hitbox.AtkPower = atkPower;
Hitbox.facing=PlayerFacing;
//assign Passive values
Hitbox.Sunder=sunder;
Hitbox.Knockback=knockback;
Hitbox.AtkBurn=atkBurn;
