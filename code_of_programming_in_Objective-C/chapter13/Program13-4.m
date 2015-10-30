//
//  Program13-4.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/29.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

void calculateTrangularNumber(int n) {
    int i, triangularNumber = 0;
    
    for (i = 1;  i <= n; i++) {
        triangularNumber += i;
    }
    
    NSLog(@"Triangular number %i is %i", n, triangularNumber);
}


int main(int argc, char *argv[]) {
    @autoreleasepool {
        calculateTrangularNumber(10);
        calculateTrangularNumber(20);
        calculateTrangularNumber(50);
    }
    
    return 0;
}