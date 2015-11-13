//
//  Fraction.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

static int gCounter = 0, addCounter = 0;

static int gcd(int u, int v) {
    int temp;
    
    while (v) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    return u;
}

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
    int u = numerator, v = denominator;
    
    if (u < 0)
        u = -u;
    
    u = gcd(u, v);
    
    /*
    while (v) {
        temp = u % v;
        u = v;
        v = temp;
    }
    */
    numerator /= u;
    denominator /= u;
}
/*
-(Fraction *) add: (Fraction *) f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator +
                       denominator * f.numerator;
    
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    addCounter ++;
    
    return result;
}

-(id) addId: (id) idValue {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * [idValue denominator] +
    denominator * [idValue numerator];
    
    result.denominator = denominator * [idValue denominator];
    
    [result reduce];
    
    id object = result;
    
    return object;

}
*/
-(Fraction *) initWith: (int) n over: (int) d {
    self = [super init];
    
    if (self) {
        [self setTo: n over: d];
    }
    
    return self;
}

-(instancetype) init {
    return [self initWith: 0 over: 0];
}

+(Fraction *) allocF {
    gCounter++;
    return [Fraction alloc];
}

+(int) count {
    return gCounter;
}

-(int) addCounter {
    return addCounter;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%d/%d", numerator, denominator];
}




@end
