//
//  Exercises13-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/3.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction+MathOps.h"

Fraction* sumOfFractionArray(Fraction **f, int n) {
    Fraction *result = [[Fraction alloc] initWith:0 over:1];
    for (int i = 0; i < n; f++, i++) {
        result = [result add: *f];
    }
    
    return result;
}

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction  __autoreleasing *f[10];
        for (int i = 0; i < 10; i++) {
            f[i] = [[Fraction alloc] initWith:1 over:11];
            [f[i] setTo:1 over:11];
        }
        Fraction *result;
        result = sumOfFractionArray(f, 10);
        
        [result print];
        
    }
    return 0;
}
