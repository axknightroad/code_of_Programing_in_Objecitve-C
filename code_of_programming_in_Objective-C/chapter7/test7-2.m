//
//  test7-2.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/10.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import "Fraction.h"

int main(int argc, char *argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        Fraction *resultFraction;
        
        [aFraction setTo: -1 over: 2];
        [bFraction setTo: -1 over: 4];
        
        [aFraction print: NO];
        NSLog(@"+");
        [bFraction print: NO];
        NSLog(@"=");
        
        resultFraction = [aFraction add: bFraction];
        
        [resultFraction print: YES];
        
    }
    return 0;
}