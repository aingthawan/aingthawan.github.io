# Arduino Programming!
#### Week 8 Assignments

>### Overall Problems
> **Problems 1)**
> - Write Arduino C/C++ programs that implement the following LED changing patterns (A, B, C, D).  
> - Use the Wokwi Simulator first to test your code and then verify the correctness using real hardware.  
>
> **Problems 2)**
> - Reimplement LED changing patterns A and B using the Pin C++ class.

___

#### Problems 1)
#### LED changing pattern: A  

![image](https://user-images.githubusercontent.com/109336369/189405490-811db62e-762d-451a-b26a-a63b1f3f1a67.png)
  
- #### Step 1. Initially, only one LED (at index=0) is ON, and the rest of the LEDs are OFF.  
	- Check weather a microcontroller board is ESP or not and the define the LED pins.
	- Define a global variables
```C
#if defined(ESP32)

const  int LED_PINS[]  =  {23,22,32,33,25,26,27,14,12,13};

#else

const  int LED_PINS[]  =  {2,3,4,5};

#endif

const  int NUM_LEDS =  sizeof(LED_PINS)/sizeof(int);

uint16_t MASK =  (1U  << NUM_LEDS)-1;

```

- Void Setup, use for loop for define the pinMode for all pins and digitalWrite if i is zero assign HIGH otherwise LOW 

```C
void  setup()  {

for  (  int i=0; i < NUM_LEDS; i++  )  {

pinMode( LED_PINS[i],  OUTPUT  );

digitalWrite( LED_PINS[i],  (i==0)  ?  HIGH  :  LOW  );

delay(10);

}
}
```

- #### Step 2. The position of the ON LED should be moved to the next in a circular manner in a fixed time interval and then repeat Step 2.

	- Void loop
	
```C
void  loop()  {

static  uint16_t value=1;

for  (  int i=0; i < NUM_LEDS; i++  )  {

digitalWrite( LED_PINS[i],  (value >> i)  &  1  );

}

str =  "LEDs: value=0x";

str +=  String(value,  HEX);

Serial.println( str.c_str()  );

value =  ((value <<  1)  |  (value >>  (NUM_LEDS-1)))  & MASK;

delay(300);

}
```

### [---->>>> Link to WOKWI : LED Pattern A](https://wokwi.com/projects/342313273993986643)





___

#### LED changing pattern: B  

![image](https://user-images.githubusercontent.com/109336369/189405567-cb668e1a-1ea1-475f-81f5-b8ee1b761aca.png)
  
- #### Step 1. Initially, all LEDs are OFF.  
	- 
```C
#if defined(ESP32)
const int LED_PINS[] = {27,14,12,13};
#else
const int LED_PINS[] = {2,3,4,5};
#endif

const int NUM_LEDS = sizeof(LED_PINS)/sizeof(int);
uint16_t MASK = (1U << NUM_LEDS)-1;


void setup() {
  Serial.begin(115200);

  Serial.println("STEP 1");
  for ( int i=0; i < NUM_LEDS; i++ ) {
    pinMode( LED_PINS[i], OUTPUT ); 
    digitalWrite( LED_PINS[i], LOW );
  }
  delay(100);
}
```

- #### Step 2. Turn on the LEDs one by one with a time delay, starting at index=0 until all LEDs are ON.  
	- 
```C
void loop() {

  Serial.println("STEP 2");
  for ( int i=0; i < NUM_LEDS; i++ ) {
    Serial.println(i);
    digitalWrite( LED_PINS[i], HIGH );
    delay(50);
  }
```

- #### Step 3. If all LEDs are ON, turn off LEDs one by one starting at index=n-1, where n is the total number of LEDs, until all LEDs are OFF, and repeat Steps 2-3.
	- 
```C
  Serial.println("STEP 2.1");
  for ( int i=NUM_LEDS; i >= 0 ; i-- ) {
    Serial.println(i); 
    digitalWrite( LED_PINS[i], LOW );
    delay(50);
  }
  delay(400);
}
```

### [---->>>> Link to WOKWI : LED Pattern B](https://wokwi.com/projects/342313280404980307)

___





#### LED changing pattern: C  

![image](https://user-images.githubusercontent.com/109336369/189405628-7ba430be-c728-442a-bbbe-61d4264228a4.png)
  
- #### Step 1. Initially, all LEDs are OFF.
	- 
```C
const int LED_PINS[] = {13,12,14,27};
const int NUM_LEDS   = sizeof(LED_PINS)/sizeof(int);

#define OFF (HIGH) 

void setup() {
  for ( int i=0; i < NUM_LEDS; i++ ) {
    pinMode( LED_PINS[i], OUTPUT ); 
    digitalWrite( LED_PINS[i], OFF );
  }
}

const int PWM_RESOLUTION = 8;
const int PWM_FREQ = 1000;
const int DUTY_MAX = (1 << PWM_RESOLUTION);
```

- #### Step 2. Turn on the first LED by increasing the duty cycle of the PWM signal driving the LED, until the LED is fully ON.

- #### Step 3. Repeat Step 2 with the next LED until all LEDs are fully ON.

- #### Step 4. If all LEDs are ON, turn off LEDs one-by-one by decreasing the duty cycles of the PWM signals until all LEDs are OFF and repeat Steps 2-4.
	-  
```C
void loop() {
  
  for ( int i=0; i < NUM_LEDS; i++ ){
    ledcSetup( i , PWM_FREQ, PWM_RESOLUTION );
    ledcAttachPin( LED_PINS[i] , i);
    for ( int x=0; x < 2*DUTY_MAX; x++ ) {
         int duty = DUTY_MAX-x ; 
         ledcWrite( i, duty );
         delay(1);
      }
  }

  for ( int i=0; i < NUM_LEDS; i++ ){
    for ( int x=2*DUTY_MAX; x != 0; x-- ) {
         int duty = x ; 
         ledcWrite( i, duty );
         ledcDetachPin( LED_PINS[i] ); 
         digitalWrite( LED_PINS[i], OFF );
         delay(1);
      }
  }

delay(500);
}
```

### [---->>>> Link to WOKWI : LED Pattern C](https://wokwi.com/projects/342313284466115155)




___

#### LED changing pattern: D 

![image](https://user-images.githubusercontent.com/109336369/189405697-58f559dc-20e3-4dd6-a41f-15138191f727.png)
  
- #### Step 1. Initially, all LEDs are OFF.
	- 
```C
const int LED_PINS[] = {13,12,14,27,26,25,33,32};
const int NUM_LEDS   = sizeof(LED_PINS)/sizeof(int);

#define OFF (HIGH) 

void setup() {
  for ( int i=0; i < NUM_LEDS; i++ ) {
    pinMode( LED_PINS[i], OUTPUT ); 
    digitalWrite( LED_PINS[i], OFF );
    Serial.begin(9600);
  }
}

const int PWM_RESOLUTION = 8;
const int PWM_FREQ = 1000;
const int DUTY_MAX = (1 << PWM_RESOLUTION);
```

- #### Step 2. Turn on the first 4 LEDs using PWM signals, each with different duty cycles (e.g. 100%, 50%, 25%, 10%), and the rest of the LEDs are OFF.
	
- #### Move the positions of ON LEDs to the left by one position in a circular manner and repeat Step 3.
	- 
```C
void loop() {
  
  for ( int i=0; i < NUM_LEDS; i++ ){

    Serial.println(i);
    Serial.println((i+1)%NUM_LEDS);
    Serial.println((i+2)%NUM_LEDS);
    Serial.println((i+3)%NUM_LEDS);
    Serial.println(NUM_LEDS);
    Serial.println();
    
    ledcSetup((i%NUM_LEDS), PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(LED_PINS[i%NUM_LEDS], i);
    ledcWrite((i%NUM_LEDS), 100);

    ledcSetup(((i+1)%NUM_LEDS), PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(LED_PINS[(i+1)%NUM_LEDS], i);
    ledcWrite(((i+1)%NUM_LEDS), 50);

    ledcSetup((i+2)%NUM_LEDS, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(LED_PINS[(i+2)%NUM_LEDS], i);
    ledcWrite((i+2)%NUM_LEDS, 25);

    ledcSetup((i+3)%NUM_LEDS, PWM_FREQ, PWM_RESOLUTION);
    ledcAttachPin(LED_PINS[(i+3)%NUM_LEDS], i);
    ledcWrite((i+3)%NUM_LEDS, 10);

    delay(200);
    
    ledcDetachPin( LED_PINS[(i)%NUM_LEDS] );
    digitalWrite( LED_PINS[(i)%NUM_LEDS], OFF);

    ledcDetachPin( LED_PINS[(i+1)%NUM_LEDS] );
    digitalWrite( LED_PINS[(i+1)%NUM_LEDS], OFF);

    ledcDetachPin( LED_PINS[(i+2)%NUM_LEDS] );
    digitalWrite( LED_PINS[(i+2)%NUM_LEDS], OFF);

    ledcDetachPin( LED_PINS[(i+3)%NUM_LEDS] );
    digitalWrite( LED_PINS[(i+3)%NUM_LEDS], OFF);

    delay(1);


  }

}
```

### [---->>>> Link to WOKWI : LED Pattern D](https://wokwi.com/projects/342313288325923412)

___
