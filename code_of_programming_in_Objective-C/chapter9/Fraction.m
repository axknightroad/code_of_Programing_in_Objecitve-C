//
//  Fraction.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print {
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

-(void) reduce {
    int u = numerator, v = denominator, temp;
    
    while (v) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator +
                       denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

@end
