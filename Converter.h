//
//  Converter.h
//  TempConverter
//
//  Created by greeniam on 25.01.16.
//  Copyright © 2016 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Temperature.h"

@class Temperature;

@interface Converter : NSObject

+ (double)convertCelsiusToFahrenheit:(Temperature*)temperature;
+ (double)convertFahrenheitToCelsius:(Temperature*)temperature;
+ (double)convertKelvinToCeslius:(Temperature*)temperature;
+ (double)convertCelsiusToKelvin:(Temperature*)temperature;
+ (double)convertFahrenheitToKelvin:(Temperature*)temperature;
+ (double)convertKelvinToFahrenheit:(Temperature*)temperature;
@end
