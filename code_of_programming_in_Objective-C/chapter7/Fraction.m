//
//  Fraction.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/8.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print: (BOOL) isReduced {
    Fraction *temp =[[Fraction alloc] init];
    
    temp.numerator = numerator;
    temp.denominator = denominator;
    int tempInt = 0;
    BOOL isInt = NO;
    
    if (temp.numerator > temp.denominator) {
        tempInt = temp.numerator / temp.denominator;
        temp.numerator %= temp.denominator;
        if (!temp.numerator)
            isInt = YES;
    }
    
    
    
    if (isReduced && !isInt)
        [temp reduce];
    if (isInt)
        NSLog(@"%i", tempInt);
    else if (tempInt)
        NSLog(@"%i %i/%i", tempInt, temp.numerator, temp.denominator);
    else
        NSLog(@"%i/%i", temp.numerator, temp.denominator);
    
}

-(void) setTo: (int) n over: (int) d {
    numerator = n;
    denominator = d;
}

-(double) convertToNum {
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
   
    
    return result;
}

-(void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

-(Fraction *) subtract: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    return result;

    
}

-(Fraction *) multiply:(Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    
    return result;
    

}


-(Fraction *) divide: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    return result;
    
}

@end
