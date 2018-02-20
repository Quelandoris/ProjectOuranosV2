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
