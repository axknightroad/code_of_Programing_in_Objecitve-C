//
//  Fraction+MathOps.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/25.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction+MathOps.h"
#import "Fraction.h"

@implementation Fraction (MathOps)

-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) +
                       (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) sub: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) -
    (self.denominator * f.numerator);
    
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) mul: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) div: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) invert: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = f.denominator;
    result.denominator = f.numerator;
    
    return result;
}

@end
