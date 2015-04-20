void twoJoystick(String JNameOne, String JNameTwo) {

  
     if (controll.getDevice(1).getName().equals(JNameOne)) { //find actual controller with matching name
        joystickOne = controll.getDevice(1);
        jsError = false;
     }
     else if (controll.getDevice(2).getName().equals(JNameTwo)) { //find actual controller with matching name
        joystickTwo = controll.getDevice(2);
        jsError = false;
     }
}
