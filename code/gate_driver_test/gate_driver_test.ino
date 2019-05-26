

const int AL = 3;
const int AH = 5; 
const int pot = A0;

int dty = 0;
int newDty = 0;

void setup() {
  // put your setup code here, to run once:

  pinMode(AL, OUTPUT);
  pinMode(AH, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

  dty = analogRead(pot); // read the input pin
  newDty = map(dty, 0, 1023, 0, 255);
  analogWrite(AH, newDty);

  digitalWrite(AL, HIGH);

}
