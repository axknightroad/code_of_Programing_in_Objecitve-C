//
//  Calculator.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/28.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator {
    double accmulator;
}

-(void) setAccmulator: (double) value {
    accmulator = value;
}

-(void) clear {
    accmulator = 0;
}

-(double) accumulator {
    return accmulator;
}

-(void) add: (double) value {
    accmulator += value;
}

-(void) subtract: (double) value {
    accmulator -= value;
}

-(void) mulitply: (double) value {
    accmulator *= value;
}

-(void) divide: (double) value {
    if (value != 0.0)
        accmulator /= value;
    else {
        NSLog(@"Division by zero.");
        accmulator = NAN;
    }
}

@end
