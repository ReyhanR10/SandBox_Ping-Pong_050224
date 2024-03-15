//Global Variables
Ball ball ;
Ball [] fireworks = new Ball [25] ;
Paddle paddleLeft ;
Paddle paddleRight ;

int scoreBoardLeft = 0 ;
int scoreBoardRight = 0 ;

float BackgroundX, BackgroundY, BackgroundWidth, BackgroundHeight ;
PImage picBackground ;


color colour=#34E0D3 ;

void setup () {
  fullScreen () ; //How Big My Tab Will Be size ( ) ;
  /*ScreenSizeChecker  () for landscape, portrait, square views
  Updated automatically for screen rotation android 
  */
  //ellipse ( ballX, ballY, diameter, diameter ) ; //Ball
  println ( "Exiciting .. . Very or not Exicitng" ) ;
  //exit () ; //Mimics Garbage location of all VAriables 
  //An object is ... SEE the class
  
  //Population 
  
  ball  = new Ball ( width/2, height/2, 50 ) ; //Myball = instance of Ball
  ball = new Ball ( width/3, height /3, 50 ) ;
 for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(width*-1, height*-1, 0.5);
  }
  //for (int i=0 ; i < fireworks.length ; i++ ) {
  //fireworks [i] = new Fireworks  () ; 
  //}
  ball.speedX = 5 ; // speed in x axis 
  ball.speedY = random ( -4, 4 ) ; //Speed of the ball in Y Axis
  //
  paddleLeft = new Paddle ( 15, height/2, 30,205 ) ;
  paddleRight = new Paddle  ( width-15, height/2, 30, 205 ) ;
  //Ball.colour = color ( random (0, 255 ), random ( 255 ), B ) ;
 // fill ( myBall.colour ) ;
 // fill ( 0 ) ;
 
 String Path = "../Images/ImagesUsed/" ;
 String SkyNight = "NightSky.jpg" ;
 //
 String SkyImage = sketchPath ( Path + SkyNight ) ;
 picBackground  = loadImage ( SkyImage ) ;
} //End Setup

 //MR Mark Mercers Key CODED

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
  rect ( BackgroundX, BackgroundY, BackgroundWidth, BackgroundHeight ) ;
    
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
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw(); //
  
  if ( ball.right() > paddleRight.left() && ball.ballY > paddleRight.up() && ball.ballY < paddleRight.down()) {
    ball.speedX = -ball.speedX;
    ball.speedY = map(ball.ballY - paddleRight.ballY, -paddleRight.ballHeight/2, paddleRight.ballHeight/2, -10, 10);
  }
  textSize ( 60 ) ;
  textAlign ( CENTER, TOP ) ;
  // Score Board WIN / WIN ;
  text ( scoreBoardRight, width/2+30, 30 ) ; // Right and left ScoreBoard
  text ( scoreBoardLeft, width/2-30, 30 ) ; //
  
  
  //Empty Loop
  
  
  
//
} //End Draw 





void keyPressed () {
  
  if ( keyCode == UP ) {
    paddleRight.speedY= -8;
  }
  if ( keyCode == DOWN ) {
    paddleRight.speedY= 8 ;
  }
  if ( key  == 'w' ) {
    paddleLeft.speedY= -8 ;
  }
  if ( key  == 's' ) {
    paddleLeft.speedY= 8 ;
  }
  //SSSSSht this is a Really Power Up Easter EGG
  if ( key == '1' ) {
    ball.speedX = 10  ;
  }
  if ( key == '2' ) {
    paddleLeft.speedY = -12 ;
  }
  if ( key == '3' ) {
    paddleLeft.speedY = 12 ;
  }
  if ( scoreBoardLeft > 8 ) {
    ball.speedX = 16 ;
  }
  //if ( scoreBoardLeft > 8 ) {
   // ball.speedY = 16 ;
 // }
    
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





//End DRIVER
