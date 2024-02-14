void effect () {
  Ball [] firework ;
  //Multiple Constructors
  
  Firework () {
    //Ball (float gravityParameter) ;
    ballX = mouseX ; //Error : trigger when the ball enters goal area 
    ballY = mouseY ; //Error :  trigger when the ball enters goal area 
    colour = color ( random ( 0, 255 ), random ( 255 ), random ( 255 ) ); //RGB BALL SKIN
    diameter = random ( width * 1/25 ) ;
    speedX = random (-5, 5 ) ;
    speedY = random (-5, 5 ) ;
    gravity = gravityParamater ;
    
    
    
    
    
  } //End firework
  
  
  
  
  
}
