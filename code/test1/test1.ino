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
  pinMode(AL, OUTPUT);
  pinMode(AH, OUTPUT);
  pinMode(BL, OUTPUT);
  pinMode(BH, OUTPUT);
  pinMode(CL, OUTPUT);
  pinMode(CH, OUTPUT);
  
  // initialize inputs:
  pinMode(buttonPin, INPUT);
  pinMode(A, INPUT);
  pinMode(B, INPUT);
  pinMode(C, INPUT);
  
}


void loop() {
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);

  Serial.print("PRINT LINE 1\n");
  Serial.println(AL);
  Serial.println(AH);
  Serial.println(BL);
  Serial.println(BH);
  Serial.println(CL);
  Serial.println(CH);
  Serial.println(A);
  Serial.println(B);
  Serial.println(C);

  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
  //  buttonflag = 1;
    while(1) { 
//      if(A == HIGH & B == LOW & C == LOW){
//        Serial.print("I AM IN STATE ONE\n");
//      digitalWrite(AL, LOW);
//      digitalWrite(AH, HIGH);
//      digitalWrite(BL, LOW);
//      digitalWrite(BH, LOW);
//      digitalWrite(CL, HIGH);
//      digitalWrite(CH, HIGH);
//      delay(10);
//      } 
//      if(A == LOW & B == HIGH & C == LOW){
//      Serial.print("I AM IN STATE TWO\n");
//      digitalWrite(AL, HIGH);
//      digitalWrite(AH, HIGH);
//      digitalWrite(BL, LOW);
//      digitalWrite(BH, HIGH);
//      digitalWrite(CL, LOW);
//      digitalWrite(CH, LOW);
//      delay(10);
//      } 
//      if(A == LOW & B == LOW & C == HIGH){
//      Serial.print("I AM IN STATE THREE\n");
//      digitalWrite(AL, LOW);
//      digitalWrite(AH, LOW);
//      digitalWrite(BL, HIGH);
//      digitalWrite(BH, HIGH);
//      digitalWrite(CL, LOW);
//      digitalWrite(CH, HIGH);
//      delay(10);
//      }else{
  Serial.print("PRINT LINE 2\n");      
  Serial.println(AL);
  Serial.println(AH);
  Serial.println(BL);
  Serial.println(BH);
  Serial.println(CL);
  Serial.println(CH);
  Serial.println(A);
  Serial.println(B);
  Serial.println(C);


      digitalWrite(AL, LOW);
      digitalWrite(AH, LOW);
      digitalWrite(BL, HIGH);
      digitalWrite(BH, HIGH);
      digitalWrite(CL, LOW);
      digitalWrite(CH, HIGH);

      delay(10);
Serial.print("PRINT LINE 3\n");
      Serial.println(AL);
  Serial.println(AH);
  Serial.println(BL);
  Serial.println(BH);
  Serial.println(CL);
  Serial.println(CH);
  Serial.println(A);
  Serial.println(B);
  Serial.println(C);


      digitalWrite(AL, LOW);
      digitalWrite(AH, HIGH);
      digitalWrite(BL, LOW);
      digitalWrite(BH, LOW);
      digitalWrite(CL, HIGH);
      digitalWrite(CH, HIGH);

      delay(10);
Serial.print("PRINT LINE 4");
      Serial.println(AL);
  Serial.println(AH);
  Serial.println(BL);
  Serial.println(BH);
  Serial.println(CL);
  Serial.println(CH);
  Serial.println(A);
  Serial.println(B);
  Serial.println(C);

      digitalWrite(AL, HIGH);
      digitalWrite(AH, HIGH);
      digitalWrite(BL, LOW);
      digitalWrite(BH, HIGH);
      digitalWrite(CL, LOW);
      digitalWrite(CH, LOW);

      delay(10);
  //    }
     
    }
  }
}
