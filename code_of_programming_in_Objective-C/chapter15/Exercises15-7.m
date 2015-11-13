//
//  Exercises15-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/11/12.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        //NSMutableArray *fracArray = [NSMutableArray array];
        Fraction *frac1 = [[Fraction alloc] initWith:1 over:2];
        Fraction *frac2 = [[Fraction alloc] initWith:1 over:3];
        Fraction *frac3 = [[Fraction alloc] initWith:1 over:4];
        
//        [fracArray addObject:frac1];
//        [fracArray addObject:frac2];
//        [fracArray addObject:frac3];
        
//        NSArray *fracArray = [NSArray arrayWithObjects:
//                              frac1, frac2, frac3, nil];
        
        NSArray *fracArray = @[frac1, frac2, frac3];
        
        NSLog(@"the first method to display:");
        for (Fraction *frac in fracArray) {
            [frac print];
        }
        NSLog(@" ");
        
        NSLog(@"the second method to display:");
        [fracArray enumerateObjectsUsingBlock:^(Fraction *frac, NSUInteger idx, BOOL *stop) {
            [frac print];
        }];
        NSLog(@" ");
        
        NSLog(@"the third method to display:");
        NSLog(@"%@", fracArray);
    }
    
    return 0;
}