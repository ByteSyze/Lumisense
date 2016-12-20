//Threshold for considering input to be "on". The expected input is 3.3V
#define SENSOR_ON_THRESH 100

const char sensorPins[] = {A0,A1,A2,A3}; //Analog inputs connected to active HC-SR501 units.

const char r = 3; //Red channel on LED strip
const char g = 5; //Green channel on LED  strip
const char b = 6; //Blue channel on LED strip

const uint32_t ledTimeout = 1000; //How long the led strip should be turned on for, in miliseconds.
const uint32_t fadeTimeout = 50; //How long to wait between fade interpolations, in miliseconds.

//The various states of the controller.
//sensing   - waits for a trigger to go high from any of the motion sensors, then sets the state to fadein
//fadein    - slowly fades the lights in, then sets the state to timeout
//timeout   - waits for the duration of ledTimeout, then sets the state to postsense
//postsense - checks sensors again while lights are still on, then sets state to timeout if true or fadeout if false
//fadeout   - slowly fades the lights out, then sets the state to sensing
enum state
{
  sensing, fadein, timeout, postsense,  fadeout  
};

state currentState = sensing;

//Current values of respective RGB channels. These values will approach their respective target values in the fade states.
uint16_t currentRed, currentGreen, currentBlue;

//Target values of respective RGB channels.
uint16_t targetRed, targetGreen, targetBlue;

bool isSensingMotion();
uint16_t fade(uint16_t, uint16_t);

void setup()
{
  pinMode(r, OUTPUT);
  pinMode(g, OUTPUT);
  pinMode(b, OUTPUT);
}

void loop()
{
    if(currentState == sensing)
    {
        if(isSensingMotion())
          currentState = fadein;
    }
    else if(currentState == fadein)
    {
      currentRed = fade(currentRed, targetRed);
      currentGreen = fade(currentGreen, targetGreen);
      currentBlue = fade(currentBlue, targetBlue);
      
      delay(fadeTimeout);
      
      currentState = timeout;
    }
    else if(currentState == timeout)
    {
      delay(ledTimeout);
      currentState = postsense;
    }
    else if(currentState == postsense)
    {
      if(isSensingMotion())
        currentState = timeout;
      else
        currentState = fadeout;
    }
    else if(currentState == fadeout)
    {
      currentRed = fade(currentRed, targetRed);
      currentGreen = fade(currentGreen, targetGreen);
      currentBlue = fade(currentBlue, targetBlue);
      
      delay(fadeTimeout);
      
      currentState = sensing;
    }
}

/*
 * Returns true if any of the sensors are reporting motion.
 */
bool isSensingMotion()
{
  bool motionSensed;
  
  for(int i = 0; i < sizeof(sensorPins)/4; i++)
  {
      int sensorValue = analogRead(sensorPins[i]);

      if(sensorValue >= SENSOR_ON_THRESH)
      {
        motionSensed = true;
        break;  
      }
  }

  return motionSensed;
}

/*
 * Interpolates along a curve.
 */
uint16_t fade(uint16_t from, uint16_t to)
{
  uint16_t err = from - to;

  return (err*to) / (to+pow(err,2)) + to;
}
