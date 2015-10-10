//
//  FractionLight.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "FractionLight.h"

@implementation FractionLight

-(void) print {
    NSLog(@"%i/%i", _numerator, _denominator);
}

-(double) convertToNum {
    if (_denominator != 0)
        return (double) _numerator / _denominator;
    else
        return NAN;
}

@end
