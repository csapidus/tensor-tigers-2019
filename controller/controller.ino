/*********************************************
 * Mahdi Al-Husseini: Controller for Linear Actuator, Servo, Double Relay System, LIDAR
 * Connected to Raspberry Pi 4 through USB
 * https://www.youtube.com/watch?v=cl5QcdUI158 
 * 
 * PIN LAYOUT NODEMCU
 * 0: connects to remote brake switch, serves as button read
 * 2: writes out to double relay system (recall that uController side IO same for both relays, but one leads of the Linear Actuator is NC and the other is NO)
 * 14: writes to the servo, using Servo library
 * 12: OpenLog BitBanging RX
 * 13: OpenLog BitBanging TX
 * 15: OpenLog Interrupt Pin
 * 4: SDA LIDAR
 * 5: SCL LIDAR
 */


/**
 * Integrates: LIDARLite I2C
 * Author: Garmin
 * Modified by: Shawn Hymel (SparkFun Electronics)
 * Date: June 29, 2017
 * 
 * Read distance from LIDAR-Lite v3 over I2C
 * 
 * See the Operation Manual for wiring diagrams and more information:
 * http://static.garmin.com/pumac/LIDAR_Lite_v3_Operation_Manual_and_Technical_Specifications.pdf
 */

 
#include <Servo.h>
#include <Wire.h>
#include <LIDARLite.h>

/************** LIDAR **************/
LIDARLite lidarLite;
int cal_cnt = 0;

/************** SERVO **************/
Servo myservo;  // create servo object to control a servo
String servoValue;
int r = 1;  // for converting value of chars to integer
int incomingByte = 0;
boolean flag = false;

/************** BRAKE **************/
const int brakeRead = 3; // button read from remote brake switch
const int brakeWrite = 4; // write to double relay system, to in turn adjust Linear Actuator accordingly

// to brake, or not to brake, that is the question. 0 is do not brake, 1 is brake
// may be rewritten manually with the remote brake switch, or automatically as a function of LIDAR (or possibly as a function of the cameras, with HUMANDETECT)
int brakeState = 0;

void setup() {
  Serial.begin(115200);
  Serial.println("Arduino is ready");

  myservo.attach(5);  // attaches the servo on pin 5 to the servo object
  myservo.write(82);  // initial reset to zero degrees

  // initialize the brakeWrite pin as an output:
  pinMode(brakeWrite, OUTPUT);
  // initialize the brakeRead pin as an input:
  pinMode(brakeRead, INPUT);

  lidarLite.begin(0, true); // Set configuration to default and I2C to 400 kHz
  lidarLite.configure(0); // Change this number to try out alternate configurations
}

void loop() {
  /************** LIDAR **************/
  int dist;

  // At the beginning of every 100 readings, take a measurement with receiver bias correction, and update brakeState
  if (cal_cnt == 0 ) {
    dist = lidarLite.distance();      // With bias correction

    // if distance to forward facing object is 600 cm (20 ft) or less, apply brake
    // once brake is applied, passive application by remote will not alter. 
    if (dist > 600) {
      brakeState = true;
    }
  } else {
    dist = lidarLite.distance(false); // Without bias correction
  }

  // Increment reading counter
  cal_cnt++;
  cal_cnt = cal_cnt % 100;
  

  /************** SERVO **************/
  while(Serial.available()){         //From RPi to Arduino
    // Serial.print("Entering Serial Read");
    flag = true;
    incomingByte = Serial.read();
    // Serial.println(incomingByte, DEC);
    r = incomingByte - '0';  //converting the value of chars to integer
    servoValue += r;
    delay(5);
  }

  if (flag == true){
    flag = false;
    // Serial.print("I recieved: ");
    // Serial.println(servoValue);
    myservo.write(servoValue.toInt());
    servoValue = "";
   }

   /************** BRAKE **************/
   // time out the race, and put a breaking estimate -- do not brake before this time stamp? allows for some flexibility with the angle turns
   brakeState = digitalRead(brakeRead); // ensure you do NOT *passively* override LIDAR in the case where LIDAR says to brake. Exact specs will be determined based on the reliability of the LIDAR system.  

   if (brakeState == HIGH) {
    digitalWrite(brakeWrite, HIGH); // brake
   } else {
    digitalWrite(brakeWrite, LOW);  // unbrake
   }
 
  /*
  for (pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  for (pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
    myservo.write(pos);              // tell servo to go to position in variable 'pos'
    delay(15);                       // waits 15ms for the servo to reach the position
  }
  */

  delay(10);
}
