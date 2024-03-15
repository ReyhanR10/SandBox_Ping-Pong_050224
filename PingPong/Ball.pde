class Ball 
{
  
  
  float ballX, ballY, diameter ;
  float speedX, speedY, speedChangeX, speedChangeY ;
  color colour ;
  //float gravity = null ; //Firework
  //Static int count of = 25 ; //static number for mount of Ball Instances in a firework
  //
  
  //Construction Methode
    Ball ( float tempX, float tempY, float tempDiameter ) { //Ball running Program 
    ballX = tempX ;
    ballY = tempY ;
    diameter = tempDiameter ;
    speedX = 0 ;
    speedY = 0 ;
    colour = color ( random ( 0, 255 ), random ( 255 ), random ( 255 ) ); //RGB BALL SKIN
    
  
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
