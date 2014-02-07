//Program by Jeremy Blum
//www.jeremyblum.com

//Control LED brightness with sensor
int sensePin = 0;
int WhiteledPin = 7;
int BlueledPin = 8;

void setup()
{
  //Note: We don't need to specifiy sensePin as an
  //input, since it defaults to that when we read it
Serial.begin(57600);
  //The LED pin needs to be set as an output
  pinMode(WhiteledPin, OUTPUT);\ 
  pinMode(BlueledPin, OUTPUT);

  //This is the default value, but we can set it anyways
  analogReference(DEFAULT); //5V Reference on UNO
  
}

void loop()
{
  // read the sensor
  int val = analogRead(sensePin);
//Serial.println(val);
  val = constrain(val, 0, 1023);
  int ledLevel = map(val, 0, 1023, 175, 0);
  analogWrite(WhiteledPin, ledLevel);
   analogWrite(BlueledPin, ledLevel);
  Serial.println(ledLevel);
  
}
