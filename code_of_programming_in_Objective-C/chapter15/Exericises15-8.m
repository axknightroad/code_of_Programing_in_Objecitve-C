//
//  Exericises15-8.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"
#import "Fraction+Comparison.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        NSMutableArray *fracArray = [NSMutableArray array];
        Fraction *frac1 = [[Fraction alloc] initWith:1 over:3];
        Fraction *frac2 = [[Fraction alloc] initWith:1 over:2];
        Fraction *frac3 = [[Fraction alloc] initWith:1 over:4];
        
        [fracArray addObject:frac1];
        [fracArray addObject:frac2];
        [fracArray addObject:frac3];
        
        [fracArray sortUsingSelector:@selector(comparison:)];
        
        for (Fraction *frac in fracArray) {
            [frac print];
        }
    }
    
    return 0;
}