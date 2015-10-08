//
//  test6-4.m
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
-(void) print;

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

-(void) print {
    NSLog(@"= %f", accmulator);
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
        double value;
        char operator;
        BOOL isEnd = NO;
        Calculator *myCal = [[Calculator alloc] init];
    
        while (!isEnd) {
            NSLog(@"Please enter number and operator.");
            scanf(" %lf %c", &value, &operator);
            
            switch (operator) {
                case '+':
                    [myCal add: value];
                    [myCal print];
                    break;
            
                case '-':
                    [myCal subtract: value];
                    [myCal print];
                    break;
            
                case '*':
                    [myCal mulitply: value];
                    [myCal print];
                    break;
        
                case '/':
                    [myCal divide: value];
                    [myCal print];
                    break;
        
                case 'S':
                    [myCal setAccmulator: value];
                    [myCal print];
                    break;
                
                case 'E':
                    isEnd = YES;
                    [myCal print];
                    break;
                
                default:
                    NSLog(@"Unknow operator");
                    break;
            }
        }
    }
    return 0;
}