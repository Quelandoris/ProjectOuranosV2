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
var Hitbox = instance_create(x+(sprite_width/2)+1,y,Hitbox_ob);
//Assign basic values
Hitbox.AtkPower = atkPower;
Hitbox.image_xscale=atkLength;
//Hitbox.
//assign Passive values
Hitbox.Sunder=sunder;
Hitbox.Knockback=knockback;
Hitbox.AtkBurn=atkBurn;
