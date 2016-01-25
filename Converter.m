//
//  Converter.m
//  TempConverter
//
//  Created by greeniam on 25.01.16.
//  Copyright © 2016 greeniam. All rights reserved.
//

#import "Converter.h"

@implementation Converter

#pragma mark - Conversions

+ (double)convertFahrenheitToCelsius:(Temperature*)temperature{
   return ((temperature.fahrenheit - 32) / 1.8);
}

+ (double)convertCelsiusToFahrenheit:(Temperature *)temperature{
  return ((temperature.celsius * 1.8) + 32);
}

+ (double)convertKelvinToCeslius:(Temperature *)temperature{
  return (temperature.kelvin - 273.15);
}

+ (double)convertCelsiusToKelvin:(Temperature *)temperature{
  return (temperature.celsius + 273.15);
}

+ (double)convertFahrenheitToKelvin:(Temperature *)temperature{
  return ((temperature.fahrenheit + 459.67) * 1.8);
}

+ (double)convertKelvinToFahrenheit:(Temperature *)temperature{
  return ((temperature.kelvin - 273.15) * 1.8 + 32);
}

@end
