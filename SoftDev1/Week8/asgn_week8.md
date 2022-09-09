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
- #### Step 2. Turn on the LEDs one by one with a time delay, starting at index=0 until all LEDs are ON.  
	- 
- #### Step 3. If all LEDs are ON, turn off LEDs one by one starting at index=n-1, where n is the total number of LEDs, until all LEDs are OFF, and repeat Steps 2-3.
	- 
### [---->>>> Link to WOKWI : LED Pattern B](https://wokwi.com/projects/342313280404980307)

___

#### LED changing pattern: C  

![image](https://user-images.githubusercontent.com/109336369/189405628-7ba430be-c728-442a-bbbe-61d4264228a4.png)
  
- #### Step 1. Initially, all LEDs are OFF.
	- 
- #### Step 2. Turn on the first LED by increasing the duty cycle of the PWM signal driving the LED, until the LED is fully ON.
	- 
- #### Step 3. Repeat Step 2 with the next LED until all LEDs are fully ON.
	-
- #### Step 4. If all LEDs are ON, turn off LEDs one-by-one by decreasing the duty cycles of the PWM signals until all LEDs are OFF and repeat Steps 2-4.
	-  
### [---->>>> Link to WOKWI : LED Pattern C](https://wokwi.com/projects/342313284466115155)

___

#### LED changing pattern: D 

![image](https://user-images.githubusercontent.com/109336369/189405697-58f559dc-20e3-4dd6-a41f-15138191f727.png)
  
- #### Step 1. Initially, all LEDs are OFF.
	- 
- #### Step 2. Turn on the first 4 LEDs using PWM signals, each with different duty cycles (e.g. 100%, 50%, 25%, 10%), and the rest of the LEDs are OFF.
	- 
- #### Move the positions of ON LEDs to the left by one position in a circular manner and repeat Step 3.
	- 
### [---->>>> Link to WOKWI : LED Pattern D]([https://wokwi.com/projects/342313273993986643](https://wokwi.com/projects/342313288325923412))

___
