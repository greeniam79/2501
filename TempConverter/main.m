//
//  main.m
//  TempConverter
//
//  Created by greeniam on 25.01.16.
//  Copyright © 2016 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Temperature.h"
#import "Converter.h"

int main(int argc, const char * argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];{
  
  int numberOfChoice;
  double sourceDegrees;
  do{
    printf("1. Conversion from Celsius to Fahrenheit\n");
    printf("2. Conversion from Fahrenheit to Celsius\n");
    printf("3. Conversion from Celsius to Kelvin\n");
    printf("4. Conversion from Kelvin to Celsius\n");
    printf("5. Conversion from Fahrenheit to Kelvin\n");
    printf("6. Conversion from Kelvin to Fahrenheit\n");
    printf("7. Exit\n");
    printf("Please, enter your choice here: ");
    scanf("%d", &numberOfChoice);
    
    if (numberOfChoice<1||numberOfChoice>7){
      printf("Please, make sure the number you input is in the range between 1 - 7. Enter your choice again:");
      scanf("%d", &numberOfChoice);
    }
    
    
    switch(numberOfChoice) {
      case 1:{
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempCelsiusToFahrenheit = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"celsius"];
        double result = [Converter convertCelsiusToFahrenheit:tempCelsiusToFahrenheit];
        NSLog (@"The result of conversion in Fahrenheit is: %f", result);
        [tempCelsiusToFahrenheit dealloc];
        break;
      }
      case 2: {
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempFahrenheitToCelsius = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"fahrenheit"];
        double result = [Converter convertFahrenheitToCelsius:tempFahrenheitToCelsius];
        NSLog(@"The result of conversion in Celsius is: %f", result);
        [tempFahrenheitToCelsius dealloc];
        break;
      }
      case 3: {
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempCelsiusToKelvin = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"celsius"];
        double result = [Converter convertCelsiusToKelvin:tempCelsiusToKelvin];
        NSLog(@"The result of conversion in Kelvin: %f", result);
        [tempCelsiusToKelvin dealloc];
        break;
      }
      case 4: {
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempKelvinToCelsius = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"kelvin"];
        double result = [Converter convertKelvinToCeslius:tempKelvinToCelsius];
        NSLog (@"The result of conversion in Celsius is: %f", result);
        [tempKelvinToCelsius dealloc];
        break;
      }
      case 5: {
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempFahrenheitToKelvin = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"fahrenheit"];
        double result = [Converter convertFahrenheitToKelvin:tempFahrenheitToKelvin];
        NSLog(@"The result of conversion in Kelvin is: %f", result);
        [tempFahrenheitToKelvin dealloc];
        break;
      }
      case 6: {
        printf("Enter degrees: ");
        scanf("%lf", &sourceDegrees);
        Temperature *tempKelvinToFahrenheit = [[Temperature alloc]initWithTemperature:sourceDegrees type:@"kelvin"];
        double result = [Converter convertKelvinToFahrenheit:tempKelvinToFahrenheit];
        NSLog(@"The result of conversion in Fahrenheit is: %f", result);
        [tempKelvinToFahrenheit dealloc];
        break;
      }
    }
  }while (numberOfChoice!=7);
    
  [pool drain];
  }

 return 0;
}
