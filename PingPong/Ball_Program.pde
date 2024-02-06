BallProgram () ;
class Ball {
  float ballX, ballY, diameter ;
  float speedX, speedY ;
  color colour ;
  
  // Constructor Method 
  Ball ( float tempX, float empY, float tempDiameter ) {
    ballX = tempX ;
    ballY = tempY ;
    diameter = tempDiameter ;
    speedX = 0 ;
    speedY = 0 ;
    colour ( 225 ) ;
  }
}

void move () {

//ADD speed to BAll
ballY = ballY + speedY ;
ballX =  ballX + speedX ;

}

void display () {
  fill ( colour ) ;
  
  
}
