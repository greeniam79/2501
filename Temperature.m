//
//  Temperature.m
//  TempConverter
//
//  Created by greeniam on 25.01.16.
//  Copyright © 2016 greeniam. All rights reserved.
//

#import "Temperature.h"

const static NSString *Kelvin = @"kelvin";
const static NSString *Fahrenheit = @"fahrenheit";
const static NSString *Celsius = @"celsius";


@implementation Temperature

# pragma mark Lifecycle

- (instancetype)initWithTemperature:(double)temperature type:(NSString *)type{
  self = [super init];
  if (self) {
    if (type == Kelvin){
    _kelvin = temperature;
    }
    else if (type == Fahrenheit){
      _fahrenheit = temperature;
    }
    else if (type == Celsius){
      _celsius = temperature;
    }
  }
  return self;
}

- (void)dealloc{
  [Temperature release];
  [super dealloc];
}

@end
