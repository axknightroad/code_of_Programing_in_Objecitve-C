//
//  codeList6-9.m
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
    if (value != 0.0)
        accmulator /= value;
    else {
        NSLog(@"Division by zero.");
        accmulator = NAN;
    }
}

@end

int main(int argc, char *argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type in your expression.");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccmulator: value1];
        
        switch (operator) {
            case '+':
                [deskCalc add: value2];
                break;
            case '-':
                [deskCalc subtract: value2];
                break;
            case '*':
                [deskCalc mulitply: value2];
                break;
            case '/':
                [deskCalc divide: value2];
                break;
            default:
                NSLog(@"Unknow operator.");
                break;
        }
        
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    
    return 0;
}