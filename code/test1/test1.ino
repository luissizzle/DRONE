/*
  Button

  Turns on and off a light emitting diode(LED) connected to digital pin 13,
  when pressing a pushbutton attached to pin 2.

  The circuit:
  - LED attached from pin 13 to ground
  - pushbutton attached to pin 2 from +5V
  - 10K resistor attached to pin 2 from ground

  - Note: on most Arduinos there is already an LED on the board
    attached to pin 13.

  created 2005
  by DojoDave <http://www.0j0.org>
  modified 30 Aug 2011
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Button
*/

// constants won't change. They're used here to set pin numbers:
const int buttonPin = 2;     // the number of the pushbutton pin

const int AL = 3;
const int AH = 5; 
const int BL = 6; 
const int BH = 9; 
const int CL = 10;
const int CH = 11;

const int A = 4;
const int B = 7;
const int C = 8;

int buttonflag = 0;

// variables will change:
int buttonState = 0;         // variable for reading the pushbutton status

void setup() {

  Serial.begin(9600);
  
  // initialize outputs:
  pinMode(AL, INPUT);
  pinMode(AH, INPUT);
  pinMode(BL, INPUT);
  pinMode(BH, INPUT);
  pinMode(CL, INPUT);
  pinMode(CH, INPUT);
  
  // initialize inputs:
  pinMode(A, INPUT);
  pinMode(B, INPUT);
  pinMode(C, INPUT);
  
}

 
void loop() {
  // read the state of the pushbutton value:
  digitalWrite(AL, LOW);
  digitalWrite(AH, LOW);
  digitalWrite(BL, LOW);
  digitalWrite(BH, LOW);
  digitalWrite(CL, LOW);
  digitalWrite(CH, LOW);
  
    while(1) { 

      //  PHASE 1

      digitalWrite(BH, LOW);  
      pinMode(BH, INPUT);
      pinMode(AH, OUTPUT);
      digitalWrite(AH, LOW);
      digitalWrite(CL, HIGH);

      delay(10);

      //  PHASE 2

      digitalWrite(CL, LOW);
      pinMode(CL, INPUT);
      pinMode(BL, OUTPUT);
      digitalWrite(AH, LOW);
      digitalWrite(BL, HIGH);

      delay(10);
  
      //  PHASE 3

      digitalWrite(AH, LOW);
      pinMode(AH, INPUT);
      pinMode(CH, OUTPUT);
      digitalWrite(BL, HIGH);
      digitalWrite(CH, LOW);

      delay(10);
    
      //  PHASE 4

      digitalWrite(BL, LOW);
      pinMode(BL, INPUT);
      pinMode(AL, OUTPUT);
      digitalWrite(AL, HIGH);
      digitalWrite(CH, LOW);

      delay(10);
      
      //  PHASE 5

      digitalWrite(CH, LOW);  
      pinMode(CH, INPUT);
      pinMode(BH, OUTPUT);
      digitalWrite(BH, LOW);
      digitalWrite(AL, HIGH);

      delay(10);
      
      //  PHASE 6

      digitalWrite(AL, LOW);
      pinMode(AL, INPUT);
      pinMode(CL, OUTPUT);
      digitalWrite(BH, LOW);
      digitalWrite(CL, HIGH);

      delay(10);
  }
}
