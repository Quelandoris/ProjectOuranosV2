if(EnemyState = State.Passive){
    SlimePassive(); //Calls the Passive Actions of the slime
}
else if (EnemyState = State.Aggro){
    SlimeAggro(); //Calls the Aggressive Actions of the slime
}
else if (EnemyState = State.Dead){
    SlimeDead(); //Calls how to handle when the slime dies
}

