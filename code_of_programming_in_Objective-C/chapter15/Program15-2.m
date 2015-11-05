//
//  Program15-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/5.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
//        NSDecimalNumber *dNumber;
        
        // integer
        
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        // long value
        myNumber = @0xabcdefL;
        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        // float value
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
    }
    
    return 0;
}