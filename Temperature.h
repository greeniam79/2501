//
//  Temperature.h
//  TempConverter
//
//  Created by greeniam on 25.01.16.
//  Copyright © 2016 greeniam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Converter.h"

@interface Temperature : NSObject
@property (nonatomic, assign) double fahrenheit;
@property (nonatomic, assign) double celsius;
@property (nonatomic, assign) double kelvin;

- (instancetype)initWithTemperature:(double)Temperature type:(NSString*)type;

@end
