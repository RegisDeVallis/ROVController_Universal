import procontroll.*;
import processing.serial.*;
import java.io.*;
import java.util.Scanner;

ControllIO controll;
ControllDevice joystick;
ControllDevice joystickOne;
ControllDevice joystickTwo;
Serial port;

boolean jsError = true;
boolean commsError = true;
long lastSend; //last millisecond to send message to Arduino

//placeholder motor values
int motor1 = 0;
int motor2 = 0;
int motor3 = 0;
int motor4 = 0;
int motor5 = 0;
int motor6 = 0;
int motor7 = 0;
int motor8 = 0;
int motor9 = 0;
int motor10 = 0;
int motor11 = 0;
int motor12 = 0;

void main() {
  
  //send motor output
  if ( millis() - lastSend > 100) { //minimum time between msg = 100ms
    lastSend = millis();
    printToArduino(motor1, motor2, motor3, motor4, motor5, motor6, motor7, motor8, motor9, motor10, motor11, motor12); 
    
    if (commsError) { //if not connected, attempt reconnect
       if (Serial.list().length == 1) {
        port = new Serial(this, Serial.list()[0], 9600);
        commsError = false;
       }
    }
    
  }
  
} 
