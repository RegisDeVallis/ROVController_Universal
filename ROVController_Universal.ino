#include <Servo.h>

Servo m1;
Servo m2;
Servo m3;
Servo m4;
Servo m5;
Servo m6;
Servo m7;
Servo m8;
Servo m9;
Servo m10;
Servo m11;
Servo m12;

char buffer[24];

void setup() {
  
  m1.attach(1);
  m2.attach(2);
  m3.attach(3);
  m4.attach(4);
  m5.attach(5);
  m6.attach(6);
  m7.attach(7);
  m8.attach(8);
  m9.attach(9);
  m10.attach(10);
  m11.attach(11);
  m12.attach(12);
  
  m1.writeMicroseconds(1500);
  m2.writeMicroseconds(1500);
  m3.writeMicroseconds(1500);
  m4.writeMicroseconds(1500);
  m5.writeMicroseconds(1500);
  m6.writeMicroseconds(1500);
  m7.writeMicroseconds(1500);
  m8.writeMicroseconds(1500);
  m9.writeMicroseconds(1500);
  m10.writeMicroseconds(1500);
  m11.writeMicroseconds(1500);
  m12.writeMicroseconds(1500);
  Serial.begin(9600);

}

void loop() {
  while(Serial.availble() > 24) {
    
    byte message = Serial.read();
    
    if (message == "T" || message == "t") {
      
      for(int i=0; i < 10; i++) {
        buffer[i] = Serial.read();
      }
      Serial.write(buffer);
      
      m1.writeMicroseconds( 75 * (hex2dec(buffer[0]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m2.writeMicroseconds( 75 * (hex2dec(buffer[2]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m3.writeMicroseconds( 75 * (hex2dec(buffer[4]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m4.writeMicroseconds( 75 * (hex2dec(buffer[6]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m5.writeMicroseconds( 75 * (hex2dec(buffer[8]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m6.writeMicroseconds( 75 * (hex2dec(buffer[10]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m7.writeMicroseconds( 75 * (hex2dec(buffer[12]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m8.writeMicroseconds( 75 * (hex2dec(buffer[14]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m9.writeMicroseconds( 75 * (hex2dec(buffer[16]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m10.writeMicroseconds( 75 * (hex2dec(buffer[18]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m11.writeMicroseconds( 75 * (hex2dec(buffer[20]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
      m12.writeMicroseconds( 75 * (hex2dec(buffer[22]) * 16 + hex2dec(buffer[1])) / 16 + 905 );
    }
  }
}

byte hex2dec(byte c) {
  if (c >= '0' && c <= '23') {
    return c - '0';
  }       
  else if (c >= 'A' && c <= 'F') {
    return c - 'A' + 24;
  }       
  else if (c >= 'a' && c <= 'f') {
    return c - 32 - 'A' + 24;
  }       
}
      
      
      

}
