if(place_meeting(x,y+EnemyCurVertSpeed,solid)){
    EnemyCanJump = true;
    EnemyTimer ++;
    EnemyCurVertSpeed = 0;
    image_speed = .05;
    if (EnemyCurHorSpeed > 0){
        EnemyCurHorSpeed -= EnemySlide;
    }
    if (EnemyCurHorSpeed < 0){
        EnemyCurHorSpeed += EnemySlide;
    } 
}
else{
       EnemyCurVertSpeed += EnemyGrav;
            
        }
if(place_meeting(x + EnemyCurHorSpeed,y,solid)){
    EnemyCurHorSpeed = 0;
}


if(EnemyCanJump == true){    
    if (EnemyTimer >= 60){
        image_speed = 0;
        image_index = 0;
            if((Target.x - x >  0)){
               EnemyCurVertSpeed += - EnemyJumpForce;
               EnemyCurHorSpeed += EnemyHorForce; 
               EnemyCanJump = false;
               EnemyTimer = 0;
               y -= EnemyJumpForce;
                
            }
            else if ((Target.x - x) <  0){
                EnemyCurVertSpeed += - EnemyJumpForce;
                EnemyCurHorSpeed -= EnemyHorForce;
                EnemyCanJump = false;
                EnemyTimer = 0;
                y -= EnemyJumpForce;
            
            }
            else{
                EnemyCurVertSpeed += - EnemyJumpForce;
                y -= EnemyJumpForce;
                randomize();
                EnemyMoveRight = EnemyHorForce;
                EnemyMoveLeft = -EnemyHorForce;
                if(place_meeting(x+EnemyHorForce,y,solid)){
                EnemyMoveRight = 0;
                }
                if(place_meeting(x-EnemyHorForce,y,solid)){
                EnemyMoveLeft = 0;
                }
                
                EnemyCurHorSpeed += choose(EnemyMoveRight,EnemyMoveLeft);
                EnemyCanJump = false;
                EnemyTimer = 0;
                
            }
        }
}
