if(place_meeting(x,y+1,solid)){
    EnemyCanJump = true;
    EnemyTimer ++;
}
else{
            y += EnemyGrav;
        }

if(EnemyCanJump == true){    
    if (EnemyTimer >= 120){
            if((EnemyXStart - x) >  250){
               EnemyCurVertSpeed += - EnemyJumpForce;
               x += 50; 
               EnemyCanJump = false;
               EnemyTimer = 0;
               y -= EnemyJumpForce;
                
            }
            else if ((EnemyXStart - x) <  -250){
                EnemyCurVertSpeed += - EnemyJumpForce;
                x -= 50;
                EnemyCanJump = false;
                EnemyTimer = 0;
                y -= EnemyJumpForce;
            
            }
            else{
                EnemyCurVertSpeed += - EnemyJumpForce;
                y -= EnemyJumpForce;
                randomize();
                EnemyMoveRight = 50;
                EnemyMoveLeft = -50;
                if(place_meeting(x+50,y,solid)){
                EnemyMoveRight = 0;
                }
                if(place_meeting(x-50,y,solid)){
                EnemyMoveLeft = 0;
                }
                
                x += choose(EnemyMoveRight,EnemyMoveLeft);
                EnemyCanJump = false;
                EnemyTimer = 0;
                
            }
        }
        
    
}
