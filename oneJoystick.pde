void oneJoystick(String JName) {

  for (int i = 0; i < controll.getNumberOfDevices(); i++) {
     if (controll.getDevice(i).getName().equals(JName)) { //find actual controller with matching name
        joystick = controll.getDevice(i);
        jsError = false;
     }
  }
}
