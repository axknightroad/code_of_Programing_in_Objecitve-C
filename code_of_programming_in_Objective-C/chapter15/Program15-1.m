//
//  Program15-1.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/4.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        // integer value
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);

        // long value
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        // char value
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%lx", [myNumber longValue]);
        
        // float value
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        // double
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        // Wrong access here
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        // Test two Number for equality
        
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        // Test if one Number is <, ==, or > second Number
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
    }
    
    return 0;
}

