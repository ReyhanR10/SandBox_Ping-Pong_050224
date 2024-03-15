class Paddle {
  float ballX, ballY, ballWidth, ballHeight ;
  float speedX, speedY ;
  color warna  ;
  //
  Paddle ( float tempX, float tempY, float tempWidth, float tempHeight ) {
  ballX = tempX ;
  ballY = tempY ;
  ballWidth = tempWidth ;
  ballHeight = tempHeight  ;
  speedX = 0 ;
  speedY = 0 ;
  colour = ( 225 ) ;
  //
  } //End 
  
  void move () {
   ballX += speedX ;
   ballY += speedY  ;
  } //End 
 
  void display () {
    fill ( colour ) ;
    rect ( ballX-ballWidth, ballY-ballHeight/2, ballWidth, ballHeight ) ;
    
    }
    
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
