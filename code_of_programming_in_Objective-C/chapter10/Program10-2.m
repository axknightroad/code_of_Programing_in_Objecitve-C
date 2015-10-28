//
//  Program10-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/23.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;
        
        NSLog(@"Fractions allocted %i", [Fraction count]);
        
        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];
        
        NSLog(@"Fractions allocted %i", [Fraction count]);
        
    }
    
    return 0;
}
