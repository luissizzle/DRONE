//#define _DISABLE_ARDUINO_TIMER0_INTERRUPT_HANDLER_

//#include <wiring.c>
//
//#include <avr/io.h>
//#include <avr/interrupt.h>
//#include <util/delay.h>

int dty = 0;
double dutyCycle1 = 0;

const int AL = 9;
const int AH = 3; 
const int pot = A5;


//void setupADC();
//
//void startConversion();

void setup()
{
  pinMode(AL, OUTPUT);
  pinMode(AH, OUTPUT);
}

void loop() {

  dty = analogRead(pot); // read the input pin
  dutyCycle1 = map(dty, 0, 1023, 0, 255);
  
  analogWrite(AH, dutyCycle1);

  digitalWrite(AL, HIGH);

}

//void startConversion()
//{
//  ADCSRA |= (1 << ADSC);
//}
//
//void setupADC() // ANALOG INPUT 5 (A5)
//{
//  ADMUX = (1 << REFS0) | (1 << MUX0) | (1 << MUX2);
//  ADCSRA = (1 << ADEN) | (1 << ADIE) | (1 << ADPS0) | (1 << ADPS1) | (1 << ADPS2);
//  DIDR0 = (1 << ADC5D);
//
//  startConversion();
//}
// 
//
//ISR(ADC_vect)
//{
//  dutyCycle1 = ADC/4; 
//
//  startConversion();
//}
