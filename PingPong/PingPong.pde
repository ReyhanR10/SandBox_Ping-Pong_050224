//Global Variables
Ball ball ;

Paddle paddleLeft ;
Paddle paddleRight ;

int scoreBoardLeft = 0 ;
int scoreBoardRight = 0 ;

color colour=#34E0D3 ;

void setup () {
  fullScreen () ; //How Big My Tab Will Be 
  /*ScreenSizeChecker  () for landscape, portrait, square views
  Updated automatically for screen rotation android 
  */
  //ellipse ( ballX, ballY, diameter, diameter ) ; //Ball
  println ( "Exiciting .. . Very or not Exicitng" ) ;
  //exit () ; //Mimics Garbage location of all VAriables 
  //An object is ... SEE the class
  ball  = new Ball ( width/2, height/2, 50 ) ; //Myball = instance of Ball
  ball.speedX = 3 ; // speed in x axis 
  ball.speedY = random ( -3,3 ) ; //Speed of the ball in Y Axis 
  //
  paddleLeft = new Paddle ( 15, height/2, 30,210 ) ;
  paddleRight = new Paddle  ( width-15, height/2, 30, 210 ) ;
  //myBall.colour = color ( random (0, 255 ), random ( 255 ), B ) ;
 // fill ( myBall.colour ) ;
 // fill ( 0 ) ;
  
// 
} //End Setup

/*class Ball {
float PingX ;
float PingY ;
float speedX ;
float speedY ;
float diameter ;
color black = #271F1F ;
  
  //
  
  Ball ( float tempX, float tempY, float tempDiameter ) ;
  PingX = tempX ;
  PingY = tempY ;
  diameter = tempDiameter ;
  speedX = 0 ;
  speedY = 0 ;
  black = ( 255 ) ;
}
*/

void draw () {
  background ( 0 ) ; //CLEAR window
  ball.display () ;
  ball.move () ;
  ball.move () ;
  ball.display () ;
  ///
  paddleLeft.move () ;
  paddleLeft.display () ;
  paddleRight.move () ;
  paddleRight.display () ;
  
  if ( ball.right () > width ) {
    scoreBoardLeft = scoreBoardLeft +1 ;
    ball.ballX = width/2 ;
    ball.ballY = height/2 ;
  }
  if ( ball.left () < 0 ) {
    scoreBoardRight = scoreBoardRight + 1 ;
    ball.ballX = width/2 ;
    ball.ballY = height/2 ;
  }
  if ( ball.down () > height ) {
    ball.speedY = -ball.speedY ;
  }
  if ( ball.up () < 0 ) {
    ball.speedY = -ball.speedY ;
  }
  if ( paddleLeft.down () > height ) {
    paddleLeft.ballY = height-paddleLeft.ballHeight/2 ;
  }
  if ( paddleLeft.up () < 0 ) {
    paddleLeft.ballY = paddleLeft.ballHeight/2 ;
  }
  if ( paddleRight.down () > height ) {
    paddleRight.ballY = height-paddleRight.ballHeight/2 ;
  }
  if ( paddleRight.up () < 0 ) {
    paddleRight.ballY = paddleRight.ballHeight/2 ;
  }
  // If the ball gets behind ur paddle
  //
  //bounce the ball to other directions 
  if ( ball.left() < paddleLeft.right() && ball.ballY > paddleLeft.up() && ball.ballY < paddleLeft.down()){
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.ballY - paddleLeft.ballY, -paddleLeft.ballHeight/2, paddleLeft.ballHeight/2, -10, 10);
  }
  
  if ( ball.right() > paddleRight.left() && ball.ballY > paddleRight.up() && ball.ballY < paddleRight.down()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.ballY - paddleRight.ballY, -paddleRight.ballHeight/2, paddleRight.ballHeight/2, -10, 10);
  }
  

  
  
  //Empty Loop
  
  
  
//
} //End Draw 





void keyPressed () {
  if ( keyCode == UP ) {
    paddleRight.speedY= -6;
  }
  if ( keyCode == DOWN ) {
    paddleRight.speedY= 6 ;
  }
  if ( key  == 'w' ) {
    paddleLeft.speedY= -6;
  }
  if ( key  == 's' ) {
    paddleLeft.speedY= 6 ;
  }
  //SSSSSht this is a Really Power Up Easter EGG
  if ( key == '1' ) {
    ball.speedX = 15 ;
  }
  if ( key == '2' ) {
    paddleLeft.speedY = -12 ;
  }
  if ( key == '3' ) {
    paddleLeft.speedY = 12 ;
  }
  
  
  
// 
} //End keyPressed 




void mousePressed () {
  
  
  
  
  
} //End mousePressed 

void keyReleased () {
  if ( keyCode == UP ) {
    paddleRight.speedY=0;
  }
  if ( keyCode == DOWN ) {
    paddleRight.speedY=0 ;
  }
  if ( key == 'w' ) {
    paddleLeft.speedY=0 ;
  }
  if ( key == 's' ) {
    paddleLeft.speedY=0 ;
  }
  
}
//End keyReleased 

class Ball 
{
  float ballX, ballY, diameter ;
  float speedX, speedY ;
  
  //Construction Methode
  Ball ( float tempX, float tempY, float tempDiameter ) { //Ball running Program 
    ballX = tempX ;
    ballY = tempY ;
    diameter = tempDiameter ;
    speedX = 0 ;
    speedY = 0 ;
    colour = ( 225 ) ;
    
} //End 
  
  void move () {
    //Add speed for ur Ball
    ballX = ballX + speedX ; 
    ballY = ballY + speedY ;
    
} //End 

void display () {
  fill ( colour ) ; //Color drawing 
  ellipse ( ballX, ballY, diameter, diameter ) ;
  
} //End 

//Functions to help
float left () {
  return ballX-diameter/2 ;
}
float right () {
  return ballX+diameter/2;
}
float up () {
  return ballY-diameter/2 ;
}
float down () {
  return ballY+diameter/2 ;
}

} //End 

class Paddle {
  float ballX, ballY, ballWidth, ballHeight ;
  float speedX, speedY ;
  color warna ;
  //
  Paddle ( float tempX, float tempY, float tempWidth, float tempHeight ) {
  ballX = tempX ;
  ballY = tempY ;
  ballWidth = tempWidth ;
  ballHeight = tempHeight  ;
  speedX = 0 ;
  speedY = 0 ;
  colour = ( 225 ) ;
  } //End 
  
  void move () {
   ballX += speedX ;
   ballY += speedY ;
  } //End 
 
  void display () {
    fill ( colour ) ;
    rect ( ballX-ballWidth, ballY-ballHeight/2, ballWidth, ballHeight ) ;
  } //End 
  
  //Help me Plssssss
  float left () {
    return ballX-ballWidth/2 ;
  }
  float right () {
    return  ballX+ballWidth/2 ;
  }
  float up () {
    return ballY-ballHeight/2 ;
  }
  float down () {
    return ballY+ballHeight/2 ;
  }

} // End 

//End DRIVER
