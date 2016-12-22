/*
  Lumisense
  Copyright (C) Tyler Hackett 2016

  An Arduino-powered project to control lighting via motion sensing.
*/

//Threshold for considering input to be "on". The expected input is 3.3V
#define SENSOR_ON_THRESH  360
//Theshold for ambient light. The sensing stage will be inactive if the ambient light pin is equal or greater than this threshold.
#define AMB_LIGHT_THRESH  360
//Threshold for considering current RGB values close enough to target RGB values.
#define FADE_THRESH       20

const char sensorPins[] = {A0,A1,A2,A3}; //Analog inputs connected to active HC-SR501 units.

const char ambientLightPin = A4; //The analog input for determining ambient light in the room.

const char r = 3; //Red channel on LED strip
const char g = 5; //Green channel on LED  strip
const char b = 6; //Blue channel on LED strip

const uint32_t ledTimeout  = 2000; //How long the led strip should be turned on for, in miliseconds.
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
float currentRed, currentGreen, currentBlue;

//Target values of respective RGB channels.
float targetRed, targetGreen, targetBlue;

bool isSensingMotion();
bool lowAmbientLight();
float fade(float, float);

void setup()
{
  pinMode(r, OUTPUT);
  pinMode(g, OUTPUT);
  pinMode(b, OUTPUT);

  currentRed = 0;
  currentGreen = 0;
  currentBlue = 0;

  targetRed = 0;
  targetGreen = 0;
  targetBlue = 0;
}

void loop()
{
    if(currentState == sensing)
    {
        if(isSensingMotion() && lowAmbientLight())
        {
          targetRed   = random(127, 255);
          targetGreen = random(127, 255);
          targetBlue  = random(127, 255);
          
          currentState = fadein;
        }
    }
    else if(currentState == fadein)
    {
      if(targetRed - currentRed > FADE_THRESH || targetGreen - currentGreen > FADE_THRESH || targetBlue - currentBlue > FADE_THRESH)
      {
        currentRed = fade(currentRed, targetRed);
        currentGreen = fade(currentGreen, targetGreen);
        currentBlue = fade(currentBlue, targetBlue);

        analogWrite(r, currentRed);
        analogWrite(g, currentGreen);
        analogWrite(b, currentBlue);
        
        delay(fadeTimeout);
      }
      else
      {
        currentState = timeout;
      }
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
      {
        targetRed = targetGreen = targetBlue = 0;
        currentState = fadeout;
      }
    }
    else if(currentState == fadeout)
    {
      if(currentRed > FADE_THRESH || targetGreen > FADE_THRESH || targetBlue > FADE_THRESH)
      {
        currentRed = fade(currentRed, 0);
        currentGreen = fade(currentGreen, 0);
        currentBlue = fade(currentBlue, 0);
  
        analogWrite(r, currentRed);
        analogWrite(g, currentGreen);
        analogWrite(b, currentBlue);
        
        delay(fadeTimeout);
      }
      else
      {
        currentRed = currentGreen = currentBlue = 0;
        
        analogWrite(r, 0);
        analogWrite(g, 0);
        analogWrite(b, 0);
        
        currentState = sensing;
      }
    }
}

/*
 * Returns true if any of the sensors are reporting motion.
 */
bool isSensingMotion()
{
  bool motionSensed = false;
  
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
 *  Returns true if ambient light is below AMB_LIGHT_THRESH.
 *  Should not be used if the RGB strip is on.
 */
bool lowAmbientLight()
{
  return analogRead(ambientLightPin) < AMB_LIGHT_THRESH;  
}

/*
 * Interpolates along a curve.
 */
float fade(float from, float to)
{
  float err = from - to;
  const short gain = 512; //Gain should be twice the desired scale of the fade function.

  return constrain(from - ((err) / (1+pow(err,2))) * gain, 0, (from > to ? from : to));
}
