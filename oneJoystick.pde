void oneJoystick {

  for (int i = 0; i < controll.getNumberOfDevices(); i++) {
     if (controll.getDevice(i).getName().equals("Logitech Extreme 3D")) { //find actual controller with matching name
        device = controll.getDevice(i);
        jsError = false;
     }
  }
}
