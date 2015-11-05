//
//  Program13-7.m
//  code_of_programming_in_Objective-C
//
//  Created by Axel Han on 15/10/30.
//  Copyright © 2015年 Axel Han. All rights reserved.
//

#import <Foundation/Foundation.h>

void (^calculateTriangularNumber)(int) = ^(int n) {
    int i, triangularNumber = 0;
    
    for(i = 0; i < n; i++)
        triangularNumber += n;
    
    NSLog(@"Triangular number %i is %i", n, triangularNumber);
};

int main(int argc, char *argv[]) {
    @autoreleasepool {
        calculateTriangularNumber(10);
        calculateTriangularNumber(20);
        calculateTriangularNumber(50);
    }
    
    return 0;
}