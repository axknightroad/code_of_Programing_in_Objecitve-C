//
//  test4-8.m
//  prog1
//
//  Created by axel on 15/9/20.
//  Copyright © 2015年 axel. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculator : NSObject

//累加方法
-(void) setAccmulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) mulitply: (double) value;
-(double) divide: (double) value;
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

//内存方法
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd: (double) value;
-(double) memorySubtract: (double) value;

@end

@implementation Calculator {
    double accmulator;
    double memory;
}

-(void) setAccmulator: (double) value {
    accmulator = value;
}

-(void) clear {
    accmulator = 0;
}

-(double) accumulator {
    NSLog(@"Now accmulator is %g", accmulator);
    return accmulator;
}

-(double) add: (double) value {
    NSLog(@"%g add %g is %g", accmulator, value, accmulator + value);
    accmulator += value;
    return accmulator;
}

-(double) subtract: (double) value {
    NSLog(@"%g subtract %g is %g", accmulator, value, accmulator - value);
    accmulator -= value;
    return accmulator;
}

-(double) mulitply: (double) value {
    NSLog(@"%g mulitply %g is %g", accmulator, value, accmulator * value);
    accmulator *= value;
    return accmulator;
}

-(double) divide: (double) value {
    NSLog(@"%g divide %g is %g", accmulator, value, accmulator / value);
    accmulator /= value;
    return accmulator;
}

-(double) changeSign {
    accmulator = - accmulator;
    NSLog(@"Now accmulator is %g", accmulator);
    return accmulator;
}

-(double) reciprocal {
    accmulator = 1 / accmulator;
    NSLog(@"Now accmulator is %g", accmulator);
    return accmulator;
}

-(double) xSquared {
    accmulator *= accmulator;
    NSLog(@"Now accmulator is %g", accmulator);
    return accmulator;
}

-(double) memoryClear {
    memory = 0;
    return accmulator;
}

-(double) memoryStore {
    memory = accmulator;
    NSLog(@"Now memory is %g", memory);
    return memory;
}

-(double) memoryRecall {
    accmulator = memory;
    NSLog(@"Now accmulator is %g", accmulator);
    return accmulator;
}

-(double) memoryAdd:(double)value {
    memory += value;
    NSLog(@"Now memory is %g", memory);
    return memory;
}

-(double) memorySubtract:(double)value {
    memory -= value;
    NSLog(@"Now memory is %g", memory);
    return memory;
}

@end


int main(int argc, char *argv[]) {
    
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccmulator: 100];
        [deskCalc add: 200];
        [deskCalc divide: 15];
        [deskCalc subtract: 10];
        [deskCalc mulitply: 5];
        
        [deskCalc changeSign];
        [deskCalc xSquared];
        [deskCalc setAccmulator: 2];
        [deskCalc reciprocal];
        
        [deskCalc setAccmulator:40];
        [deskCalc memoryStore];
        [deskCalc setAccmulator:60];
        [deskCalc memoryRecall];
        [deskCalc memoryAdd: 30];
        [deskCalc memorySubtract: 20];
        
        
        NSLog(@"The result is %g",[deskCalc accumulator]);
    }
    return 0;
}