//
//  Exercises10-3.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/24.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *f = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        
        [f setTo: 1 over: 3];
        [f2 setTo: 1 over: 8];
        NSLog(@"Add counter is %i", [f addCounter]);
        
        for (int i = 0; i < 2; i++)
            f = [f add: f2];
        NSLog(@"Add counter is %i", [f addCounter]);
        
    }
    
    return 0;
}
