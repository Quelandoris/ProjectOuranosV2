/*

    Used to generate what items should drop
    
    ItemGenerationScript(Average Player Item Level (Int), Max Item Level to drop (Int), is a Boss dropping this? (Bool));

*/

//Set arguments to something more readable
AvgILvl=argument0; //Average Player Item Level 
//(At some point, the server will need to be able to read the average item of every player nearby, but we'll cross that bridge later)

MaxILvl=argument1; //Max Item Level for the script to generate. this will be based on the zone and enemy, be prudent about how this is used.
IsBoss=argument2; //If a boss is the one dropping an item, it should always generate something at its Max allowable Level, so that its a nice reward

//If the item is being dropped by a boss, generate the item at its max level possible.
if(IsBoss){
    //Randomly pick what kind of item to drop. This must equal the number of item types in game minus 1!
    switch(irandom(1)){
        case 0:
            //Spawn a sword
            new = instance_create(x,y,Sword_ob);
            new.ILvl=MaxILvl;
            //For every level, item gains AtkPower
            for(i=0; i<=new.ILvl ; i++){
                new.AtkPower+=(irandom_range(1,3));
            }
            //For every 10 levels the item is, it gains a new passive effect
            //(see Weapon_ob for effects+
            for(i=0 ; i<floor(new.ILvl/10) ; i++){
                switch(irandom(2)){
                    //Sunder
                    case 0:
                        new.Sunder+=5;
                    break;
                    //Knockback
                    case 1:
                        new.Knockback+=5;
                    break;
                    //AtkBurn
                    case 2:
                        new.AtkBurn+=1;
                    break;
                }
            }
        break;
        case 1:
            //Spawn a Bow
            new = instance_create(x,y,Bow_ob);
            new.ILvl=MaxILvl;
            //For every level, item gains AtkPower
            for(i=0; i<=new.ILvl ; i++){
                new.AtkPower+=(irandom_range(1,2));
            }
            //For every 10 levels the item is, it gains a new passive effect
            //(see Weapon_ob for effects+
            for(i=0 ; i<floor(new.ILvl/10) ; i++){
                switch(irandom(2)){
                    //Sunder
                    case 0:
                        new.Sunder+=5;
                    break;
                    //Knockback
                    case 1:
                        new.Knockback+=5;
                    break;
                    //AtkBurn
                    case 2:
                        new.AtkBurn+=1;
                    break;
                }
        }
        break;
        default:
            show_debug_message("Error in ItemGenerationScript: Fallthrough to default in IsBoss Switch");
        break;
    }
}
