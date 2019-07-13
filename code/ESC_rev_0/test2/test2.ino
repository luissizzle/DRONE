
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

const int AH = 3; 
const int AL = 9;
const int BH = 5; 
const int BL = 10; 
const int CH = 6;
const int CL = 11;

const int pot = A0;
int dty = 0;
int newDty = 0;


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

      dty = analogRead(pot); // read the input pin
      newDty = map(dty, 0, 1023, 0, 255);

      //  PHASE 1

      digitalWrite(BL, LOW);
      digitalWrite(BL, INPUT);
      pinMode(CL, OUTPUT);
      digitalWrite(CL, HIGH);
      analogWrite(AH, newDty);
      

      delay(1);

      //  PHASE 2

      digitalWrite(AH, LOW);
      pinMode(AH, INPUT);
      pinMode(BH, OUTPUT);
      analogWrite(BH, newDty);

      delay(1);
  
      //  PHASE 3

      digitalWrite(CL, LOW);
      pinMode(CL, INPUT);
      pinMode(AL, OUTPUT);
      digitalWrite(AL, HIGH);

      delay(1);
    
      //  PHASE 4

      digitalWrite(BH, LOW);
      pinMode(BH, INPUT);
      pinMode(CH, OUTPUT);
      analogWrite(CH, newDty);

      delay(1);
      
      //  PHASE 5

      digitalWrite(AL, LOW);  
      pinMode(AL, INPUT);
      pinMode(BL, OUTPUT);
      digitalWrite(BL, HIGH);

      delay(1);
      
      //  PHASE 6

      digitalWrite(CH, LOW);
      pinMode(CH, INPUT);
      pinMode(AH, OUTPUT);
      analogWrite(AH, newDty);

      delay(1);
  }
}
