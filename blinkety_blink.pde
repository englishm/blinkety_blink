
const int redPin = 3;
const int grnPin = 5;
const int bluPin = 6;

void setup()
{
  pinMode(redPin, OUTPUT);
  pinMode(grnPin, OUTPUT);
  pinMode(bluPin, OUTPUT);
}

void pulse(int outPin)
{
  for(int intensity = 0; intensity <= 255; intensity++)
  {
    analogWrite(outPin, intensity);
    delay(analogRead(A0));
  }
  for(int intensity = 255; intensity >= 0; intensity--)
  {
    analogWrite(outPin, intensity);
    delay(analogRead(A0));
  }
}
void loop()
{
  pulse(redPin);
  pulse(bluPin);
  pulse(grnPin);
}
  
