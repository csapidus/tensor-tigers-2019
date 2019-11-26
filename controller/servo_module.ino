/*
Mahdi Al-Husseini, TENSOR TIGERS 2019
Serial transmission of data from RPi to Arduino, then written to servo object
*/

#include <Servo.h>

Servo myservo;  // create servo object to control a servo

String servoValue;
int r = 1;  // for converting value of chars to integer
int incomingByte = 0;
boolean flag = false;

void setup() {
  Serial.begin(115200);
  myservo.attach(5);  // attaches the servo on pin 5 to the servo object
  myservo.write(90);  // initial reset to zero degrees
}

void loop() {
  while(Serial.available()){         //From RPi to Arduino
    // Serial.print("Entering Serial Read");
    flag = true;
    incomingByte = Serial.read();
    // Serial.println(incomingByte, DEC);
    // r = incomingByte - '0';  //conveting the value of chars to integer
    // servoValue += r;
    delay(5);
  }
  if (flag == true){
    flag = false;
    Serial.print("I recieved: ");
    Serial.println(incomingByte);
    // int value = servoValue.toInt() + 48;
    // Serial.println("mahdi: ", value);
    myservo.write(incomingByte);
    servoValue = "";
   }

   // sweep testing
   /*
  for (int pos = 40; pos <= 140; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    Serial.print(pos);
    delay(35);                       // waits 15ms for the servo to reach the position
  }
  for (int pos = 140; pos >= 40; pos -= 1) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    Serial.print(pos);
    delay(35);                       // waits 15ms for the servo to reach the position
  }
  */
}
