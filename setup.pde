void setup(int sizex, int sizey) {
  
  //size
  size(sizex, sizey); 
  
  //chedk for arduinos
  controll = ControllIO.getInstance(this);
  if (Serial.list().length < 1) {
     println("No Arduinos detected!");
  }
  
  //too many arduinos
  else if (Serial.list().length > 1) {
     println("Multiple serial interfaces detected!"); 
  }
  else {
    port = new Serial(this, Serial.list()[0], 9600);
    commsError = false;
  }
  
  //call oneJoystick(); or twoJoystick
  //oneJoystick();
  //twoJoystick();
}
