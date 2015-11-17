//
//  Program18-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/17.
//  Copyright © 2015年 Axel Han. All rights reserved.
//
//  Copying fractions

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2;
        
        [f1 setTo:2 over:5];
       // f2 = [f1 copy];
        f2 = f1;
        [f2 setTo:1 over:3];
        [f1 print];
        [f2 print];
    }
    
    return 0;
}