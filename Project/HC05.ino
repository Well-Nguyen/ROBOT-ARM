#include <SoftwareSerial.h>
#include <Servo.h>
SoftwareSerial HC05(2,3); 
char tem;
Servo myservo1;
int servoPin1=9;
int angle1=0;
Servo myservo2;
int servoPin2=10;
int angle2=0;
void setup (){
  Serial.begin (115200) ;
  HC05.begin (9600) ;
  myservo1.attach(servoPin1);
  myservo2.attach(servoPin2);
}
void loop() {
  if (HC05.available ()) {
    tem= HC05.read () ;
  }
switch (tem) {
  case 'F':
  {
  angle1=angle1+1;
  break;
  }
  case 'B':
  {
  angle1=angle1-1;
  break;
  }
  case 'L':
  {
  angle2=angle2+1;
  break;
  }
  case 'R':
  {
  angle2=angle2-1;
  break;
  }
  }
   Serial.println (tem) ;
   myservo1.write(angle1);
   delay(5);
   myservo2.write(angle2);
   delay(5);
}
