//
//  test6-2.m
//  prog1
//
//  Created by Axel Han on 15/10/6.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//累加方法
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) mulitply: (double) value;
-(void) divide: (double) value;

@end

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
    accmulator /= value;
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        BOOL isCalculationRight = YES;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccmulator: value1];
        if (operator == '+')
            [deskCalc add: value2];
        else if (operator == '-')
            [deskCalc subtract: value2];
        else if (operator == '*')
            [deskCalc mulitply: value2];
        else if (operator == '/')
            if (value2 == 0) {
                NSLog(@"Division by zero.");
                isCalculationRight = NO;
            }
            else
                [deskCalc divide: value2];
        else {
            NSLog(@"Unknow operator");
            isCalculationRight = NO;
        }
        if (isCalculationRight)
         NSLog(@"%.2f", [deskCalc accumulator]);
    }
    
    return 0;
}